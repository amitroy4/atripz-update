<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Faq;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    public function index(){
        $faq = Faq::first();
        return view('admin.faq.index',compact('faq'));
    }

    public function update(Request $request){
        $request->validate([
            'title' => 'required|string',
            'description' => 'required'
        ]);

        $faq = Faq::first();

        if ($faq == null) {
            Faq::create([
                'title' => $request->title,
                'description' => $request->description
            ]);
        } else {
            $faq->update([
                'title' => $request->title,
                'description' => $request->description
            ]);
        }


        return redirect()->route('faq.index')->with('success','Delivery Info updated successfully');
    }
}
