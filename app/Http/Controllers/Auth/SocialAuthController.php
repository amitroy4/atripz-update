<?php

namespace App\Http\Controllers\Auth;

use Hash;
use Exception;
use App\Models\Customer;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\GoogleCustomer;
use App\Models\Register_customer;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class SocialAuthController extends Controller
{
    public function redirect() {
        return Socialite::driver('google')->redirect();
    }

    public function callback()
    {
        try {
            // Retrieve Google user information
            $googleUser = Socialite::driver('google')->user();

            // Check if the user already exists in the `Register_customer` table
            $customer = Register_customer::where('email', $googleUser->email)->first();

            // If the user does not exist, create new entries
            if (!$customer) {
                // Create a new entry in the `Customer` table
                $newCustomer = Customer::create([
                    'firstName' => $googleUser->user['given_name'],
                    'lastName' => $googleUser->user['family_name'],
                    'phone' => Str::random(11),
                    'email' => $googleUser->email,
                    'status' => 'registerd',
                ]);

                // Create a new entry in the `Register_customer` table
                $customer = Register_customer::create([
                    'customer_id' => $newCustomer->id,
                    'email' => $googleUser->email,
                    'phone' => Str::random(11),
                    'password' => Hash::make(rand(100000, 999999)),
                    'status' => 'registerd',
                ]);

                // Create a new entry in the `GoogleCustomer` table
                GoogleCustomer::create([
                    'name' => $googleUser->name,
                    'email' => $googleUser->email,
                    'token' => $googleUser->token,
                ]);
            }

            // Log the user in using the `customer` guard
            Auth::guard('customer')->login($customer);

            // Redirect to the customer dashboard
            return redirect()->route('customer.dashboard');
            
        } catch (Exception $e) {
            // Handle errors (e.g., log the error, show an error message)
            dd($e);
            // return redirect()->route('home')->with('danger', 'Failed to login with Google.');
        }
    }

}
