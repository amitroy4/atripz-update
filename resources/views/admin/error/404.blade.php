<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Evara Dashboard</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="">
    <meta property="og:type" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('admin/assets/imgs/theme/favicon.svg')}}">
    <!-- Template CSS -->
    <link href="{{asset('admin/assets/css/main.css')}}" rel="stylesheet" type="text/css" />
</head>

<body>
    <section class="content-main">
        <div class="row mt-60">
            <div class="col-sm-12">
                <div class="w-50 mx-auto text-center">
                    <img src="assets/imgs/theme/404.png" width="350" alt="Page Not Found">
                    <h3 class="mt-40 mb-15">Oops! Page not found</h3>
                    <p>It's looking like you may have taken a wrong turn. Don't worry... it happens to the best of us. Here's a little tip that might help you get back on track.</p>
                    <a href="{{route('dashboard')}}" class="btn btn-primary mt-4"><i class="material-icons md-keyboard_return"></i> Back to main</a>
                </div>
            </div>
        </div>
    </section> <!-- content-main end// -->
    <footer class="main-footer font-xs">
        <div class="row pb-30 pt-15">
            <div class="col-sm-6">
                <script>
                document.write(new Date().getFullYear())
                </script> ©, Evara - HTML Ecommerce Template .
            </div>
            <div class="col-sm-6">
                <div class="text-sm-end">
                    All rights reserved
                </div>
            </div>
        </div>
    </footer>
    <script src="{{asset('')}}admin/assets/js/vendors/jquery-3.6.0.min.js"></script>
    <script src="{{asset('')}}admin/assets/js/vendors/bootstrap.bundle.min.js"></script>
    <script src="{{asset('')}}admin/assets/js/vendors/select2.min.js"></script>
    <script src="{{asset('')}}admin/assets/js/vendors/perfect-scrollbar.js"></script>
    <script src="{{asset('')}}admin/assets/js/vendors/jquery.fullscreen.min.js"></script>
    <!-- Main Script -->
    <script src="{{asset('')}}admin/assets/js/main.js" type="text/javascript"></script>
</body>

</html>
