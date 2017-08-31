
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="ico/favicon.ico">

    <title>Rooster - Multipurpose Business Theme</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href='http://fonts.useso.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Navigation -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">ROOSTER</a>
        </div>
        <div class="collapse navbar-collapse">        
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Home</a>
              <ul class="dropdown-menu">
                <li><a href="index.html">Homepage 1</a></li>
                <li><a href="index-full.html">Homepage 2</a></li>
              </ul>
            </li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio</a>
              <ul class="dropdown-menu">
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="portfolio-item-1.html">Portfolio Item</a></li>
              </ul>
            </li>
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages</a>
              <ul class="dropdown-menu">
                <li><a href="about-us.html">About Us</a></li>
                <li><a href="coming-soon.html">Coming Soon</a></li>
                <li><a href="contact-us.html">Contact Us</a></li>
                <li><a href="help-center.html">Help Center</a></li>
                <li><a href="help-item.html">Help Item</a></li>
                <li><a href="pricing-table.html">Pricing Table</a></li>
                <li><a href="services.html">Services</a></li>
                <li><a href="sign-in.html">Sign In</a></li>
                <li><a href="sign-up.html">Sign Up</a></li>
                <li><a href="error-page.html">404 Error Page</a></li>
              </ul>
            </li>            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog</a>
              <ul class="dropdown-menu">
                <li><a href="blog.html">Blog</a></li>
                <li><a href="blog-post.html">Blog Post</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop</a>
              <ul class="dropdown-menu">
                <li><a href="shop.html">Shop</a></li>
                <li><a href="shop-item.html">Shop Item</a></li>
                <li><a href="shopping-cart.html">Shopping Cart</a></li>
                <li><a href="user-profile.html">User Profile</a></li>
              </ul>
            </li>
            <li class="hidden-sm">
              <a href="ui-elements.html">UI Elements</a>
            </li>            
            <!-- Navbar Search -->
            <li class="hidden-xs" id="navbar-search">
              <a href="#">
                <i class="fa fa-search"></i>
              </a>
              <div class="hidden" id="navbar-search-box">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search">
                  <span class="input-group-btn">
                    <button class="btn btn-style btn-k btn-primary" type="button">Go!</button>
                  </span>
                </div>
              </div>
            </li>
          </ul>
          <!-- Mobile Search -->
          <form class="navbar-form navbar-right visible-xs" role="search">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search">
              <span class="input-group-btn">
                <button class="btn btn-blue" type="button">Search!</button>
              </span>
            </div>
          </form>          
        </div><!--/.nav-collapse -->
      </div>
    </div> <!-- / .navigation -->
	<span id="header_shadow" style="width: 100%; top: 30px;"></span>

    <!-- Wrapper -->
    <div class="wrapper">
	
	  <!-- Topic Header -->
      <div class="topic">
        <div class="container">
          <div class="row">            
            <ol class="breadcrumb hidden-xs">
              <li><a href="index.html">Home</a></li>
              <li class="active">Contact Us</li>
            </ol>                      
          </div> <!-- / .row -->
        </div> <!-- / .container -->
      </div> <!-- / .Topic Header -->    

      <div class="container">
        <div class="row">
		
          <div class="col-sm-8">
            <h3 class="first-child"><span>Let’s keep in touch</span></h3>
            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
            <form role="form">
			  <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Enter Your Name">
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Enter Your Mail">
              </div>              
              <div class="form-group">
                <label for="message">Message</label>
                <textarea class="form-control" rows="3" id="message" placeholder="Type Message"></textarea>
              </div>
              <div class="form-group">
                <label for="exampleInputFile">Upload file</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">Attach file here.</p>
              </div>
              <div class="checkbox">
                <label>
                  <input type="checkbox"> Send a copy to myself
                </label>
              </div>			  
              <a href="#" type="submit" class="btn-animate btn-style btn-d btn-primary">Send Request</a>
            </form>
          </div>
          <div class="col-sm-4">
            <h3 class="second-child"><span>Get In Touch</span></h3>
            <p>
              051 Ave C South Saskatoon, 10 Elizabeth<br />
              Street Mountain Road, CA United States.<br />
              Phone: 92 026 365 2569<br />
              Fax: 92 026 365 2570<br />
              Email: <a href="mailto:#">supportcenter@mail.com</a>
            </p>           
            
            <div class="maps">
              <div id="google-maps" class="map"></div>
            </div>	
            
          </div>
		  
        </div> <!-- / .row -->
      </div> <!-- / .container -->

    </div> <!-- / .wrapper -->

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
		
          <!-- Contact Us -->
          <div class="col-xs-12 col-sm-3 col-md-3">
            <h4>Contact Us</h4>            
			<p>
			  051 Ave C South Saskatoon, 10 Elizabeth <br />
			  Street Mountain Road, CA United States.
			  <br /><br />
			  Phone : 92 026 365 2569<br />
			  Fax   : 92 026 365 2570
			  <br /><br />
			  <a href="mailto:#">supportcenter@mail.com</a>
			</p>			
          </div><!-- / .Contact Us -->
		  
		  <!-- Useful Links -->
          <div class="col-xs-12 col-sm-3 col-md-3">            
            <h4>Useful Links</h4>
            <p>
              <a href="#">Simple and clean blog design </a><br />
              <a href="#">We bring good to online presence  </a><br />
              <a href="#">Fully responsive creative design  </a><br />
              <a href="#">Creative homepage design </a><br />
              <a href="#">Our services are most nifty  </a><br />
              <a href="#">Most flexible theme </a><br />
            </p>
          </div><!-- / .Useful Links -->
		  
          <!-- Recent Tweets -->
          <div class="col-xs-12 col-sm-3 col-md-3">
            <h4>Gallery</h4>
			<div class="gallery clearfix">
			  <ul class="list-unstyled">
			    <li><a href="#"><img src="img/avatar-1.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-2.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-3.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-4.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-5.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-6.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-7.jpg" style="width:60px;height:60px;" alt="..."></a></li>
				<li><a href="#"><img src="img/avatar-8.jpg" style="width:60px;height:60px;" alt="..."></a></li>				
			   </ul>
			</div>
          </div><!-- / .Recent Tweets -->
		  
          <!-- Newsletter -->
          <div class="col-xs-12 col-sm-3 col-md-3">
            <h4>Newsletter</h4>
            <p>
              By subscribing to our mailing list you will get the latest news from us.              
            </p>
            <form class="form" role="form">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="input-group">
                    <label class="sr-only" for="subscribe-email">Email address</label>
                    <input type="email" class="form-control" id="subscribe-email" placeholder="Enter your email">
                    <span class="input-group-btn">
                      <button type="submit" class="btn btn-style btn-k btn-primary">OK</button>
                    </span>
                  </div>
                </div>
              </div>
            </form>
			<br />
			<h4>Follow us on</h4>
			  <ul class="list-inline">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				<li><a href="#"><i class="fa fa-envelope"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-skype"></i></a></li>				
			  </ul>
          </div><!-- / .Newsletter -->
		  
        </div> <!-- / .row -->		
      </div> <!-- / .container --> 	  
    </footer><!-- / .Footer -->
	
	<!-- Copyright -->
	<div class="copyrights">
		<div class="container">
		  <div class="row">
			<div class="col-sm-12">
			  <div class="copyright">
				<small>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small>
			  </div>
			</div>
		  </div> <!-- / .row -->
		</div> <!-- / .container --> 
	</div><!-- / .Copyright -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scrolltopcontrol.js"></script>
	<script src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script src="js/custom.js"></script>
	<script>
    window.onload = function () {
        var latlng = new google.maps.LatLng(39.690281,-100.997314);
         var styles = [{
            stylers: [{
                hue: '#2babcf'
            }, {
                saturation: -20
            }]
        }];
        var myOptions = {
            zoom: 5,
            scrollwheel: false,
            center: latlng,
            mapTypeControl: true,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
            },
            navigationControl: true,
            navigationControlOptions: {
                style: google.maps.NavigationControlStyle.SMALL
            },
            styles: styles
        };
        map = new google.maps.Map(document.getElementById('google-maps'), myOptions);
        var marker = new google.maps.Marker({
          position: latlng,
          map: map,
          icon: 'img/logo/mapimg.jpg'
        });
    }
</script>
  </body>
</html>