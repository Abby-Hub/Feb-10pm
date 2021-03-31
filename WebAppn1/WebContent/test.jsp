<%-- <%@include file="header.jsp" %> --%>

<jsp:include page="header.jsp"></jsp:include>

<%@page import="java.sql.Connection" %>

<center>
 <h1><u> Arithmetic Operations </u></h1>
 
 <form>
    <input type=text name=n1 /> <br> <br>
    <input type=text name=n2 /> <br> <br>
    <input type=submit value=add />
 </form> 
 
 <%
        if(request.getParameter("n1") != null && request.getParameter("n2") != null){
 		String x =  request.getParameter("n1");
 		String y =  request.getParameter("n2");
 		int sum = add(Integer.parseInt(x), Integer.parseInt(y));
 		
 		if(sum != 0)
 			out.print("Result : "+ sum);
        }
 		
 %>
 
 <%!
      Connection con =null;
    public int add(int x , int y){
	 return x+y;
    }
 
   
 %>
 
 
 
 
 
 
</center> 
 
<%--  <%@include file="footer.jsp" %> --%>
<jsp:include page="footer.jsp"></jsp:include>
 
 
 
 
 