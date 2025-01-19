@extends('layouts.admin')
@section('title','Orders list')
@section('content')
  <!-- DataTables Buttons CSS -->
    <!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">-->
<style>
    .hidden-item {
    display: none;
}

.show-more-container {
    margin-top: 10px;
}

.show-more-btn {
    cursor: pointer;
    background: none;
    border: none;
    font-size: 16px;
}

</style>
    <div class="content-header">
        <div>
            <h2 class="content-title card-title">Order List </h2>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{'/dashborad'}}">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Order</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4">
                <header class="card-header">
                    <h5 class="mb-3">Filter by</h5>
                      <form id="orderFilterForm">
                        <div class="row order_live_search">
                            <div class="col-md-2 mb-4">
                                <label for="Order" class="form-label">Order ID</label>
                                <input type="text" placeholder="Type here" class="form-control" id="order_id">
                            </div>
                            <div class="col-md-2 mb-4">
                                <label for="customer_name" class="form-label">Customer</label>
                                <input type="text" placeholder="Type here" class="form-control" id="customer_name">
                            </div>
                            <div class="col-md-2 mb-4">
                                <label for="customerPhone" class="form-label">Phone</label>
                                <input type="text" placeholder="Type here" class="form-control" id="customerPhone">
                            </div>
                            <div class="col-md-2 mb-4">
                                <label for="productSKU" class="form-label">SKU</label>
                                <input type="text" placeholder="Type Product SKU here" class="form-control" id="productSKU">
                            </div>
                            <div class="col-md-2 mb-4">
                                <label for="ProductSize" class="form-label">Size</label>
                                <input type="text" placeholder="Type here" class="form-control" id="ProductSize">
                            </div>
                            <div class="col-md-2 mb-4">
                                <label for="orderStatus" class="form-label">Order Status</label>
                                <select class="form-select" id="orderStatus">
                                    <option value="0">Change Status</option>
                                    <option value="pending" style="color: orange;">Pending</option>
                                    <option value="confirmed" style="color: blue;">Confirmed</option>
                                    <option value="shipped" style="color: green;">Shipped</option>
                                    <option value="delivered" style="color: #00cc00;">Delivered</option>
                                    <option value="completed" style="color: purple;">Completed</option>
                                    <option value="returned" style="color: gray;">Returned</option>
                                    <option value="cancelled" style="color: red;">Cancelled</option>
                                </select>
                            </div>

                        </div>
                    </form>

                </header>

                <!-- card-header end// -->
                <div class="card-body">

                    <div class="row gx-3 mt-4">
                        <div class="col-lg-6 col-md-6 me-auto">
                            <a href="#" id="bulkOrderSend" class="btn btn-brand mb-15" style="display: none; ">Send SteadFast</a>
                            <select class="form-select mb-lg-0 mb-15 mw-200 all_order_status ml-5 btn"
                                    id="all_order_status" name="all_order_status"
                                    style="display: none; border-color: #088178">

                                <option value="0" >Change Status</option>
                                <option value="pending" style="color: orange;" >Pending</option>
                                <option value="confirmed" style="color: blue;" >Confirmed</option>
                                <option value="shipped" style="color: green;" >Shipped</option>
                                <option value="delivered" style="color: #00cc00;" >Delivered</option>
                                <option value="completed" style="color: purple;">Completed</option>
                                <option value="returned" style="color: gray;" >Returned</option>
                                <!--<option value="cancelled" style="color: red;" >Cancelled</option>-->
                            </select>
                            {{-- <input type="text" placeholder="Search..." class="form-control"> --}}
                        </div>

                    </div>

                    <div class="">
                        <table class="table table-hover" id="ordertableDatatable">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" id="select-all-checkbox"></td>
                                    <th>ID</th>
                                    <th>Order No</th>
                                    <th>Customer </th>
                                    <th>Product Info</th>
                                    <th>Price</th>
                                    <th>Due</th>
                                    @can('update order')
                                    <th>Status</th>
                                    @endcan
                                    <th class="text-end"> Action </th>
                                </tr>
                            </thead>
                            <tbody id="orderTableBody">
                                @foreach ($orders as $key => $order)
                                <tr>
                                    <td><input type="checkbox" class="form-group order-checkbox" value="{{$order->id}}" id="order_checkbox"></td>
                                    <td class="text-center">
                                        {{$key+1}}
                                        {{-- @if ($order->steadfastorder)
                                        <br>
                                        <img src="{{asset('admin/assets/imgs/logo.svg')}}" alt="steadfast" width="60px"
                                        style="margin-top: 5px;">
                                        @endif --}}
                                    </td>
                                    <td>
                                        <small >Order No.: #{{$order->id}}</small><br>
                                        Date: <small >{{ $order->created_at->format('d-m-Y') }}</small>

                                    </td>
                                    <td>
                                        <a href="{{route('customer.profile', ['id' => $order->customer->id])}}" class="">
                                            <div class="info pl-3">
                                                <h6 class="mb-0 title">{{$order->customer->firstName}} {{$order->customer->lastName}}</h6>
                                                <a class="text-muted" href="tel:{{$order->customer->phone}}">{{$order->customer->phone}}</a><br>
                                                <p class="text-muted" style="width:200px">{{$order->customer->billing_address}}</small>
                                            </div>
                                        </a>
                                    </td>

                                    <td>
                                        <div class="order-items-container">
                                            @foreach ($order->order_item as $key => $item)
                                                <div class="order-item {{ $key >= 3 ? 'hidden-item' : '' }}">
                                                    {{ $key+1 }}.
                                                    <span class="text-brand">{{ $item->product->product_name }}</span>,
                                                    {{-- @if($item->product_sizes)
                                                    <span>Size: {{ $item->product_sizes->size_name }}</span>,
                                                    @endif --}}
                                                    @if($item->product_colors)
                                                        <span>Color: {{ $item->product_colors->color_name }}</span>,
                                                    @endif
                                                    <span>Quantity: {{ $item->quantity }}</span>
                                                </div>
                                            @endforeach
                                        </div>
                                        @if(count($order->order_item) > 3)
                                            <div class="show-more-container text-center">
                                                <button class="show-more-btn">▼</button>
                                            </div>
                                        @endif
                                    </td>
                                    <td>৳{{$order->total}}</td>
                                    <td>৳<span>{{ $order->total_due}}</span></td>
                                    @can('update order')
                                    <td>
                                        @if($order->is_pos !=1 )
                                        <div class="status-container">
                                            <select class="form-select d-inline-block mb-lg-0 mb-15 mw-200 order_status" id="order_status" data-order-id="{{ $order->id }}" name="order_status">
                                                <option value="pending" style="color: orange;" {{ $order->status == 'pending' ? 'selected' : '' }}>Pending</option>
                                                <option value="confirmed" style="color: blue;" {{ $order->status == 'confirmed' ? 'selected' : '' }}>Confirmed</option>
                                                <option value="shipped" style="color: green;" {{ $order->status == 'shipped' ? 'selected' : '' }}>Shipped</option>
                                                <option value="delivered" style="color: #00cc00;" {{ $order->status == 'delivered' ? 'selected' : '' }}>Delivered</option>
                                                <option value="completed" style="color: purple;" {{ $order->status == 'completed' ? 'selected' : '' }}>Completed</option>
                                                <option value="returned" style="color: gray;" {{ $order->status == 'returned' ? 'selected' : '' }}>Returned</option>
                                                <!--<option value="cancelled" style="color: red;" {{ $order->status == 'cancelled' ? 'selected' : '' }}>Cancelled</option>-->
                                            </select>
                                        </div>
                                        @else
                                        <div class="status-container">
                                            <select class="form-select d-inline-block mb-lg-0 mb-15 mw-200 order_status" id="order_status" data-order-id="{{ $order->id }}" name="order_status">

                                                <option value="completed" style="color: purple;" {{ $order->status == 'completed' ? 'selected' : '' }}>Completed</option>
                                                <option value="returned" style="color: gray;" {{ $order->status == 'returned' ? 'selected' : '' }}>Returned</option>
                                            </select>
                                        </div>
                                        @endif
                                    </td>
                                    @endcan

                                    <td class="text-end">

                                        <a href="{{route('order.details', ['id' => $order->id])}}" class="btn btn-md rounded font-sm">Detail</a>

                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light rounded btn-sm font-sm"> <i class="material-icons md-more_horiz"></i> </a>
                                            <div class="dropdown-menu">

                                                {{-- steadfast button --}}
                                                {{-- @if ($order->steadfastorder)
                                                <a class="dropdown-item" href="{{route('order.steadfast.statusCheck', ['id' => $order->id])}}" >
                                                    <img src="{{asset('admin/assets/imgs/steadfast.png')}}" alt="steadfast" width="20px"
                                                    style="margin-top: 5px;">SteadFast Order</a>
                                                @else
                                                <a class="dropdown-item" href="{{route('order.steadfast.place_order', ['id' => $order->id])}}">
                                                    <img src="{{asset('admin/assets/imgs/steadfast.png')}}" alt="steadfast" width="20px"
                                                    style="margin-top: 5px;">Send to Courier</a>
                                                @endif --}}

                                                {{-- Action Button --}}
                                                @if($order->is_pos == 0 )
                                                <a class="dropdown-item" href="{{route('order.track', ['id' => $order->id])}}">Track me</a>
                                                @endif

                                                {{-- invoice --}}
                                                @if($order->is_pos == 1 )
                                                <a class="dropdown-item" href="{{ url('/dashboard/pos/invoice/'.$order->id) }}" target="__blank">
                                                    <i class="fas fa-file-invoice"></i>Invoice</a>
                                                @else
                                                <a class="dropdown-item" href="{{ url('/orders/invoice/'.$order->id) }}" target="__blank">
                                                    <i class="fas fa-file-invoice"></i>Invoice</a>
                                                @endif

                                            </div>
                                        </div> <!-- dropdown //end -->
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                @endforeach

                            </tbody>
                        </table>
                    </div> <!-- table-responsive //end -->
                </div> <!-- card-body end// -->
            </div> <!-- card end// -->
        </div>

    </div>

@endsection

@push('order_status')

<!-- DataTables JS -->
<!--<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>-->
<!-- DataTables Buttons JS -->
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
<!-- JSZip for Excel button -->
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<!-- PDFMake for PDF button -->
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<!-- Buttons for DataTables -->
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
<script>


    $(document).ready(function() {

         $('#ordertableDatatable').DataTable({
            dom: 'Bfrtip', // This is necessary to show the buttons
            buttons: [
                {
                    extend: 'excel',
                    exportOptions: {
                        columns: [1, 3, 4, 5] // Specify columns to include
                    }
                },
                {
                    extend: 'pdf',
                    exportOptions: {
                        columns: [1, 3, 4, 5] // Specify columns to include
                    },
                    customize: function (doc) {
                        doc.content[1].table.widths = [
                            '5%', // ID column
                            '30%', // Order No column
                            '60%', // Price column
                            '10%'  // The remaining columns are not included in the PDF
                        ];
                    }
                }
            ]
        });

        $('.show-more-btn').on('click', function() {
            $(this).closest('td').find('.hidden-item').toggle();
            $(this).text($(this).text() === '▼' ? '▲' : '▼');
        });

        // Get references to the global and individual checkboxes
        const selectAllCheckbox = document.getElementById('select-all-checkbox');
        const individualCheckboxes = document.querySelectorAll('.order-checkbox');
        const statusSelect = $('#all_order_status');
        const bulkOrderBtn = $('#bulkOrderSend');

        // Add an event listener to the global checkbox
        selectAllCheckbox.addEventListener('change', function () {
            // Update the state of all individual checkboxes based on the state of the global checkbox
            individualCheckboxes.forEach(checkbox => {
                checkbox.checked = selectAllCheckbox.checked;
            });

            // Show/hide the statusSelect based on the state of the global checkbox
            statusSelect.toggle(selectAllCheckbox.checked);
            bulkOrderBtn.toggle(selectAllCheckbox.checked);
        });

        // Add an event listener to each individual checkbox
        individualCheckboxes.forEach(checkbox => {
            checkbox.addEventListener('change', function () {
                // Update the state of the global checkbox based on the state of individual checkboxes
                selectAllCheckbox.checked = [...individualCheckboxes].every(checkbox => checkbox.checked);

                // Show/hide the statusSelect based on the state of the individual checkboxes
                statusSelect.toggle([...individualCheckboxes].some(checkbox => checkbox.checked));
                bulkOrderBtn.toggle([...individualCheckboxes].some(checkbox => checkbox.checked));
            });
        });

        $('.order-checkbox').change(function() {
            var orderId = $(this).val();
            var statusSelect = $('#all_order_status');
            var bulkOrderBtn = $('#bulkOrderSend');

            if ($(this).prop('checked')) {
                statusSelect.show();
                bulkOrderBtn.show();
            } else {
                statusSelect.hide();
                bulkOrderBtn.hide();
            }
        });

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });



        $('.all_order_status').change(function() {
            var selectedStatus = $(this).val();
            var selectedOrders = $('.order-checkbox:checked').map(function() {
                return $(this).val();
            }).get();
            // console.log(selectedOrders);
            // Perform an AJAX request to update the status of selected orders
            $.ajax({
                type: 'POST',
                url: '{{url('/update-order-status')}}',
                data: {
                    status: selectedStatus,
                    orders: selectedOrders
                },
                success: function(response) {
                    // Handle success, if needed
                    location.reload();
                    if (response.success) {
                        $.Notification.autoHideNotify('success', 'top right', 'Success', response.message);
                    }
                    console.log(response);
                },
                error: function(error) {
                    // Handle error, if needed
                    location.reload();
                    console.error(error);
                }
            });
        });

        $('.order_status').change(function() {
            var orderId = $(this).data('order-id');
            var newStatus = $(this).val();

            console.log(newStatus);
            console.log(orderId);
            // Perform an AJAX request to update the status of selected orders
            $.ajax({
                type: 'POST',
                url: '{{url('/update-one-order-status')}}', // Update with your route
                data: {
                    orderId: orderId,
                    newStatus: newStatus,
                    _token: '{{ csrf_token() }}'
                },
                success: function (response) {
                    // Handle success, if needed
                    location.reload();
                    if (response.success) {
                        $.Notification.autoHideNotify('success', 'top right', 'Success', response.message);
                    }
                    console.log(response);
                },
                error: function (error) {
                    // Handle error, if needed
                    console.error(error);
                }
            });
        });

        // // $('.order_status').change(function () {
        //     var selectedColor = $('option:selected', '.order_status').css('color');
        //     $('.order_status').css('background-color', selectedColor);
        // // });

        $('#orderFilterForm input, #orderFilterForm select').on('keyup change', function() {
                // Capture form input values
                var orderId = $('#order_id').val();
                // console.log(orderId);
                var customerName = $('#customer_name').val();
                // console.log(customerName);
                var status = $('#orderStatus').val();
                // console.log(status);
                var customerPhone = $('#customerPhone').val();
                // console.log(customerPhone);
                var productSKU = $('#productSKU').val();
                var size = $('#ProductSize').val();

                $.ajax({
                    url: "{{ route('order.filters') }}",
                    method: "GET",
                    data: {
                        orderId: orderId,
                        customerName: customerName,
                        status: status,
                        customerPhone: customerPhone,
                        sku: productSKU,
                        size: size,
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(response) {
                        // Handle success, if needed
                        // console.log(response);

                        var tableBody = $('#orderTableBody');
                        tableBody.empty(); // Clear existing table rows

                        response.forEach(function(order, index) {

                            var statusOption = '';

                            // Check if the order is POS or not
                            if (order.is_pos != 1) {
                                // If not POS, include full status options
                                statusOption = `
                                    <div class="status-container">
                                        <select class="form-select d-inline-block mb-lg-0 mb-15 mw-200 order_status" id="order_status" data-order-id="${order.id}" name="order_status">
                                            <option value="pending" style="color: orange;" ${order.status == 'pending' ? 'selected' : ''}>Pending</option>
                                            <option value="confirmed" style="color: blue;" ${order.status == 'confirmed' ? 'selected' : ''}>Confirmed</option>
                                            <option value="shipped" style="color: green;" ${order.status == 'shipped' ? 'selected' : ''}>Shipped</option>
                                            <option value="delivered" style="color: #00cc00;" ${order.status == 'delivered' ? 'selected' : ''}>Delivered</option>
                                            <option value="completed" style="color: purple;" ${order.status == 'completed' ? 'selected' : ''}>Completed</option>
                                            <option value="returned" style="color: gray;" ${order.status == 'returned' ? 'selected' : ''}>Returned</option>
                                            <option value="cancelled" style="color: red;" ${order.status == 'cancelled' ? 'selected' : ''}>Cancelled</option>
                                        </select>
                                    </div>
                                `;
                            } else {
                                // If POS, include limited status options
                                statusOption = `
                                    <div class="status-container">
                                        <select class="form-select d-inline-block mb-lg-0 mb-15 mw-200 order_status" id="order_status" data-order-id="${order.id}" name="order_status">
                                            <option value="completed" style="color: purple;" ${order.status == 'completed' ? 'selected' : ''}>Completed</option>
                                            <option value="returned" style="color: gray;" ${order.status == 'returned' ? 'selected' : ''}>Returned</option>
                                        </select>
                                    </div>
                                `;
                            }

                            // Initialize a variable to store the HTML for order items
                            var orderItemsHtml = '';

                            // Iterate through order items and create HTML
                            order.order_item.forEach(function(item, key) {
                                // console.log(item);
                                orderItemsHtml += `
                                    <span>${key + 1}. <span class="text-brand">${item.product.product_name}</span>, Size: ${item.product_sizes.size_name}`;

                                // Include color if available
                                if (item.product_colors) {
                                    orderItemsHtml += `, Color: ${item.product_colors.color_name}`;
                                }

                                orderItemsHtml += `, Quantity: ${item.quantity}<br>`;
                            });

                            var createdAtDate = new Date(order.created_at);
                            // Define options for date formatting
                            var options = {
                                year: 'numeric',
                                month: '2-digit',
                                day: '2-digit'
                            };

                            // Format the date using toLocaleDateString() method
                                var formattedDate = createdAtDate.toLocaleDateString('en-GB', options).replace(/\//g, '-');

                            // Construct the row HTML with all details
                            var row = `
                                <tr>
                                    <td><input type="checkbox" class="form-group order-checkbox" value="${order.id}" id="order_checkbox"></td>
                                    <td>${index + 1}</td>
                                    <td>
                                        <small>Order No.: #${order.id}</small><br>
                                        Date: <small>${formattedDate}</small>
                                    </td>
                                    <td>
                                        <a href="{{ route('customer.profile', ['id' => '']) }}${order.customer_id}" class="">
                                            <div class="info pl-3">
                                                <h6 class="mb-0 title">${order.customer.firstName} ${order.customer.lastName}</h6>
                                                <a class="text-muted" href="tel:${order.customer.phone}">${order.customer.phone}</a><br>
                                                <small class="text-muted" style="width:200px">${order.customer.billing_address}</small>
                                            </div>
                                        </a>
                                    </td>
                                    <td>${orderItemsHtml}</td>
                                    <td>৳${order.total}</td>
                                    <td>৳<span>${order.total_due}</span></td>
                                    <td>${statusOption}</td>
                                    <td class="text-end">
                                        <a href="{{route('order.details', ['id' => ''])}}${order.id}" class="btn btn-md rounded font-sm">Detail</a>
                                        ${order.is_pos == 0 ? `<a class="btn btn-md rounded font-sm" href="{{route('order.track', ['id' => ''])}}${order.id}">Track me</a>` : ''}
                                        <a href="{{ url('/dashboard/pos/invoice') }}/${order.id}" target="__blank" class="btn btn-facebook rounded font-sm">Invoice</a>
                                    </td>
                                </tr>
                            `;
                            // console.log(row);

                            // Append more columns as needed
                            tableBody.append(row);
                        });

                        $('.order_status').change(function() {
                            var orderId = $(this).data('order-id');
                            var newStatus = $(this).val();

                            console.log(newStatus);
                            console.log(orderId);
                            // Perform an AJAX request to update the status of selected orders
                            $.ajax({
                                type: 'POST',
                                url: '{{url('/update-one-order-status')}}', // Update with your route
                                data: {
                                    orderId: orderId,
                                    newStatus: newStatus,
                                    _token: '{{ csrf_token() }}'
                                },
                                success: function (response) {
                                    // Handle success, if needed
                                    // location.reload();
                                    if (response.success) {
                                        $.Notification.autoHideNotify('success', 'top right', 'Success', response.message);
                                    }
                                    console.log(response);
                                },
                                error: function (error) {
                                    // Handle error, if needed
                                    console.error(error);
                                }
                            });
                        });
                    },
                    error: function(error) {
                        // Handle error, if needed
                        console.error(error);
                    }
                })
            });


    });
</script>
@endpush
