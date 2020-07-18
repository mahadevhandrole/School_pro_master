<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ADD SOCIETY </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

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
                <h3>Add Society</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                              <button class="btn btn-default" type="button">Go!</button>
                          </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Society Details</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                 
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form action="../Add_Society_Servlet" id ="form1" method="post" class="form-horizontal form-label-left" novalidate>

                     
                       <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps" style="color:green">
                        <li>
                          <a href="#step-1" >
                            <span class="step_no" >1</span>
                            <span class="step_descr">
                                              Step 1<br />
                                              <small>Step 1 description</small>
                                          </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no" >2</span>
                            <span class="step_descr">
                                              Step 2<br />
                                              <small>Step 2 description</small>
                            </span>
                          </a>
                        </li>
                        
      					<li>
                          <a href="#step-3">
                            <span class="step_no" >3</span>
                            <span class="step_descr">
                                              Step 3<br />
                                              <small>Step 3 description</small>
                            </span>
                          </a>
                        </li>
                      </ul>
                    <div id="step-1">
                        <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="name">Name <span class="required">*</span>
                       
                        <span class="fa fa-institution" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="name" class="form-control" data-validate-length-range="6" data-validate-words="2" name="society_name" required="required" type="text">
                        </div>
                      </div>
                          
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="email">Email <span class="required">*</span>
                       <span class="fa fa-envelope-square" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="email" id="email" name="society_email" required="required" class="form-control">
                      
                        </div>
                      </div>
                          <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="telephone">Telephone <span class="required">*</span>
                        <span class="fa fa-phone" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="tel" id="telephone" name="society_telephone" required="required" data-validate-length-range="8,20" class="form-control">
                        </div>
                      </div>
                      
                           <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="website">Website URL <span class="required">*</span>
                        <span class="fa fa-globe" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="url" id="website" name="society_website" required="required"  class="form-control">
                        </div>
                      </div>
                            <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="contact_person">Contact Person<span class="required">*</span>
                       
                        <span class="fa fa-user" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="name" class="form-control" data-validate-length-range="6"  name="society_contact_person" placeholder="" required="required" type="text">
                        </div>
                      </div>

 
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="contact_person_contact_number">Contact Person Contact Number <span class="required">*</span>
                       <span class="fa fa-phone" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="tel" id="telephone" name="society_contact_person_number" required="required" data-validate-length-range="8,20" class="form-control">
                        </div>
                      </div>
                      
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="textarea">Address<span class="required">*</span>
                        <span class="fa fa-building" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <textarea id="textarea" required="required" name="society_address" class="form-control"></textarea>
                        </div>
                      </div>
              	</div>
        
                <div id="step-2">
                       
                       <div class="item form-group">
                     <label class="col-form-label col-md-3 col-sm-3 label-align" for="Registration Year">Registration Year <span class="required">*</span>
                        <span class="fa fa-calendar" aria-hidden="true"></span>
                        </label>
                       
                        
                        
                    <div class="col-md-6 col-sm-6">
                        <div class='input-group date' id='myDatepicker2'>
                            <input type='text'  name="society_registration_year" class="form-control" class="required">
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                      
                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="registration number">Registration Number <span class="required">*</span>
                       <span class="fa fa-file-text-o" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="number" name="society_registration_number" required="required"  class="form-control">
                        </div>
                      </div>  
                      
                     <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="Office Number">Office Number <span class="required">*</span>
                       <span class="fa fa-suitcase" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="number" name="society_office_number" required="required"  class="form-control">
                        </div>
                      </div>  
                    
                               <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="u-dise number">U-DISE Number <span class="required">*</span>
                       <span class="fa fa-file-text-o" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="number" name="society_udise_number" required="required"  class="form-control">
                        </div>
                      </div>
                      
                       <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="number_of_schools">Total Number of Schools<span class="required">*</span>
                       <span class="fa fa-book" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="number"  name="total_number_of_schools" required="required"  class="form-control">
                        </div>
                      </div>
                      
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="number_of_schools">Number of Schools for Registration<span class="required">*</span>
                       <span class="fa fa-book" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input type="number" name="number_of_schools" required="required"  class="form-control">
                        </div>
                      </div>
                     
                </div>
                      
               <div id="step-3">
                       

                 <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="name">UserId <span class="required">*</span>
                       
                        <span class="fa fa-user" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                          <input id="user" class="form-control"  name="society_userid" required="required" type="text">
                        </div>
                      </div>    
                      
                       
                      
                       
                      <div class="item form-group">
                        <label for="password" class="col-form-label col-md-3 label-align">Password
                         <span class="required">*</span>
                        <span class="fa fa-key" aria-hidden="true"></span></label>
                        <div class="col-md-6 col-sm-6">
                          <input id="password" type="password" name="society_password" data-validate-length="6,8" class="form-control" required="required">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label for="password2" class="col-form-label col-md-3 col-sm-3 label-align ">Conform Password
                         <span class="required">*</span>
                        <span class="fa fa-key" aria-hidden="true"></span></label>
                        <div class="col-md-6 col-sm-6">
                          <input id="password2" type="password" name="society_c_password"  data-validate-length="6,8"  class="form-control" required="required">
                        </div>
                      </div>
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 offset-md-3" align="center">
                           
                          <button id="send" type="submit" class="btn btn-success" >Submit</button>
                          <button type="submit" class="btn btn-primary">Cancel</button>
                           </div>
                          
                     </div>
					</div>
				</div>
                      </form>
                      </div>
                      </div>
                                 
             
                  </div>
                </div>
              </div>
            </div>
      </div>
      </div>
      
        
        
       
                <!-- /page content -->
                
                
                
                
                
                

        <!-- footer content -->

        <div>
          
             <jsp:include page="../Common_Files/Footer.jsp"/>
           
         </div>
        
          
        <!-- /footer content -->
      
   

     <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    
      <!-- jQuery Smart Wizard -->
    <script src="../vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <!-- validator -->
    <script src="../vendors/validator/validator.js"></script>
     <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    
   
 <script src="../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
 
 
  

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

	
<script  type="text/javascript">
    
    $('#myDatepicker2').datetimepicker({
        format: 'DD.MM.YYYY'
    });
    
    
</script>

	
	
	
	
	
	
	

  </body>
</html>