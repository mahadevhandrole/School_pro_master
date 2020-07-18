<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>School Registartion</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
 <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
     <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="../vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
  </head>

  <body class="nav-md">

  <jsp:include page="../Common_Files/Left_Scroll_Menu.jsp"/>
  
  
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
           
           
          
           
           
                </div>
              
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
             
             
             
             
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                
                  <jsp:include page="../Common_Files/header.jsp"/>
          
                
                
                </div>
          </div>
        <!-- /top navigation -->

        <!-- page content -->  
 <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>School Registration Form</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 form-group pull-right top_search">
                  <div class="input-group">
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>School Details</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                 
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

           	 <form action="../Add_School_Servlet" method="post" class="form-horizontal form-label-left" novalidate>
            	 <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="name">School Name <span class="required">*</span>
                            
                            
               <span class="fa fa-institution" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="name" name= "school_name" class="form-control" data-validate-length-range="6" data-validate-words="2" name="school_name" placeholder="School Name" required="required" type="text">
                          
                        </div>
                     </div>
                        
                        
                        
                        
                        
             <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="Registartion Number">Registration Number <span class="required">*</span>
                       <span class="fa fa-suitcase" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="registartion_number" name="school_registartion_number" required="required" data-validate-length-range="8,20" class="form-control" type="text">
                        </div>
                      </div>           
                        
                        
                        
                        <div class="item form-group">
                     <label class="col-form-label col-md-3 col-sm-3 label-align" for="Registration Year">Registration Year <span class="required">*</span>
                        <span class="fa fa-calendar" aria-hidden="true"></span>
                        </label>
                  
						                        
                        
                    <div class="col-md-6 col-sm-6">
                        <div class='input-group date' id='myDatepicker2'>
                            <input type="text"  name="school_registration_year" class="form-control has-feedback-right" class="required">
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                    
                        
                        
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="email">Email <span class="required">*</span>
                       <span class="fa fa-envelope-square" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="email" id="email" name="school_email" required="required" class="form-control">
                      
                        </div>
                      </div>
                      
                      
                      
                    <div class="item form-group">
                     <label class="col-form-label col-md-3 col-sm-3 label-align" for="pincode">Pin Code <span class="required"></span>
                        <span class="fa fa-circle" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <input type="number" id="pin code" name="school_pincode" required="required" class="form-control ">
                        </div> 
                        </div>  
                        
                        
                        
                    <div class="item form-group">                    
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="area">Area<span class="required"></span>
                       <span class="fa fa-home" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <select id="area" name="school_area" required="required" class="form-control"  type="text" selected="">
                           <option> </option>
                            <option>Hadapsar</option>
                      		<option>Kalepadal</option>
                      		<option>Manajri</option>
                      		</select>
                        </div>
                      </div> 
                        
              
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="city">City <span class="required"></span>
                       <span class="fa fa-home" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="city" name="school_city" required="required" class="form-control" type="text">
                        </div>
                      </div>
                      
                      
                      
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="state">State <span class="required"></span>
                       <span class="fa fa-globe" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="state" name="school_state" required="required" class="form-control"  type="text">
                      
                        </div>
                      </div>
                     
 				         

				            
             		
            <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="telephone">Telephone <span class="required"></span>
                        <span class="fa fa-phone" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="tel" id="telephone" name="school_telephone" required="required" data-validate-length-range="8,20" class="form-control">
                        </div>
                      </div>
                      
                      
                      
                      
                      
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="telephone">Phone Number<span class="required"></span>
                        <span class="fa fa-mobile" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="number" id="phone" name="school_mobile" required="required" data-validate-length-range="8,20" class="form-control">
                        </div>
                      </div>
                    
                    
                      
                      
                      
                      <div class="item form-group">
                    
                       <label class="col-form-label col-md-3 col-sm-3 label-align" for="section" name="sections">Sections<span class="required">*</span></label>
								
									<p style="padding: 5px;">
										
										<input type="checkbox" name="sections" id="sec1"
											value="Pri-Primary" 
											class="flat"> Pre-Primary  
																				
										
										 
											
										<input type="checkbox" name="sections" id="sec2"
											value="Primary" class="flat" /> Primary 
										
										
										
																			
										<input type="checkbox" name="sections" id="sec3"
											value="Secondary" class="flat" /> Secondary
									
										
										
										
											<input type="checkbox" name="sections" id="sec4"
											value="High-Secondary" class="flat"/> High-Secondary
											
																		
                        </p>
                        </div>
					
					<div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 offset-md-3" align = "center">
                           <button type="submit" class="btn btn-primary" >Cancel</button>
                          <button id="send" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                   </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        
                <!-- /page content -->
                
                
                
                
                
                

        <!-- footer content -->

       <!--    <div>
          
             <jsp:include page="../Common_Files/Footer.jsp"/>
           
         </div>
        -->
          
        <!-- /footer content -->
      
   

     <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>
     <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
   
 <script src="../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
 
 
  <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

	
<script  type="text/javascript">

    
    $('#myDatepicker2').datetimepicker({
        format: 'DD.MM.YYYY'
    });
    
   
</script>

	
	
	
	
	
	
	

  </body>
</html>
