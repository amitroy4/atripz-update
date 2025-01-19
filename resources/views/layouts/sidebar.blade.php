<aside class="navbar-aside" id="offcanvas_aside">
    <div class="aside-top">
        <a href="{{url('/dashboard')}}" class="brand-wrap" style="margin:0 auto;">
            <img src="{{asset('/storage/logos/'.$web_info->weblogo)}}" class="logo" alt="LOGO.png">
        </a>
        <div>
            <button class="btn btn-icon btn-aside-minimize"> <i class="text-muted material-icons md-menu_open"></i> </button>
        </div>
    </div>
    <nav>

        <ul class="menu-aside">
            <li class="menu-item {{ request()->is('dashboard') ? 'active' : '' }}">
                <a class="menu-link" href="{{('/dashboard')}}"> <i class="icon material-icons md-home"></i>
                    <span class="text">Dashboard</span>
                </a>
            </li>

            <li class="menu-item has-submenu {{ request()->is('dashboard/products/*') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-shopping_bag"></i>
                    <span class="text">Products</span>
                </a>
                <div class="submenu">
                    @can('create product')
                        <a href="{{route('products.create')}}">Add Product</a>
                    @endcan
                    @can('view product')
                        <a href="{{route('products.index')}}">Product List</a>
                    @endcan
                    @can('view brand')
                        <a href="{{route('brands.index')}}">Brands</a>
                    @endcan
                    @can('view category')
                    <a href="{{route('category.index')}}">Categories</a>
                    @endcan
                    @can('view variant')
                    {{-- <a href="{{route('subcategory.index')}}">Subcategories</a> --}}
                    <a href="{{route('varient.index')}}">Varient</a>
                    @endcan
                </div>
            </li>
            @can('view order')
            <li class="menu-item has-submenu {{ request()->is('dashboard/orders/*') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-shopping_cart"></i>
                    <span class="text">Orders</span>
                </a>
                <div class="submenu">
                    <a href="{{route('order.index')}}">All Order list</a>
                    <a href="{{route('order.pending')}}">Pending Order list</a>
                    <a href="{{route('order.completed')}}">Completed Order</a>
                    <a href="{{route('order.return')}}">Order return</a>
                </div>
            </li>
            @endcan

            @can('view customer')
            <li class="menu-item has-submenu {{ request()->is('dashboard/customers') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-supervisor_account"></i>
                    <span class="text">Customers</span>
                </a>
                <div class="submenu">
                    <a href="{{route('customer.index')}}">Customers list</a>
                    {{-- <a href="{{route('customer.profile')}}">Customer profile</a> --}}
                </div>
            </li>
            @endcan

            @can('view supplier')
            <li class="menu-item has-submenu {{ request()->is('dashboard/suppliers') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-supervised_user_circle"></i>
                    <span class="text">Suppliers</span>
                </a>
                <div class="submenu">
                    <a href="{{route('supplier.index')}}">Supplier list</a>
                    {{-- <a href="{{route('customer.profile')}}">Customer profile</a> --}}
                </div>
            </li>
            @endcan
            @can('view transaction')
            <li class="menu-item has-submenu {{ request()->is('dashboard/transaction') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-monetization_on"></i>
                    <span class="text">Transactions</span>
                </a>
                <div class="submenu">
                    <a href="{{route('transaction.index')}}">Transactions list</a>
                    {{-- <a href="{{route('customer.profile')}}">Customer profile</a> --}}
                </div>
            </li>
            @endcan
            {{-- <li class="menu-item has-submenu {{ request()->is('dashboard/promotion/*') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-trending_up"></i>
                    <span class="text">Promotions</span>
                </a>
                <div class="submenu">
                    <a href="{{route('offers.index')}}">Offers</a>
                    <a href="{{route('coupon.index')}}">Coupons</a>
                </div>
            </li> --}}
            {{-- <li class="menu-item has-submenu {{ request()->is('dashboard/feature/*') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-card_membership"></i>
                    <span class="text">Feature item</span>
                </a>
               <div class="submenu">
                    <a href="{{route('category_feature')}}">Category</a>
                    <a href="{{ route('product_feature') }}">Products</a>
                </div>
            </li> --}}

            @can('view inventory')
           <li class="menu-item has-submenu {{ request()->is('dashboard/inventory/*') ? 'active' : '' }}">
                <a class="menu-link" href="#">
                    <i class="icon material-icons md-store"></i>
                    <span class="text">Inventory</span>
                </a>
                <div class="submenu">
                    <a href="{{ route('inventory.item') }}">Manage Stocks</a>

                    {{-- <a href="{{route('inventory.size')}}">
                        <span class="text">Size Wise</span>
                    </a> --}}
                </div>
            </li>
            @endcan
            {{-- <li class="menu-item {{ request()->is('dashboard/campaign') ? 'active' : '' }}">
                <a class="menu-link" href="{{route('campaign')}}"> <i class="icon material-icons md-campaign"></i>
                    <span class="text">Campaign</span> </a>
            </li> --}}

            {{-- <li class="menu-item {{ request()->is('dashboard/zone') ? 'active' : '' }}">
                <a class="menu-link"  href="{{route('zone.index')}}"> <i class="icon material-icons md-pie_chart"></i>
                    <span class="text">Zone</span>
                </a>
            </li> --}}
        </ul>
        <hr>

        <ul class="menu-aside">
            @can('view report')
            <li class="menu-item has-submenu">
                <a class="menu-link" href="#"> <i class="icon material-icons md-assessment"></i>
                    <span class="text">Reports</span>
                </a>
                <div class="submenu">
                    <a href="{{route('sale.report')}}">Sales Report</a>
                </div>
            </li>
            @endcan
            <li class="menu-item has-submenu {{ request()->is('dashboard/users/*') ? 'active' : '' }}" >
                <a class="menu-link" href="#">
                    <i class="icon material-icons md-people"></i><span class="text">Manage Users</span>
                </a>
                <div class="submenu">
                    {{-- @can('view user') --}}
                    <a href="{{url('/dashboard/users/index')}}">Users</a>
                    {{-- @endcan --}}
                    {{-- @can('view role') --}}
                    <a href="{{url('/dashboard/users/roles')}}">Roles</a>
                    {{-- @endcan --}}
                    {{-- @can('view permission') --}}
                    <a href="{{url('/dashboard/users/permissions')}}">Permissions</a>
                    {{-- @endcan --}}
                </div>
            </li>
            @can('view websetting')
            <li class="menu-item has-submenu {{ request()->is('dashboard/setting') ? 'active' : '' }}">
                <a class="menu-link" href="#"> <i class="icon material-icons md-settings"></i>
                    <span class="text">Web Settings</span>
                </a>
                <div class="submenu">
                    <a href="{{route('aboutus.index')}}">
                        <span class="text">About us</span>
                    </a>
                    <a href="{{route('slider')}}">
                        <span class="text">Slider</span>
                    </a>
                    <a href="{{route('ads')}}">
                        <span class="text">Advertisement</span>
                    </a>
                    <a href="{{ route('webinfo.index') }}">
                        <span class="text">WebInfo</span>
                    </a>
                    <a href="{{route('contactinfo.index')}}">
                        <span class="text">Contact Info</span>
                    </a>

                    <a href="{{route('socialinfo.index')}}">
                        <span class="text">Social Info</span>
                    </a>

                    <a href="#">
                        <span class="text">Shipping Method</span>
                    </a>

                    <a href="#">
                        <span class="text">Subscriber</span>
                    </a>
                    <a href="{{route('webmessage.index')}}">
                        <span class="text">Web Message</span>
                    </a>

                    <div class="sub-submenu"> <!-- New sub-submenu level -->
                        <a href="#" class="menu-link">
                            <span class="text">SEO Setting</span>
                        </a>
                        <div class="sub-submenu-content"> <!-- Sub-submenu content -->
                            <a href="{{route('seo.index')}}">
                                <i class="icon material-icons md-arrow_forward"></i>
                                 <span class="text">Seo Info</span>
                            </a>
                            {{-- <a href="#">
                                <i class="icon material-icons md-arrow_forward"></i>
                                <span class="text">Meta Setting</span>
                            </a> --}}
                        </div>
                    </div>
                </div>
            </li>
            @endcan

        </ul>


        <br>
    </nav>

</aside>
