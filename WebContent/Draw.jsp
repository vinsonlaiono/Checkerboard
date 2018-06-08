<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=ISO-8859-1>
	<title>Insert title here</title>
	
</head>
<body>

	
	<% int col = 0; %>
	<% int row = 0; %>
	
	<% String black = "<div style='height: 50px; width: 50px; background-color:blue;'></div>"; %>
	<% String red = "<div style='height: 50px; width: 50px; background-color:gold;'></div>"; %>
	
	
	<% if(request.getParameter("height") != null){
		row = Integer.parseInt(request.getParameter("height"));
	} %>
	
	<% if(request.getParameter("width") != null){
		col = Integer.parseInt(request.getParameter("width"));
	} %>
	
	<div style="margin: auto; text-align: center;">
	<h1 style="text-align: middle"> Warriors Checker Board: <%= row %>h X <%= col %>w</h1>
	
	<div style="margin: 900px; margin-top: 0px;">
	
	<% for(int i = 0; i < row; i++){ %>
		<% if(i%2 ==0) { %>
		<div style="display:flex;">
		<%	for(int j = 0; j < col; j++) { %>
			<%if(j%2==0) { %>
				<%=red%>
			<%} else { %>
				<%=black %>
			<% } %>
		<%} %>
		</div>
		<%} else { %>
			<div style="display:flex;">
			<%for(int j = 0; j < col; j++) { %>
				<%	if(j%2==0) { %>
					<%=black%> 
				<%} else { %>
					<%=red %>
				<%}%>
			<%}%>
			</div>
		<%}%>		
	<% } %>
	
	</div>
	</div>

</body>
</html>   