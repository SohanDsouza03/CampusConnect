<%@ page import="model.User"%>

<%
User user = (User)session.getAttribute("user");

if(user==null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Raise Complaint</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
background:#f4f7fc;
font-family:'Poppins',sans-serif;
}

.navbar{
background:#4F46E5;
}

.card{
border:none;
border-radius:20px;
box-shadow:0 15px 35px rgba(0,0,0,.1);
}

.btn-purple{
background:#4F46E5;
color:white;
}

.btn-purple:hover{
background:#4338CA;
color:white;
}

.form-control{
border-radius:12px;
}

textarea{
resize:none;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<a class="navbar-brand fw-bold">

<i class="bi bi-mortarboard-fill"></i>

CampusConnect

</a>

<a href="dashboard.jsp" class="btn btn-light">

Dashboard

</a>

</div>

</nav>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card p-5">

<h2 class="text-center mb-4">

<i class="bi bi-megaphone-fill text-primary"></i>

Raise Complaint

</h2>

<form action="complaint" method="post">

<div class="mb-3">

<label class="form-label">

Complaint Title

</label>

<input
type="text"
name="title"
class="form-control"
placeholder="Enter complaint title"
required>

</div>

<div class="mb-4">

<label class="form-label">

Complaint Description

</label>

<textarea
name="description"
class="form-control"
rows="5"
placeholder="Describe your complaint..."
required></textarea>

</div>

<div class="d-grid">

<button class="btn btn-purple btn-lg">

<i class="bi bi-send-fill"></i>

Submit Complaint

</button>

</div>

</form>

<hr>

<div class="text-center">

<a href="dashboard.jsp">

<i class="bi bi-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

</div>

</div>

</div>

</body>

</html>