<?php

namespace App\Http\Controllers\Admin;

use App\Models\Products;
use Illuminate\Http\Request;
use App\Models\Specification;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Models\SpecificationFeature;

class SpecificationController extends Controller
{
    public function specification($id)
    {
        $product = Products::findOrFail($id);
        $specifications = Specification::where('product_id',$product->id)->with('features')->get();
        return view('admin.products.specification',[
            'product' => $product,
            'specifications' => $specifications,
        ]);
    }

    public function storeSpecification(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'product_id' => 'required|exists:products,id',
        ]);
        $specification = new Specification();
        $specification->name = $validated['name'];
        $specification->product_id = $validated['product_id'];
        $specification->save();
        return redirect()->back()->with('success', 'Specification added successfully!');
    }

    public function updateSpecification(Request $request, $id)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
        ]);
        $specification = Specification::find($id);
        $specification->name = $validated['name'];
        $specification->save();
        return redirect()->back()->with('success', 'Specification updated successfully!');
    }

    public function destroySpecification($id)
    {
        $specification = Specification::find($id);
        if (!$specification) {
            return redirect()->back()->with('error', 'Specification not found!');
        }
        $specification->delete();
        return redirect()->back()->with('success', 'Specification deleted successfully!');
    }

    public function storeSpecificationFeature(Request $request, $specificationId)
    {
        // return $request;
        $request->validate([
            'feature_name.*' => 'required',
            'feature_value.*' => 'required',
        ]);
        $specification = Specification::findOrFail($specificationId);
        $features = [];
        foreach ($request->feature_name[$specificationId] as $key => $name) {
            $features[] = [
                'feature_name' => $name,
                'feature_value' => $request->feature_value[$specificationId][$key],
                'specification_id' => $specification->id,
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }
        SpecificationFeature::insert($features);
        return redirect()->back()->with('success', 'Specification features added successfully!');
    }

    public function updateSpecificationFeature(Request $request, $specificationId)
    {
        $request->validate([
            'feature_name.*' => 'required',
            'feature_value.*' => 'required',
        ]);

        DB::beginTransaction();
        try {
            // Loop over each feature and update it
            foreach ($request->feature_name as $featureId => $featureName) {
                // Get corresponding feature value
                $featureValue = $request->feature_value[$featureId];
                // Find the feature by its ID and specification ID
                $feature = SpecificationFeature::where('specification_id', $specificationId)
                                            ->where('id', $featureId)
                                            ->first();
                if ($feature) {
                    $feature->update([
                        'feature_name' => $featureName,
                        'feature_value' => $featureValue,
                    ]);
                }
            }
            DB::commit();
            return redirect()->back()->with('success', 'Specification features updated successfully!');
        } catch (\Exception $e) {
            DB::rollBack();

            Log::error('Error updating specification features: ' . $e->getMessage());
            return redirect()->back()->with('error', 'Failed to update specification features.');
        }
    }

}
