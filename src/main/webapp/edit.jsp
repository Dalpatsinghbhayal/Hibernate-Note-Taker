<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import ="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is edit page.</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class = "container" >
    	<%@ include file="navbar.jsp" %>
    	<br>
    	<h1>Edit your note</h1>
    	<%
    	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    	Session s = FactoryProvider.getFactory().openSession();

        Transaction tx = s.beginTransaction();

        Note note = s.get(Note.class, noteId);
    	%>
    	
    	<form action="UpdateServlet" method="post">
    	<input value = "<%= note.getId()%>" name ="noteId" type="hidden"/>
			<div class="form-group">
				<label for="exampleInputEmail1">Note title</label> 
				<input
					name="title"
					type="text" required
					class="form-control"
					 id="title"
					aria-describedby="emailHelp"
					 placeholder="Enter here"
					 value="<%= note.getTitle() %>"/> 
					 
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				name = "content";
				id="content" required
				placeholder="Enter your content here"
				class = "form-control"
				style = "height:300px">
				value="<%= note.getContent() %>"</textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save your note</button>
			</div>
			
		</form>
    </div>

</body>
</html>