<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CancellationReturn;
use Illuminate\Http\Request;

class CancellationReturnController extends Controller
{
    public function index(){
        $cancel_return = CancellationReturn::first();
        return view('admin.cancel-return-policy.index',compact('cancel_return'));
    }

    public function update(Request $request){
        $request->validate([
            'title' => 'required|string',
            'description' => 'required'
        ]);

        $cancel_return = CancellationReturn::first();

        if ($cancel_return == null) {
            CancellationReturn::create([
                'title' => $request->title,
                'description' => $request->description
            ]);
        } else {
            $cancel_return->update([
                'title' => $request->title,
                'description' => $request->description
            ]);
        }


        return redirect()->route('cancel-return-policy.index')->with('success','Delivery Info updated successfully');
    }
}
