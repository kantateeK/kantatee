<html>
<head>
<meta charset="tis-620">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
  
<title>โปรแกรมระบบคุมงบการเงิน</title>

<!-- Bootstrap -->
<script src="{{asset('js/jq/j/jquery.min.js')}}"></script>
<script src="{{asset('js/jq/jquery.min.js')}}"></script>
<link href="{{asset('css/select2.min.css')}}" rel="stylesheet">
<link href="{{asset('css/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{ asset("/bower_components/AdminLTE/plugins/datepicker/datepicker3.css")}}" rel="stylesheet" type="text/css" />
<link href="{{asset('css/fontawesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{asset('css/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- iCheck -->

<link href="{{asset('css/build/css/custom.min.css')}}" rel="stylesheet">
<script>
  $(document).ready(function() {
    //Date picker
    $('#birthDate').datepicker({
      autoclose: true,
      format: 'yyyy/mm/dd'
    });

    $('#from').datepicker({
      autoclose: true,
      format: 'yyyy/mm/dd'
    });
    $('#to').datepicker({
      autoclose: true,
      format: 'yyyy/mm/dd'
    });
});
</script>




</head>
    <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
             
            </div>
            
       

            <div class="clearfix"></div>

            <!-- menu prof[ile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="{{asset('images/img.jpg')}}" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>โปรแกรมระบบคุม</span>
                <h2>ทะเบียนงบการเงินสหกรณ์และกลุ่มเกษตรกร</h2>
				  <span><พัฒนาโดย สตส.บร></span>
              </div>
            </div>
            <!-- /menu profile quick info -->
          
        

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>ข้อมูลทั่วไป</h3>
                <ul class="nav side-menu">

                  <li><a><i class="fa fa-home"></i> เมนูหลัก <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="create">บันทึกลงรับกระดาษทำการ</a></li>
                      <li><a href="check">บันทึกตรวจทานกระดาษทำการ</a></li>
                      <li><a href="untitled3.php">บันทึกผู้รับผิดชอบสหกรณ์</a></li>
					  <li><a href="untitled10.php">ตั้งค่ารายชื่อสหกรณ์</a></li>
					  <li><a href="untitled2.php">ตั้งค่าผู้สอบบัญชี</a></li>
                    </ul>
                  </li>
                                    
                 <li><a><i class="fa fa-bar-chart-o"></i> รายงาน <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chart.php">รายงานผลการปฏิบัติงาน(ภาพรวม)</a></li>
					   <li><a href="flot.php">รายงานผลการปฏิบัติงาน(รายสาย)</a></li>
                      
                    </ul>
                  </li>
                  

              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
     
            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
          </div>
        </div>
        
    
        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
              
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                
                
              </div></div>

   
       
            </div>
            </div>
              @yield('content')
              </div>
            
       
              </body>
               
			
       
      
          


            
    <!-- Bootstrap -->
    <script src="{{asset('css/bootstrap.min.js')}}"></script>
    <!-- FastClick -->
    <script src="{{asset('css/fastclick.js')}}"></script>
    <!-- NProgress -->
    <script src="{{asset('css/nprogress.js')}}"></script>
    <!-- bootstrap-progressbar -->
    <script src="{{asset('css/bootstrap-progressbar.min.js')}}"></script>
    <!-- iCheck -->
    <script src="{{asset('css/icheck.min.js')}}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{{asset('css/moment.min.js')}}"></script>
    <script src="{{asset('css/daterangepicker.js')}}"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="{{asset('css/bootstrap-wysiwyg.min.js')}}"></script>
    <script src="{{asset('css/jquery.hotkeys.js')}}"></script>
    <script src="{{asset('css/prettify.js')}}"></script>

    <!-- jQuery Tags Input -->
    <script src="{{asset('css/jquery.tagsinput.js')}}"></script>
    <!-- Switchery -->
    <script src="{{asset('css/switchery.min.js')}}"></script>
    <!-- Select2 -->
    <script src="{{asset('css/select2.full.min.js')}}"></script>
    <!-- Parsley -->

    <!-- Autosize -->
    <script src="{{asset('css/autosize.min.js')}}"></script>
    <!-- jQuery autocomplete -->
    <script src="{{asset('css/jquery.autocomplete.min.js')}}"></script>
    <!-- starrr -->
    <script src="{{asset('css/starrr.js')}}"></script>
    <!-- Custom Theme Scripts -->
    <script src="{{ asset ("/bower_components/AdminLTE/bootstrap/js/bootstrap.min.js") }}" type="text/javascript"></script>
    <script  src="{{ asset ("/bower_components/AdminLTE/plugins/datepicker/bootstrap-datepicker.js") }}" type="text/javascript" ></script>
    <script src="{{asset('css/build/js/custom.min.js')}}"></script>

    </html>
