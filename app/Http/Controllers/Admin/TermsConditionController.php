<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\TermsCondition;
use App\Http\Controllers\Controller;

class TermsConditionController extends Controller
{
    public function index(){
        $terms_condition = TermsCondition::first();
        return view('admin.terms_condition.index',compact('terms_condition'));
    }
    public function update(Request $request){
        $request->validate([
            'title' => 'required|string',
            'description' => 'required'
        ]);

        $terms_condition = TermsCondition::first();
        if ($terms_condition == null) {
            TermsCondition::create([
                'title' => $request->title,
                'description' => $request->description
            ]);
        } else {
            $terms_condition->update([
                'title'=>$request->title,
                'description'=>$request->description
            ]);
        }
        return redirect()->route('terms_condition.index')->with('success','Terms and condition updated successfully');
    }
}
