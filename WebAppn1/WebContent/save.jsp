<%@page import="com.service.EmployeeServiceImpl"%>
<%@page import="com.service.EmployeeService"%>
<%@page import="com.bean.Employee"%>
<jsp:include page="header.jsp"></jsp:include>

<br><bR><br>
   <center>
   		<form>
   		    <input type="text" name= id /> <bR><br>
   		    <input type="text" name= name /> <bR><br>
   		    <input type="text" name= salary /> <bR><br>
   		    <input type="submit" value="Save"/> <bR><br>
   		</form>
   		
   		<%
   	 if(request.getParameter("id") != null && request.getParameter("name") != null && request.getParameter("salary") != null){
  		int id =  Integer.parseInt(request.getParameter("id"));
  		String name =  request.getParameter("name");
  		float salary =Float.parseFloat(request.getParameter("salary"));
  		
  		Employee emp = new Employee();
  		emp.setId(id);
  		emp.setName(name);
  		emp.setSalary(salary);
  		
  		EmployeeService service = new EmployeeServiceImpl();
  		boolean flag = service.save(emp);
  		if(flag)
  			out.print("Employee Data Inserted...");
  		else
  			out.print("Employee Data Not Inserted... Kindy Contact Admin Dept...");
         }
   		
   		%>
   		
   </center>
    
<br><bR><br>    
<jsp:include page="footer.jsp"></jsp:include>