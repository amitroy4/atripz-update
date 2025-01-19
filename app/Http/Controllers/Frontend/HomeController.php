<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Campaign;
use App\Models\Slider;
use App\Models\Ads;
use App\Models\Division;
use App\Models\Feature_category;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\Aboutus;
use App\Models\PrivacyPolicy;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $Newproducts = Products::with([
        //     'overviews',
        //     'product_infos',
        //     'product_images',
        //     'product_extras',
        //     'tags',
        //     'sizes',
        //     'colors',
        //     'brand',
        //     'category',
        //     'subcategory',
        //     'product_price'
        // ])->latest('created_at')->take(8)->get();

        // echo '<pre>';
        // print_r($products);

        function getChildren($categoryName) {
            $children = Category::where('parent_category', $categoryName)->get();
            foreach ($children as $child) {
                $child->children = getChildren($child->category_name);
            }
            return $children;
        }

        $parentCategories = Category::where('parent_category')->get();
        $groupedCategories = [];
        foreach ($parentCategories as $parentCategory) {
            $groupedCategories[$parentCategory->category_name] = getChildren($parentCategory->category_name);
        }

        $categories = Category::with('children')->whereNull('parent_category')->get();
        $cat_feature = Feature_category::where('status', 'Active')->first();


        $sliders = Slider::all();

        $adsbanner = Ads::all();
        $campaign = Campaign::where('status','Published')->first();

        return view('frontend.home.index',compact('categories','groupedCategories','cat_feature','sliders','adsbanner','campaign'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function aboutus()
    {
        $categories = Category::with('children')->whereNull('parent_category')->get();
        $aboutus = Aboutus::first();
        return view('frontend.about-us', [
            'aboutus' => $aboutus,
        'categories' => $categories]);
    }
    /**
     * Store a newly created resource in storage.
     */
    public function contactus()
    {
        $categories = Category::with('children')->whereNull('parent_category')->get();
        return view('frontend.contact-us',compact('categories'));
    }


    public function checkout()
    {
        $categories = Category::with('children')->whereNull('parent_category')->get();
        $divisions = Division::all();
        if (Auth::guard('customer')->check()) {
            $user = Auth::guard('customer')->user();

            if ($user->customer->billing_address != null && $user->customer->shipping()->exists()) {
                return view('frontend.checkout',[
                    'categories' => $categories,
                ]);
            } else {
                return redirect()->back()->with('warning', 'Update your profile with necessary information.')->with('success','Your product already saved in store.');
            }
        } else {
            return view('frontend.checkout',[
                'categories' => $categories,
            ]);
        }
    }


    /**
     * Display the specified resource.
     */
    public function products(string $slug)
    {
        $product = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'subcategory',
            'product_price',
            'product_thumbnail',
        ])->where('slug', $slug)->first();

        $realatedProducts = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'subcategory',
            'product_price',
            'product_thumbnail'
        ])->where('category_id', $product->category_id)->where('id', '!=', $product->id)->get();

        $campaign = Campaign::where('status','Published')->first();
        $adsbanner = Ads::all();
        $categories = Category::with('children')->whereNull('parent_category')->get();

        return view('frontend.product-details',compact('product','realatedProducts','campaign','adsbanner','categories'));

        // return response()->json($products, 200, [], JSON_PRETTY_PRINT);

    }

     public function wishlist(){

            return view('frontend.shop-wishlist');
        }
        /**
     * Show the form for editing the specified resource.
     */
    public function quickview(Request $request)
    {
        $slug = $request->slug;

        $product = Products::with([
            'overviews',
            'product_infos',
            'product_images',
            'product_thumbnail',
            'product_extras',
            'tags',
            'sizes',
            'colors',
            'brand',
            'category',
            'subcategory',
            'product_price'
        ])->where('slug', $slug)->first();

        return response()->json( $product);
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function searchBar(Request $request)
    {
        $searchTerm = $request->input('search');
        $products = Products::where('product_name', 'like', '%' . $searchTerm . '%')
            ->orWhere('sku', 'like', '%' . $searchTerm . '%')
            ->with(['product_images', 'product_price'])
            ->get();

        $productsData = $products->map(function ($product) {
            $imageUrl = null;
            if ($product->product_images->isNotEmpty()) {
                $imageUrl = asset('storage/product_images/' . $product->product_images->first()->product_image);
            } else {
                $imageUrl = asset('images/default-product.jpg');
            }
            return [
                'slug' => $product->slug,
                'product_name' => $product->product_name,
                'regular_price' => $product->regular_price,
                'sku' => $product->sku,
                'product_image' => $imageUrl,
            ];
        });
        return response()->json(['products' => $productsData]);
    }

}
