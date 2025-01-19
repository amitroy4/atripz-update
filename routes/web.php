<?php

use App\Models\Category;
use App\Models\Products;
use Illuminate\Support\Str;
use Illuminate\Routing\Router;
use App\Livewire\CartComponent;
use App\Livewire\HomeComponent;
use App\Livewire\ShopComponent;
use App\Livewire\OfferComponent;
use App\Models\Feature_category;
use App\Livewire\ProductComponent;
use App\Livewire\CheckoutComponent;
use Illuminate\Support\Facades\App;
use App\Livewire\PostOfficeSelector;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Admin\AdsController;
use App\Http\Controllers\Admin\POSController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\ZoneController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\MediaController;
use App\Http\Controllers\Admin\OfferController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\CouponController;
use App\Http\Controllers\Admin\ReportController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\AboutusController;
use App\Http\Controllers\Admin\PrivacyController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\VarientController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\ShopController;
use App\Http\Controllers\Admin\CampaignController;
use App\Http\Controllers\Admin\CancellationReturnController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\Admin\SettingsController;
use App\Http\Controllers\Admin\SupplierController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\InventoryController;
use App\Http\Controllers\Admin\SizeChartController;
use App\Http\Controllers\Auth\SocialAuthController;
use App\Http\Controllers\Frontend\FilterController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\WebmessageController;
use App\Http\Controllers\Admin\WebSettingController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\TransactionController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Admin\DeliveryInfoController;
use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\Admin\SpecificationController;
use App\Http\Controllers\Frontend\TrackorderController;
use App\Http\Controllers\Admin\TermsConditionController;
use App\Http\Controllers\Admin\FeatureCategoryController;
use App\Http\Controllers\Admin\FeatureProductsController;
use App\Http\Controllers\Frontend\CustomerAuthController;
use App\Http\Controllers\Frontend\ForgotPasswordController;
use App\Http\Controllers\Frontend\CustomerDashboardController;
use App\Livewire\FilterComponent;
use App\Models\CancellationReturn;
use App\Models\DeliveryInfo;
use App\Models\Faq;
use App\Models\PrivacyPolicy;
use App\Models\TermsCondition;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/cache_clear',function(){
    Artisan::call('route:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    // Artisan::call('config:cache');
    Artisan::call('optimize:clear');
    return redirect()->back()->with('success','Cache cleard!!');
});

Route::get('/storage_link',function(){
    Artisan::call('storage:link');
    return redirect()->back()->with('success','Storage link complete!!');
    // return "Storage Linked";
});

Route::get('/disable-maintenance-mode',
    function () {
        Artisan::call( 'up' );
        // dd(Artisan::output());
        Session::flash('success','The application maintenance mode turn off.');
        return response()->json(['status' => 200]);
    }
);

Route::get('/enable-maintenance-mode',
    function () {

        if (App::isDownForMaintenance()) {
            Session::flash('danger', 'The application is in maintenance mode.');
            return response()->json(['status' => 200]);
        } else {
            $secret = Str::uuid();
            Artisan::call( 'down', [
                '--secret' => $secret,
                '--render' => 'maintenance',
            ] );
            Session::flash('warning','The application is set to maintenance mode.');
            return response()->json(['status' => 200]);
        }
    }
);

// Frontend Route Start

Route::get('/404', function () {
    return view('frontend.404');
});

Route::get('/dashboard/404', function () {
    return view('admin.error.404');
});


Route::get('/privacy_and_policy', function () {
    $categories = Category::with('children')->whereNull('parent_category')->get();
    $privacyPolicy = PrivacyPolicy::first();
    return view('frontend.privacy-policy',compact('categories','privacyPolicy'));
});

Route::get('/terms-and-condition', function () {
    $categories = Category::with('children')->whereNull('parent_category')->get();
    $termsCondition = TermsCondition::first();

    return view('frontend.terms-and-condition',compact('categories','termsCondition'));
});

Route::get('/cancellation_and_return', function () {
    $categories = Category::with('children')->whereNull('parent_category')->get();
    $cancelReturn = CancellationReturn::first();
    return view('frontend.cancellation_and_return',compact('categories','cancelReturn'));
});
Route::get('/delivery_information', function () {
    $categories = Category::with('children')->whereNull('parent_category')->get();
    $deliveryInformation = DeliveryInfo::first();
    return view('frontend.delivery_information',compact('categories','deliveryInformation'));
});
Route::get('/faq_information', function () {
    $categories = Category::with('children')->whereNull('parent_category')->get();
    $faq = Faq::first();
    return view('frontend.faq',compact('categories','faq'));
});

// Route::get('/', HomeComponent::class )->name('home');
// Route::get('/product/{slug}', ProductComponent::class)->name('product.detail');

// Route::get('/shop', ShopComponent::class )->name('shop');
Route::get('/offer/{id}', OfferComponent::class )->name('offer');
// Route::get('/cart', CartComponent::class )->name('shop.cart');

// Route::get('/checkout', CheckoutComponent::class )->name('checkout');
// Route::livewire('/postoffice-selector', PostOfficeSelector::class);

Route::controller(HomeController::class)->group(function () {
    Route::get('/', 'index')->name('home');
    Route::get('/aboutus', 'aboutus')->name('aboutus');
    Route::get('/contactus', 'contactus')->name('contactus');
    Route::get('/products/{slug}', 'products')->name('product.detail');
    Route::get('/checkout', 'checkout')->name('checkout');
    Route::get('/wishlist', 'wishlist')->name('wishlist');
    Route::get('/cart', 'cart')->name('cart');
    Route::get('/home/quickview', 'quickview')->name('quickview');
    Route::get('/home/product_search', 'searchBar')->name('search');
});

Route::get('/shop', [ShopController::class, 'index'])->name('shop');
Route::get('/filter', [FilterController::class, 'index'])->name('filter');
Route::get('/filters/{slug}', [FilterController::class, 'show'])->name('filters.show');
Route::post('/customer/registration', [CustomerAuthController::class, 'registration'])->name('customer.registration');
Route::post('/customer/login', [CustomerAuthController::class, 'login'])->name('customer.login');

//store checkout orders.
Route::post('/customer/shop/checkout/store', [CheckoutController::class, 'store'])->name('order.store');
Route::post('/customer/shop/checkout/login', [CheckoutController::class, 'login'])->name('checkout.login');
Route::post('/customer/shop/checkout/coupone', [CheckoutController::class, 'appliedCoupone'])->name('applied.coupone');

// Customer authentication routes
Route::group(['prefix' => 'customer', 'middleware' => ['auth:customer']], function () {
    Route::get('/dashboard',[CustomerDashboardController::class, 'index'])->name('customer.dashboard');
    Route::post('/customer_update/{id}',[CustomerDashboardController::class, 'customer_update'])->name('customer.update');
    Route::post('/customer_billing_update/{id}', [CustomerDashboardController::class, 'customerBillingUpdate']);
    Route::post('shipping_update/{id}', [CustomerDashboardController::class, 'shipping_update'])->name('customer.shipping_update');
    Route::post('/customerAuth_update/{id}', [CustomerDashboardController::class, 'customerAuth_update']);
    Route::post('/userNameUpdate/{id}', [CustomerDashboardController::class, 'userNameUpdate']);
    Route::post('/newShipping', [CustomerDashboardController::class, 'newShipping']);
    Route::post('/logout', [CustomerAuthController::class, 'logout'])->name('customer.logout');
    Route::post('/customer-order-return', [CustomerDashboardController::class, 'orderReturn']);
});

// Cart controller
Route::controller(CartController::class)->group(function () {
    Route::get('/cart', 'index')->name('cart');
    Route::get('/addtocart/{id}','addtocart')->name('add.cart');
    Route::get('/qtyup/{id}','increaseQuantity')->name('qtyup.cart');
    Route::get('/qtydown/{id}','decreaseQuantity')->name('qtydown.cart');
    Route::get('/removecart/{id}', 'removecart')->name('remove.cart');
    // Route::get('/checkout', 'checkout')->name('checkout');
});

// Track order controller
Route::controller(TrackorderController::class)->group(function () {
    Route::get('/trackorder', 'index')->name('trackorder');
    Route::post('/trackorder/order_details', 'order_details')->name('order_details');
    Route::get('/trackorder/track_order/{trackid}', 'orderTrack')->name('myorder.track');
});


Route::get('forget-password-get', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password-post', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post');
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'resetPasswordSubmit'])->name('reset.password.get');
Route::post('reset-password-post', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');

// Frontend Route End

// =================================++++++++++++++++++++++++++++++++++++++++++++++++++++++++===================================== //

// Backend Route Start

    //dashboard
    Route::get('/dashboard', [DashboardController::class,'index'])->middleware(['auth', 'verified'])->name('dashboard');
    Route::post('/dashboard/mark-notification-as-read', [DashboardController::class,'markNotificationAsRead'])->middleware(['auth', 'verified'])->name('markNotificationAsRead');

    //Brands
    Route::controller(BrandController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/brands', 'index')->middleware(['permission:view brand'])->name('brands.index');
        Route::get('/dashboard/brands/create', 'create')->middleware(['permission:create brand'])->name('brands.create');
        Route::post('/dashboard/brands/store', 'store')->middleware(['permission:create brand'])->name('brands.store');
        Route::get('/dashboard/brands/edit', 'edit')->middleware(['permission:update brand'])->name('brands.edit');
        Route::post('/dashboard/brands/update', 'update')->middleware(['permission:update brand'])->name('brands.update');
        Route::delete('/dashboard/brands/destroy/{id}', 'destroy')->middleware(['permission:delete brand'])->name('brands.destroy');

    });

    //Category
    Route::controller(CategoryController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/category', 'index')->middleware(['permission:view category'])->name('category.index');
        Route::get('/dashboard/category/create', 'create')->middleware(['permission:create category'])->name('category.create');
        Route::post('/dashboard/category/store', 'store')->middleware(['permission:create category'])->name('category.store');
        Route::get('/dashboard/category/edit', 'edit')->middleware(['permission:update category'])->name('category.edit');
        Route::post('/dashboard/category/update', 'update')->middleware(['permission:update category'])->name('category.update');
        Route::delete('/dashboard/category/destroy/{id}', 'destroy')->middleware(['permission:delete category'])->name('category.destroy');

    });

    //SubCategory
    Route::controller(SubcategoryController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/subcategory', 'index')->name('subcategory.index');
        Route::get('/dashboard/subcategory/create', 'create')->name('subcategory.create');
        Route::post('/dashboard/subcategory/store', 'store')->name('subcategory.store');
        Route::get('/dashboard/subcategory/edit', 'edit')->name('subcategory.edit');
        Route::post('/dashboard/subcategory/update', 'update')->name('subcategory.update');
        Route::delete('/dashboard/subcategory/destroy/{id}', 'destroy')->name('subcategory.destroy');
        Route::get('/dashboard/subcategory/get_subcategory/{id}', 'get_subcategory')->name('category.subcategory');
    });


    //Varient
    Route::controller(VarientController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/varient', 'index')->middleware(['permission:view variant'])->name('varient.index');
        //color
        Route::post('/dashboard/varient/color_store', 'color_store')->middleware(['permission:create variant'])->name('color.store');
        Route::get('/dashboard/varient/color_edit', 'color_edit')->middleware(['permission:update variant'])->name('color.edit');
        Route::post('/dashboard/varient/color_update', 'color_update')->middleware(['permission:update variant'])->name('color.update');
        Route::delete('/dashboard/varient/color_destroy/{id}', 'color_destroy')->middleware(['permission:delete variant '])->name('color.destroy');
        //size])
        Route::post('/dashboard/varient/size_store', 'size_store')->middleware(['permission:create variant'])->name('size.store');
        Route::get('/dashboard/varient/size_edit', 'size_edit')->middleware(['permission:update variant'])->name('size.edit');
        Route::post('/dashboard/varient/size_update', 'size_update')->middleware(['permission:update variant'])->name('size.update');
        Route::delete('/dashboard/varient/size_destroy/{id}', 'size_destroy')->middleware(['permission:delete variant '])->name('size.destroy');

    });

    // Products
    Route::controller(ProductController::class)->middleware('auth')->group(function () {
        // ->middleware(['permission:VIEW PRODUCT'])
        Route::get('/dashboard/products', 'index')->middleware(['permission:view product'])->name('products.index');
        Route::get('/dashboard/products/create', 'create')->middleware(['permission:create product'])->name('products.create');
        Route::post('/dashboard/products/store', 'store')->middleware(['permission:create product'])->name('products.store');
        Route::get('/dashboard/products/edit/{id}', 'edit')->middleware(['permission:update product'])->name('products.edit');
        Route::patch('/dashboard/products/update/{id}', 'update')->middleware(['permission:update product'])->name('products.update');
        Route::delete('/dashboard/products/destroy/{id}', 'destroy')->middleware(['permission:delete product'])->name('products.destroy');
        Route::delete('/dashboard/products/image_destroy/{id}', 'image_destroy')->middleware(['permission:delete product'])->name('productsimage.destroy');
        Route::delete('/dashboard/products/thumb_destroy/{id}', 'thumb_destroy')->middleware(['permission:delete product'])->name('productsthumb.destroy');
        Route::delete('/dashboard/products/delete/variant', 'variantDelete')->middleware(['permission:delete product'])->name('products.variant.destroy');

        Route::get('/dashboard/products/{slug}', 'show')->name('products.show');
        Route::post('/dashboard/products/filter', 'ProductFilter')->name('products.filter');

        Route::get('/dashboard/products/size-chart-update/{id}', 'sizeChartUpdate')->name('product.sizechart.update');
        Route::get('/dashboard/products/product-status-update/{id}', 'productStatusUpdate')->name('product.status.update');

        Route::get('/dashboard/products/variant-image/color-wise-image/{product}','ColorWiseImage')->name('product.colorWiseImage');
        Route::post('/dashboard/products/variant-image/color-wise-image/{product}','ColorWiseImageStore')->name('product.colorWiseImage.store');


    });

    // Route::controller(SpecificationController::class)->middleware('auth')->group(function () {
    //     Route::get('/dashboard/products/specification/{id}', 'specification')->name('products.specification');
    //     Route::post('/dashboard/products/specification', 'storeSpecification')->name('product.specification.store');
    //     Route::put('/dashboard/products/specification/update/{id}', 'updateSpecification')->name('product.specification.update');
    //     Route::delete('/dashboard/products/specification/{id}', 'destroySpecification')->name('product.specification.destroy');

    //     Route::post('/dashboard/products/specification/feature/store/{id}', 'storeSpecificationFeature')->name('product.specification.feature.store');
    //     Route::put('/dashboard/products/specification/feature/update/{id}', 'updateSpecificationFeature')->name('product.specification.feature.update');
    // });

    //Order
    Route::controller(OrderController::class)->middleware('auth')->group(function () {

        Route::get('/dashboard/orders', 'index')->middleware(['permission:view order'])->name('order.index');
        Route::get('/dashboard/orders/pending_order', 'pending_order')->middleware(['permission:view order'])->name('order.pending');
        Route::get('/dashboard/orders/completed_order', 'completed_order')->middleware(['permission:view order'])->name('order.completed');
        Route::get('/dashboard/orders/orders_track', 'order_track')->name('order.track');
        Route::get('/dashboard/orders/orders_details', 'order_details')->middleware(['permission:view order'])->name('order.details');
        Route::get('/dashboard/orders/orders_return', 'order_return')->middleware(['permission:view order'])->name('order.return');
        Route::post('/update-order-status', 'updateOrderStatus');
        Route::post('/update-one-order-status', 'updateOneOrderStatus');

        // Invoice
        Route::get('/orders/invoice/{id}', 'orderInvoice')->middleware(['permission:view invoice'])->name('order.invoice');
        Route::get('/orders/invoice-page/{id}', 'invoicePage')->name('invoice');

        //filter
        Route::get('/dashboard/orders/filter', 'OrderFilter')->name('order.filters');
        Route::get('/dashboard/orders/pendingfilters', 'pendingfilters')->name('order.pendingfilters');
        Route::get('/dashboard/orders/completedfilters', 'completedfilters')->name('order.completedfilters');

        Route::get('/dashboard/order/{id}', 'return_confirm')->name('return.confirm');

        Route::get('/get-color-options', 'getColorOptions');
        Route::get('/get-size-options', 'getSizeOptions');

        //Update order
        Route::post('/dashboard/orders/order_update', 'orderUpdate')->middleware(['permission:update order'])->name('order.update');
        Route::post('/dashboard/orders/orderitem_delete', 'deleteOrderItem')->middleware(['permission:update order'])->name('orderItem.delete');
        Route::get('/dashboard/orders/newProductDetails', 'newProductDetails')->middleware(['permission:update order'])->name('newproduct.details');
        Route::post('/dashboard/orders/newProductStore', 'newProductStore')->middleware(['permission:update order'])->name('newProduct.store');

        // Route::post('/dashboard/orders/steadfast-bulk-order', 'bulk_order')->middleware(['permission:create courier'])->name('order.steadfast.bulk_order');
        // Route::get('/dashboard/orders/steadfast-order/{id}', 'place_order')->middleware(['permission:create courier'])->name('order.steadfast.place_order');
        // Route::get('/dashboard/orders/steadfast-order/status/{id}', 'steadfastOrderStatus')->middleware(['permission:view courier'])->name('order.steadfast.statusCheck');

    });

    //Customer
    Route::controller(CustomerController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/customers', 'index')->middleware(['permission:view customer'])->name('customer.index');
        Route::get('/dashboard/customers/create_customer', 'create')->name('customer.create');
        Route::get('/dashboard/customers/Customer_profile', 'customer_details')->middleware(['permission:view customer'])->name('customer.profile');
        // Route::get('/dashboard/category/create', 'create')->name('category.create');
        Route::get('/dashboard/customers/customer_filter', 'CustomerFilter')->name('customer.filter');

        Route::get('/dashboard/customer/edit','edit')->middleware(['permission:update customer'])->name('admincustomer.edit');
        Route::post('/dashboard/customer/update','update')->middleware(['permission:delete customer'])->name('admincustomer.update');
        Route::delete('/dashboard/customer/destroy', 'destroy')->middleware(['permission:delete customer'])->name('customer.destroy');
    });

    //offers
    Route::controller(OfferController::class)->middleware('auth')->group(function () {
        // Route::get('/dashboard/promotion/offers', 'index')->middleware(['permission:view offer'])->name('offers.index');
        Route::post('/dashboard/promotion/create_offers', 'create_offer_type')->name('offerstype.create');
        Route::post('/dashboard/promotion/offers_data', 'SaveOfferData')->middleware(['permission:create offer'])->name('offer.saved');
        Route::get('/dashboard/promotion/edit_offers_data', 'EditOfferData')->middleware(['permission:update offer'])->name('offer.edit');
        Route::post('/dashboard/promotion/update_offers_data', 'UpdateOfferData')->middleware(['permission:update offer'])->name('offer.update');
        Route::delete('/dashboard/promotion/offers_data', 'delteOfferData')->middleware(['permission:delete offer'])->name('offer.destroy');
    });

    //Coupons
    Route::controller(CouponController::class)->middleware('auth')->group(function () {
        // Route::get('/dashboard/promotion/coupons', 'index')->middleware(['permission:view coupon'])->name('coupon.index');
        Route::get('/dashboard/promotion/coupons/create', 'create')->middleware(['permission:create coupon'])->name('coupon.create');
        Route::post('/dashboard/promotion/coupons/save', 'store')->middleware(['permission:create coupon'])->name('coupon.store');
        Route::get('/dashboard/promotion/coupons-edit/{id}', 'edit')->middleware(['permission:update coupon'])->name('coupon.edit');
        Route::put('/dashboard/promotion/coupons-update/{id}', 'update')->middleware(['permission:update coupon'])->name('coupon.update');
        Route::delete('/dashboard/promotion/coupons-destroy', 'destroy')->middleware(['permission:delete coupon'])->name('coupon.destroy');
    });

    //Media
    Route::controller(MediaController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/media', 'index')->name('media.index');
        Route::get('/dashboard/media/create', 'create')->name('media.create');
        // Route::get('/dashboard/customers/Customer_profile', 'customer_details')->name('customer.profile');
        // Route::get('/dashboard/category/create', 'create')->name('category.create');

    });

    //supplier
    Route::controller(SupplierController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/supplier', 'index')->middleware(['permission:view supplier'])->name('supplier.index');
        Route::post('/dashboard/supplier/store', 'store')->middleware(['permission:create supplier'])->name('supplier.store');
        Route::get('/dashboard/supplier/edit', 'edit')->middleware(['permission:create supplier'])->name('supplier.edit');
        Route::post('/dashboard/supplier/update', 'update')->middleware(['permission:update supplier'])->name('supplier.update');
        Route::delete('/dashboard/supplier/destroy', 'destroy')->middleware(['permission:update supplier'])->name('supplier.destroy');
        Route::get('/dashboard/supplier/filter', 'SupplierFilter')->middleware(['permission:delete supplier'])->name('supplier.filter');
    });

    //setting
    Route::controller(SettingsController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/settings', 'index')->name('settings.index');
       // Route::post('/dashboard/settings/store', 'store')->name('supplier.store');
        Route::get('/dashboard/invoice/page', 'invoicePage')->name('invoice.printed');
        Route::post('/dashboard/settings/update', 'update')->name('settings.update');
        Route::get('/dashboard/page', 'printPdf')->name('print.pdf');
    });

    //Zone
    Route::controller(ZoneController::class)->middleware('auth')->group(function () {
        // Route::get('/dashboard/zone', 'index')->name('zone.index');
        Route::post('/dashboard/zone/store', 'store')->name('zone.store');
        Route::match(['get', 'post'], '/dashboard/zone/status_update/{id}', 'status_update')->name('zonestatus.update');
        Route::delete('/dashboard/zone/destroy', 'destroy')->name('zone.destroy');
    });


    //Feature category
    Route::controller(FeatureCategoryController::class)->middleware('auth')->group(function () {
        // Route::get('/dashboard/category_feature', 'index')->middleware(['permission:view featurecategory'])->name('category_feature');
        Route::post('/dashboard/category_feature/store', 'store')->middleware(['permission:create featurecategory'])->name('category_feature.store');
        Route::get('/dashboard/category_feature/edit', 'edit')->middleware(['permission:update featurecategory'])->name('category_feature.edit');
        Route::post('/dashboard/category_feature/update', 'update')->middleware(['permission:update featurecategory'])->name('category_feature.update');
        // Route::match(['get', 'post'], '/dashboard/zone/status_update/{id}', 'status_update')->name('zonestatus.update');
        Route::delete('/dashboard/category_feature/destroy', 'destroy')->middleware(['permission:delete featurecategory'])->name('category_feature.destroy');
    });


    // Feature product
    Route::controller(FeatureProductsController::class)->middleware('auth')->group(function () {
        // Route::get('/dashboard/product_feature', 'index')->middleware(['permission:view featureproduct'])->name('product_feature');
        Route::post('/dashboard/product_feature/store', 'store')->middleware(['permission:create featureproduct'])->name('product_feature.store');
        Route::get('/dashboard/product_feature/edit', 'edit')->middleware(['permission:update featureproduct'])->name('product_feature.edit');
        Route::post('/dashboard/product_feature/update', 'update')->middleware(['permission:update featureproduct'])->name('product_feature.update');
        // Route::match(['get', 'post'], '/dashboard/zone/status_update/{id}', 'status_update')->name('zonestatus.update');
        Route::delete('/dashboard/product_feature/destroy', 'destroy')->middleware(['permission:delete featureproduct'])->name('product_feature.destroy');
    });

    // Transaction
    Route::controller(TransactionController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/transaction', 'index')->middleware(['permission:view transaction'])->name('transaction.index');
        Route::get('/dashboard/transaction/payment-info', 'paymentInfo')->name('payment.info');
        Route::post('/dashboard/transaction/payment-update', 'paymentUpdate')->middleware(['permission:update transaction'])->name('payment.update');
        Route::get('/dashboard/transaction/search', 'transactionSearch')->name('transaction.search');
        Route::get('/dashboard/transaction-filter', 'transactionFilter')->name('transaction.filter');
    });

    //Slider
    Route::controller(SliderController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/setting/slider', 'index')->middleware(['permission:view slider'])->name('slider');
        Route::post('/dashboard/setting/slider/store', 'store')->middleware(['permission:create slider'])->name('slider.store');
        Route::get('/dashboard/setting/slider/edit', 'edit')->middleware(['permission:update slider'])->name('slider.edit');
        Route::post('/dashboard/setting/slider/update', 'update')->middleware(['permission:update slider'])->name('slider.update');
        Route::delete('/dashboard/setting/slider/destroy/{id}', 'destroy')->middleware(['permission:delete slider'])->name('slider.destroy');
    });

    //ads route
    Route::controller(AdsController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/setting/ads', 'index')->middleware(['permission:view advertisement'])->name('ads');
        Route::post('/dashboard/setting/ads/store', 'store')->middleware(['permission:create advertisement'])->name('ads.store');
        Route::get('/dashboard/setting/ads/edit', 'edit')->middleware(['permission:update advertisement'])->name('ads.edit');
        Route::post('/dashboard/setting/ads/update', 'update')->middleware(['permission:update advertisement'])->name('ads.update');
        Route::delete('/dashboard/setting/ads/destroy/{id}', 'destroy')->middleware(['permission:delete advertisement'])->name('ads.destroy');
        Route::get('/dashboard/setting/ads/update-status','UpdateStatus')->middleware(['permission:update advertisement'])->name('update.status');
    });


    //campaign route
    Route::controller(CampaignController::class)->middleware('auth')->group(function () {
        // Route::get('/dashboard/campaign', 'index')->middleware(['permission:view campaign'])->name('campaign');
        Route::get('/dashboard/campaign/create', 'create')->middleware(['permission:create campaign'])->name('campaign.create');
        Route::post('/dashboard/campaign/store', 'store')->middleware(['permission:create campaign'])->name('campaign.store');
        Route::get('/dashboard/campaign/edit', 'edit')->middleware(['permission:update campaign'])->name('campaign.edit');
        Route::post('/dashboard/campaign/update/{id}', 'update')->middleware(['permission:update campaign'])->name('campaign.update');
        Route::delete('/dashboard/campaign/destroy/{id}', 'destroy')->middleware(['permission:delete campaign'])->name('campaign.destroy');
        Route::delete('/dashboard/campaign/camp_item/delete', 'campItemRemove')->middleware(['permission:update campaign'])->name('camp_item.delete');

    });

    //Inventory route
    Route::controller(InventoryController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/inventory/itemwise', 'itemWise')->middleware(['permission:view inventory'])->name('inventory.item');
        Route::get('/dashboard/inventory/sizewise', 'SizeWise')->middleware(['permission:view inventory'])->name('inventory.size');
        Route::get('/dashboard/inventory/create', 'create')->middleware(['permission:create inventory'])->name('inventory.create');

        //add new stock
        Route::get('/dashboard/inventory/newstock', 'newstock')->middleware(['permission:view inventory'])->name('new.stock');
        Route::post('/dashboard/inventory/addstock', 'addstock')->middleware(['permission:create inventory'])->name('add.stock');

        //inventory Report
        Route::get('/dashboard/inventory/sizewise-report','SizeWiseReport')->middleware(['permission:view inventory'])->name('sizewise.report');
        Route::post('/dashboard/inventory/sizewise/categorywisefilter','CategoryWiseFilter')->name('categorywise.filter');

    });

    //Pos route
    Route::controller(POSController::class)->middleware('auth')->group(function () {
        Route::get('/dashboard/pos', 'index')->middleware(['permission:view pos'])->name('pos');
        Route::get('/dashboard/search-products', 'searchProducts')->name('search.products');
        Route::get('/dashboard/pos_cart/{id}', 'posCart');
        Route::get('/dashboard/pos_cart/cart_remove/{id}', 'cart_remove');
        Route::get('/dashboard/pos/customer', 'searchcustomer')->name('search.customer');
        Route::get('/dashboard/pos/order_cancel', 'posOrderCancel')->name('pos.cancel');
        Route::post('/dashboard/pos/store','posOrder')->middleware(['permission:create pos'])->name('pos.order');

        Route::get('/dashboard/pos_cart/add/{rowId}','increaseQuantity');
        Route::get('/dashboard/pos_cart/remove/{rowId}','decreaseQuantity');

        Route::get('/dashboard/pos/invoice/{id}', 'orderInvoice')->name('pos.invoice');

        Route::get('/dashboard/pos/get-color', 'getColor')->name('get.color');
        Route::get('/dashboard/pos/get-size', 'getSize')->name('get.size');

    });

    //reports
    Route::controller(ReportController::class)->middleware('auth')->group(function(){
        Route::get('/dashboard/reports/sale', 'saleReport')->middleware(['permission:view report'])->name('sale.report');
        Route::get('/dashboard/report/sale_search', 'searchSale')->name('search.sale');
    });

    // User Managment
    Route::controller(UserController::class)->middleware(['auth'])->group(function(){
        Route::get('/dashboard/users/index', 'index')->name('users.index');
        Route::post('/dashboard/users/store', 'store')->name('users.store');
        Route::get('/dashboard/users/edit', 'edit')->name('users.edit');
        Route::post('/dashboard/users/update', 'update')->name('users.update');
        Route::delete('/dashboard/users/{userId}/delete', 'destroy');
    });

    // user role permission
    Route::resource('/dashboard/users/roles', RoleController::class)->middleware('auth');
    Route::post('/dashboard/users/roles/{role}', [RoleController::class, 'update'])->middleware('auth');
    Route::delete('/dashboard/users/roles/{id}/delete', [RoleController::class, 'destroy'])->middleware('auth');

    Route::get('/dashboard/users/roles/{roleId}/give-permissions',[RoleController::class, 'addPermission'])->middleware('auth');
    Route::put('/dashboard/users/roles/{roleId}/give-permissions',[RoleController::class, 'addPermissionToRole'])->middleware('auth');

    Route::resource('/dashboard/users/permissions', PermissionController::class)->middleware('auth');
    Route::post('/dashboard/users/permissions/{permission}',[PermissionController::class, 'update'])->middleware('auth');
    Route::delete('/dashboard/users/permissions/{id}/delete',[PermissionController::class, 'destroy'])->middleware('auth');
    Route::delete('/dashboard/users/permissions/bulkdelete', [PermissionController::class, 'bulkDelete'])->name('permissions.bulk_delete');


    Route::middleware('auth')->group(function () {
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    });

    Route::controller(WebSettingController::class)->middleware('auth')->group(function(){

        Route::get('/dashboard/setting/profile/web-info','webInfo')->middleware(['permission:view websetting'])->name('webinfo.index');
        Route::post('/dashboard/setting/profile/web-info','webInfoUpdate')->middleware(['permission:update websetting'])->name('webinfo.update');

        Route::get('/dashboard/setting/profile/social-info','socialInfo')->middleware(['permission:view websetting'])->name('socialinfo.index');
        Route::post('/dashboard/setting/profile/social-info-update', 'SocialInfoUpdate')->middleware(['permission:update websetting'])->name('socialinfo.update');
        Route::post('/dashboard/setting/profile/social-info-status-update','socialInfoStatusUpdate')->middleware(['permission:update websetting'])->name('socialstatus.update');

        Route::get('/dashboard/setting/profile/seo-info','seoInfo')->name('seo.index');
        Route::post('/dashboard/setting/profile/seoupdate', 'SEOUpdate')->name('seo.update');

        Route::get('/dashboard/setting/contact-info','contactindex')->middleware(['permission:view websetting'])->name('contactinfo.index');
        Route::get('/dashboard/setting/contact-info/edit','contactInfoEdit')->middleware(['permission:update websetting'])->name('contactinfo.edit');
        Route::post('/dashboard/setting/contact-info/update','contactInfoUpdate')->middleware(['permission:update websetting'])->name('contactinfo.update');
    });

    // About us
    Route::controller(AboutusController::class)->middleware('auth')->group(function(){
        Route::get('/dashboard/setting/aboutus/', 'index')->middleware(['permission:view websetting'])->name('aboutus.index');
        Route::get('/dashboard/setting/aboutus/edit', 'edit')->middleware(['permission:update websetting'])->name('aboutus.edit');
        Route::post('/dashboard/setting/aboutus/update', 'update')->middleware(['permission:update websetting'])->name('aboutus.update');
    });

    Route::controller(WebmessageController::class)->middleware('auth')->group(function(){
        Route::get('/dashboard/setting/webmessage','index')->name('webmessage.index');
        Route::delete('/dashboard/setting/webmessage/destroy/{id}', 'destroy')->name('webmessage.destroy');
    });

    Route::post('/contact/webmessage/store' , [WebmessageController::class,'store'])->name('webmessage.store');

     // Delivery Info
    Route::controller(DeliveryInfoController::class)->group(function(){
        Route::get('/dashboard/delivery_info', 'index')->name('delivery_info.index');
        Route::post('/dashboard/delivery_info/update', 'update')->name('delivery_info.update');
    });
     // Faqs
    Route::controller(FaqController::class)->group(function(){
        Route::get('/dashboard/faq', 'index')->name('faq.index');
        Route::post('/dashboard/faq/update', 'update')->name('faq.update');
    });
     //Cancellation and return policy
    Route::controller(CancellationReturnController::class)->group(function(){
        Route::get('/cancel-return-policy/faq', 'index')->name('cancel-return-policy.index');
        Route::post('/dashboard/cancel-return-policy/update', 'update')->name('cancel-return-policy.update');
    });

     // Privacy Policy
     Route::controller(PrivacyController::class)->group(function(){
        Route::get('/dashboard/privacy_policy', 'index')->name('privacy_policy.index');
        Route::post('/dashboard/privacy_policy/update', 'update')->name('privacy_policy.update');
    });

     // terms and Condition
    Route::controller(TermsConditionController::class)->group(function(){
        Route::get('/dashboard/terms_condition','index')->name('terms_condition.index');
        Route::post('/dashboard/terms_condition/update', 'update')->name('terms_condition.update');
    });

    //sizechart
    Route::controller(SizeChartController::class)->middleware('auth')->group(function(){
        Route::get('/dashboard/varient/size_chart','index')->name('size_chart.index');
        Route::post('/dashboard/size_chart', 'store')->name('size_chart.store');
        Route::get('/dashboard/size_chart/{id}/edit', 'edit')->name('size_chart.edit');
        Route::put('/dashboard/size_chart/{id}', 'update')->name('size_chart.update');
        Route::delete('/dashboard/size_chart/{id}', 'destroy')->name('size_chart.destroy');
    });

    // <========================= Backend Route End ========================>

    Route::get('/google/redirect', [SocialAuthController::class, 'redirect']);
    Route::get('/google/callback', [SocialAuthController::class, 'callback']);

    // Route::post('/sslcommerz/success', [CheckoutController::class],'success')->name('sslcommerz.success');
    // Route::post('/sslcommerz/fail', [CheckoutController::class],'fail')->name('sslcommerz.fail');
    // Route::post('/sslcommerz/cancel', [CheckoutController::class],'cancel')->name('sslcommerz.cancel');
    // Route::post('/ipn-listener', [CheckoutController::class],'ipnListener')->name('ipn-listener');

    Route::match(['get', 'post'],'/thankyou',function(){
        $categories = Category::with('children')->whereNull('parent_category')->get();

        return view('frontend.thankyou',[
            'categories' => $categories,
        ]);
    })->name('thankyou');

// reviews
Route::get('/dashboard/reviews', function () {
    return view('admin.reviews.index');
})->name('reviews');



require __DIR__.'/auth.php';
