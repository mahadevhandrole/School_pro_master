<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="com.Bean.Add_School_Bean"%>
<%@page import="com.Bean.Add_Shift_Bean"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.SelectCheckboxDao"%>
<%@page import="com.Dao.SelectShiftDao"%>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ADD SECTION </title>

    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
     <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">

   

    
    
   
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    
  
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
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Add Sections</h3>
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
                    <h2>Sections Details</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                 
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <form action="../Add_Section_Servlet" id ="form1" method="post" class="form-horizontal form-label-left" novalidate>
 
							<div class="col-md-6 col-sm-12  form-group">
                        <label class="control-label col-md-3 col-sm-3 "><b>Sections</b><span class="required">*</span></label>
                        <div class="col-md-9 col-sm-9 ">
                          <select class="form-control" >
                             <% 
                          SelectCheckboxDao selectcheckbox = new SelectCheckboxDao();
                          List<Add_School_Bean> studentbean1 = selectcheckbox.Select_Section();
                        
                          String Section="";
                          
                          
                          for (Add_School_Bean m: studentbean1)
                          {
                        	  Section = m.getSections();
                        	  
                        	  System.out.println("''''''''''''''''''Section Name''''''''''"+Section);
                          %>
                            <option><%=m.getSections() %></option>
                           <%  }%>
                          </select>
                        </div>
                      </div>
                      
                      
                        <div class="col-md-6 col-sm-12  form-group">
                        <label class="control-label col-md-3 col-sm-3"><b>Standard</b> <span class="required">*</span>
                        </label>
                        <div class="col-md-9 col-sm-9 ">
                          <input id="name" class="form-control"  name="standard" required="required" type="text">
                        </div>
                      </div>
                      
                      
              
                        
             <div class="col-md-6 col-sm-12  form-group">
                   
                        <label class="control-label col-md-3 col-sm-3 "><b>Divisions</b> <span class="required">*</span></label>
                        <div class="col-md-9 col-sm-9 ">
                          <input id="tags_1" type="text" class="form-control" name="divisions" />
                          <div id="suggestions-container" ></div>
                        </div>
               
           </div>
           
           
          
                  	     <div class="col-md-6 col-sm-12  form-group">
                   
                        <label class="control-label col-md-3 col-sm-3 "><b>Shift</b> <span class="required">*</span></label>
                        
                      <div class="col-md-9 col-sm-9 ">
                          <select class="form-control" >
                             <% 
                             SelectShiftDao selectshiftdao = new SelectShiftDao();
                             List<Add_Shift_Bean> shiftbean = selectshiftdao.Select_Shift();
                             
                             String Shift="";
                             for (Add_Shift_Bean m1: shiftbean)
                             {
                            	 
                            	Shift = m1.getShift_name();
                             System.out.println("''''''''''''''''''Shift Name''''''''''"+Shift);
                             
                            %>
                            <option><%=m1.getShift_name()%></option>
                          <%  }%>
                          </select>
                        </div>  
             
             
             
           </div>   
                        
                        
               
              <div class="col-md-6 col-sm-12  form-group">
                <label class="control-label col-md-3 col-sm-3 "><b>Medium</b> <span class="required">*</span></label>
                   <div class="col-md-9 col-sm-9 ">
                   <div class="radio">
                  
                            <label>
                              <input type="radio" class="flat" name="iCheck" value="English"> English
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck" value="Semi-English"> Semi-English
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck" value="Marathi" > Marathi
                            </label>
                          </div>
                          
                  
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="iCheck" value="Urdu" >Urdu
                            </label>
                          </div>	
                        </div> 
                        </div>  
                      
                
                     
                     
                              
                  
                                 
                          
                       <div class="form-group">
                        <div class="col-md-6 offset-md-3" align="center">
                           
                          <button id="send" type="submit" class="btn btn-success" >Submit</button>
                          <button class="btn btn-primary" type="reset">Reset</button>
                           </div>
                          	
                      </div>
                      
                       <div class="form-group">
                        <div class="col-md-6 offset-md-12">
                       		<button type="button" class="btn btn-info" onclick="ViewTable()" >Info</button> 
					  </div> 
					</div>

                      </form>
                
      </div>
      </div>
      
        
        
         <div id="div1" style=visibility:hidden>
         
         <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Bordered table <small>Bordered table subtitle</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                     
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Username</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td>@mdo</td>
                        </tr>
                        <tr>
                          <th scope="row">2</th>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td>@fat</td>
                        </tr>
                        <tr>
                          <th scope="row">3</th>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td>@twitter</td>
                        </tr>
                      </tbody>
                    </table>

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

    <script src="../vendors/iCheck/icheck.min.js"></script>
    
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

function ViewTable()
{
document.getElementById("div1").style.visibility="visible";
}

</script>


  </body>
</html>
