<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Dao.Add_Shift_Dao_Interface" %>
<%@ page import="com.Dao.Add_Shift_Dao_Class" %>
<%@ page import="com.Bean.Add_Shift_Bean" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Add_Shift_Dao_Interface ASD = new Add_Shift_Dao_Class();
String shift_id = request.getParameter("shift_id");
int a= Integer.parseInt(shift_id);
Add_Shift_Bean ASB = ASD.getShift_Id(a);


%>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ADD SHIFT </title>

    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
     <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

   
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="../vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    
    
   
    <link href="../build/css/custom.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    
  
  </head>

  <body class="nav-md">

  <jsp:include page="../Common_Files/Left_Scroll_with_dashboard.jsp"/>
  
  
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
        
            <div class="page-title">
              <div class="title_left">
                <h3>Add Sections</h3>
                             </div>
            </div>
            
            
  
            <div class="clearfix"></div>
					 <form action="../Update_Shift_Servlet" method="post" class="form-horizontal form-label-left" novalidate>
		              
                 
                <div class="col-md-0 col-sm-0">
                          <input  class="form-control"  type="hidden" name="id1"  value="<%= a %>"  required="required" type="text">
                        </div>  
                        
                        
                      
                        
                        
                    <div class="item form-group">
                    
                    
                    	   
                        
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="contact_person">Shift<span class="required">*</span>
                       
                        <span class="fa fa-user" aria-hidden="true"></span>
                        </label>
                         <div class="col-md-3 col-sm-3">
                          <input id="name" class="form-control"   name="shift_name" value="<%=ASB.getShift_name()%>"  required="required" type="text">
                        </div>
                       
                      
                       
						
						

						<div class="item form-group">                   
                       <label class="col-form-label col-md-12 col-sm-12 label-align" for="area"><b>Shift Timing</b><span class="required"></span>
                       <span class="fa fa-home" aria-hidden="true"></span>
                        </label>
						</div>
						  <div class="col-md-2 col-sm-12  form-group">
                        <div class='input-group date' id='myDatepicker3'>
                
                           <input type='text' name= "shift_start_time" value="<%=ASB.getShift_start_time() %>" class="form-control" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
                        </div>
                       
                
       				 <div class="col-md-2 col-sm-12  form-group">
                        <div class='input-group date' id='myDatepicker4'>
                
                           <input type='text' name="shift_end_time"  value="<%=ASB.getShift_end_time() %>" class="form-control" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
                        </div>

				
				</div>
				
				
				
				
                      <div class="form-group">
                        <div class="col-md-6 offset-md-3" align = "center">
                           <button type="submit" class="btn btn-primary" >Cancel</button>
                          <button id="send" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                      
                </form>
              
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
 
      <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-datetimepicker -->    
    <script src="../vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
 
 
 
     
      <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>

    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>

    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>

    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	
<script type="text/javascript">

$('#myDatepicker3').datetimepicker({
    format: 'hh:mm A'
});
$('#myDatepicker4').datetimepicker({
    format: 'hh:mm A'
});




</script>


  </body>
</html>

  



