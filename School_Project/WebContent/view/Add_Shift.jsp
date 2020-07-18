

<%@page import="com.Bean.Add_School_Bean"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.SelectCheckboxDao"%>
<%@ page import="com.Dao.Add_Shift_Dao_Interface" %>
<%@ page import="com.Dao.Add_Shift_Dao_Class" %>
<%@ page import="com.Bean.Add_Shift_Bean" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>


<html lang="en">
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
        
            <div class="page-title">
              <div class="title_left">
                <h3>Add Shift</h3>
              </div>
            </div>
            
            
  
  
  
            <div class="clearfix"></div>
					 <form action="../Add_Shift_Servlet" method="post" class="form-horizontal form-label-left" novalidate>
		         
		         
		     <div class="col-md-3 col-sm-6  form-group">
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
                      
		         
		
		              
                 <div class="item form-group">
                 
                         <label class="col-form-label col-md-2 col-sm-3 label-align" for="contact_person"><b>Shift Name</b><span class="required">*</span>
                       
                        <span class="fa fa-user" aria-hidden="true"></span>
                        </label>
                        <div class="col-md-3 col-sm-3">
                          <input id="shift_name" class="form-control"   name="shift_name"  required="required" type="text">
                          
                           
                          
                          
                        </div>
                      
                       
						
						

						<div class="item form-group">                   
                       <label class="col-form-label col-md-12 col-sm-12 label-align" for="area"><b>Shift Timing</b><span class="required"></span>
                       <span class="fa fa-home" aria-hidden="true"></span>
                        </label>
						</div>
						
						
							  <div class="col-md-2 col-sm-10  form-group">
                        <div class='input-group date' id='myDatepicker3'>
                
                           <input type='text' name= "shift_start_time" placeholder="FROM" class="form-control" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
                        </div>
                       
						
						
						 <div class="col-md-2 col-sm-10  form-group">
                        <div class='input-group date' id='myDatepicker4'>
                
                           <input type='text' name="shift_end_time" placeholder="TO" class="form-control" />
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
                
                
                
                  <div class="form-group">
                        <div class="col-md-2 offset-md-12">
                       		<button type="button" class="btn btn-info" onclick="ViewTable()" >Info</button> 
					  </div> 
					</div>
                
                
                
         <div id="div1" style=visibility:hidden>
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    
                    <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                       
                         <thead>
                            <tr>
                            
                          	<th>Shift Id</th>
                            <th>Shift Name</th>
                            <th>Shift Start Time</th>
                            <th>Shift End Time</th>
                            <th align="right">Action</th>
                           
                                            
                          </tr>
                       </thead>
                          


                      <tbody>
                        <%
                           	int i,j;
                           	int a=0;
                           Add_Shift_Dao_Class d = new Add_Shift_Dao_Class();
                           
                           ArrayList<Add_Shift_Bean> ASB = d.getAllRecords();
                           
                           for(Add_Shift_Bean add_shift_bean : ASB)
                           {
                        	%>
                        	
                        	<% i=add_shift_bean.getShift_Id();
                        	 j=add_shift_bean.getShift_Id();
                        		a++;
                        	%>
                        	
           
                        	<td><%=a %></td>
                            <td><%=add_shift_bean.getShift_name() %></td>
                            <td><%=add_shift_bean.getShift_start_time() %></td>
                            <td><%=add_shift_bean.getShift_end_time() %></td>
                         	
                          <td>
                           <a href="../Add_Shift_Servlet?shift_id=<%=i %>"class="btn btn-danger btn-s"><i class="fa fa-trash-o"></i> </a>
                           <a href="Update_Shift.jsp?shift_id=<%=j %>"class="btn btn-warning"><i class="fa fa-edit"></i> </a>
                           </td>  
                            
               
                            
                          </tr>
                        <%} %>
                       
                       
                       </tbody>                    </table>
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
	
	    <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
	
	
	
<script type="text/javascript">

$('#myDatepicker3').datetimepicker({
    format: 'hh:mm A'
});
$('#myDatepicker4').datetimepicker({
    format: 'hh:mm A'
});

function ViewTable()
{
document.getElementById("div1").style.visibility="visible";
}





</script>

  </body>
</html>

  