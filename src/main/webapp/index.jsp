<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
    <title>Note TAke : Home Page</title>
    <%@ include file="all_js_css.jsp" %>
  </head>
  <body>
    <div class = "container" >
    	<%@ include file="navbar.jsp" %>
    	<br>
    	<div class="container mt-5">

    <div class="p-5 mb-4 bg-light rounded-3 shadow">

        <div class="container-fluid py-5 text-center">

            <h1 class="display-4 fw-bold text-primary">
                Welcome to Note Taker
            </h1>

            <p class="fs-5">
                Manage your notes easily using Hibernate, JSP and MySQL.
            </p>

            <a href="add_notes.jsp" class="btn btn-success btn-lg">
                Add Note
            </a>

            <a href="all_notes.jsp" class="btn btn-primary btn-lg">
                Show Notes
            </a>

        </div>

    </div>

</div>
    </div>
  </body>
</html>