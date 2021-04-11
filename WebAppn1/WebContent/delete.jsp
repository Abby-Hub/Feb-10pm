<%@page import="com.service.EmployeeServiceImpl"%>
<%@page import="com.service.EmployeeService"%>
<%@page import="com.bean.Employee"%>
<jsp:include page="header.jsp"></jsp:include>

<br><bR><br>
  <center>
   		<form>
   		    <input type="text" name= id placeholder="Enter Emp Id" /> <bR><br>
   		    
   		    <input type="submit" value="Delete"/> <bR><br>
   		</form>
   		
   		<%
   	 if(request.getParameter("id") != null ){
  		int id =  Integer.parseInt(request.getParameter("id"));
  		  			
  		EmployeeService service = new EmployeeServiceImpl();
  		boolean flag = service.delete(id);
  		if(flag)
  			out.print(id + " Employee Data Deleted...");
  		else
  			out.print(id+" Employee Data Not Found... Kindy Contact Admin Dept...");
         }
   		
   		%>
   		
   </center>
    
    
<br><bR><br>    
<jsp:include page="footer.jsp"></jsp:include>