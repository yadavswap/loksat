<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <title>{{$Gsetting->title}}</title>
   <meta name="keywords" content="{{$seoComment->metakeyword}}">
 <link rel="icon" href="{{asset('/images/'.$Gsetting->default_img)}}" type="image/x-icon">

  <!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

 

  <!-- CSS
  ================================================== -->
  
  <!-- Bootstrap -->
  <link rel="stylesheet" href="{{asset('/css/bootstrap.min.css')}}">
<!-- Template styles-->
  <link rel="stylesheet" href="{{asset('/css/style.css')}}">
  <!-- Responsive styles-->
  <link rel="stylesheet" href="{{asset('/css/responsive.css')}}">    
  <!-- FontAwesome -->
  <link rel="stylesheet" href="{{asset('/css/font-awesome.min.css')}}">
  <!-- Animation -->
  <link rel="stylesheet" href="{{asset('/css/animate.css')}}">
  <!-- Owl Carousel -->
  <link rel="stylesheet" href="{{asset('/css/owl.carousel.min.css')}}">
  <link rel="stylesheet" href="{{asset('/css/owl.theme.default.min.css')}}">
  <!-- Colorbox -->
  <link rel="stylesheet" href="{{asset('/css/colorbox.css')}}">
  <link rel="stylesheet" href="{{asset('/css/sweetalert.css')}}">
  
</head>
    
<body>

    <div class="body-inner">
    <div id="top-bar" class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-8 col-xs-12">
                    <div class="ts-date">
                        <i class="fa fa-calendar-check-o"></i>
                        {{ Carbon\Carbon::now()->toFormattedDateString()}}
                    </div>
                    <ul class="unstyled top-nav">
            <li><a href="{{url('/about-us')}}">About</a></li>
            <li><a href="{{url('/site-map')}}">Site Map</a></li>
            <li><a href="{{url('/privacy')}}">Privacy</a></li>
            <li><a href="{{url('/contact-us')}}">Contact</a></li>
                    </ul>
                </div><!--/ Top bar left end -->
                @yield('social-top')
            </div><!--/ Content row end -->
        </div><!--/ Container end -->
    </div><!--/ Topbar end -->

    <!-- Header start -->
    <header id="header" class="header text-center">
      /  <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="logo">
                         <a href="{{url('/')}}">
                          <img src="{{asset('images/'.$Gsetting->logo)}}" alt="">
                         </a>
                    </div>
                </div><!-- logo col end -->

            </div><!-- Row end -->
        </div><!-- Logo and banner area end -->
    </header><!--/ Header end -->

@include('home4.menu')
@include('home4.breaking-news')

    <section class="featured-post-area no-padding">
        <div class="container">
            <div class="row">
                @yield('slider')
            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- Feature area end -->

@yield('categoryNews')

@yield('left_add')

    <section class="block-wrapper p-bottom-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    @yield('cat_feature')
                </div><!-- Content Col end -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="sidebar sidebar-right">
                        @yield('follow-us')
                        @yield('popular')
                        @yield('add-right')
                        @yield('subscriber')
                    </div><!--Sidebar right end -->
                </div><!-- Sidebar col end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
    </section><!-- 3rd block end -->

    @yield('add-three')

  <footer id="footer" class="footer">
    <div class="footer-main">
      <div class="container">
        <div class="row">

          <div class="col-md-3 col-sm-12 footer-widget widget-categories">
            <h3 class="widget-title"> Categories</h3>
            <ul>
            @foreach($catMenu as $cat)
              <li>
                <a href="{{url('/v/'.$cat->id.'/'.$cat->slug)}}">
                  <span class="catTitle">{{$cat->name}}</span>
                  <span class="catCounter"> ({{$cat->posts()->count()}})</span>
                </a>
              </li>
            @endforeach
            </ul>
            
          </div><!-- Col end -->

          
          <div class="col-md-4  col-md-offset-1 col-sm-12 footer-widget twitter-widget">
            <h3 class="widget-title">Latest /Videos</h3>
            <ul>
            @foreach($videoMenu->take(4) as $n)
              <li>
                <a/ href="{{url('/videos/'.$n->id.'/'.$n->slug)}}">
                  {{ str_limit( $n->title, 60) }}</a>
                </li>
              @endforeach
            </ul>
          </div><!-- Col end -->

          <div class="col-md-3 col-md-offset-1 col-sm-12 footer-widget">
            <h3 class="widget-title">News Gallery</h3>
            <div class="gallery-widget">
            @foreach($gallery as $n)
              <a href="{{asset('images/'.$n->image)}}" class="gallery-popup cboxElement">
          /    <img class="img-responsive" src="{{asset('images/'.$n->image)}}" alt="" />
              </a>
              @endforeach
            </div>
          </div><!-- Col end -->

        </div><!-- Row end -->
      </div><!-- Container end -->
    </div><!-- Footer main end -->

    <div class="footer-info text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="footer-info-content">
              <div class="footer-logo">
                <img class="img-responsive" src="{{asset('images/'.$Gsetting->logo)}}" alt="" />
              </div>
              <p class="footer-info-phone"><i class="fa fa-phone"></i> {{$Gsetting->phone}}</p>
              <p class="footer-info-email"><i class="fa fa-envelope-o"></i> {{$Gsetting->email}}</p>
              @yield('social-footer')
            </div><!-- Footer info content end -->
          </div><!-- Col end -->
        </div><!-- Row end -->
      </div><!-- Container end -->
    </div><!-- Footer info end -->

  </footer><!-- Footer end -->

  <div class="copyright">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6">
            <div class="copyright-info">
              <span>{{$Gsetting->footer}}</span>
            </div>
          </div>

          <div class="col-xs-12 col-sm-6">
            <div class="footer-menu">
              <ul class="nav unstyled">
                  <li><a href="{{url('/')}}">Home</a></li>
                  <li><a href="{{url('/about-us')}}">About</a></li>
                  <li><a href="{{url('/site-map')}}">Site Map</a></li>
                  <li><a href="{{url('/privacy')}}">Privacy</a></li>
                  <li><a href="{{url('/contact-us')}}">Contact</a></li>
              </ul>
            </div>
          </div>
        </div><!-- Row end -->

        <div/ id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top affix">
          <button class="btn b/tn-primary" title="Back to Top">
            <i class="fa fa-angle-up"></i>
          </button>
        </div>

      </div><!-- Container end -->
    </div><!-- Copyright end -->


  <!-- Javascript Files
  ===========================/======================= -->
<!-- <sc src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></sc/ript>   -->
  <!-- initialize jQuery Library -->
  <sc type="text/javascript" src="{{asset(/js/jquery.js')/}}"></sc>
  
  <!-- Bootstrap jQuery -->
  <sc type="text/javascript" src="{{asset(/js/bootstra/p.min.js')}}"></sc>
  
<sc src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.1/bootstra/p3-typeahead.min.js"></sc>
  <!-- Owl Carousel -->
  <sc type="text/javascript" src="{{asset(/js/owl/.carousel.min.js')}}"></sc>
  <!-- Counter -->
  <script type="text/javascript" src="{{asset(/js/jquery.counterup.min.js')}}"></script>
  <!-- Waypoints -->
  <script type="text/javascript" src="{{asset(/js/waypoints.min.js')}}"></script>
  <!-- Color box -->
  <script type="text/javascript" src="{{asset(/js/jquery.colorbox.js')}}"></script>
  <!-- Smoothscroll -->
  <script type="text/javascript" src="{{asset(/js/smoothscroll.js')}}"></script>
  <!-- Template custom -->
  <script type="text/javascript" src="{{asset(/js/custom.js')}}"></script>

  <script type="text/javascript">
    var path = "{{ route('autocomplete.ajax') }}";
    $('input.typeahead').typeahead({
        source:  function (query, process) {
        return $.get(path, { query: query }, function (data) {
                return process(data);
            });
        }
    });
</script>

  @include('Alerts::alerts')
  @yield('script')
  
  </div>
  <!-- Body inner end -->
</body>

</html>