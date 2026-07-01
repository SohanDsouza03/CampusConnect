<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<title>Campus Connect - Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f4f7fc;
}

.card{
margin-top:80px;
border-radius:15px;
box-shadow:0px 0px 20px rgba(0,0,0,0.15);
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-5">

<div class="card">

<div class="card-header bg-primary text-white text-center">

<h3>Campus Connect</h3>

<p>Student Login</p>

</div>

<div class="card-body">

<form action="login" method="post">

<div class="mb-3">

<label>Email</label>

<input
type="email"
name="email"
class="form-control"
required>

</div>

<div class="mb-3">

<label>Password</label>

<input
type="password"
name="password"
class="form-control"
required>

</div>

<div class="d-grid">

<button class="btn btn-primary">

Login

</button>

</div>

</form>

<hr>

<div class="text-center">

<a href="register.jsp">

New Student? Register Here

</a>

</div>

</div>

</div>

</div>

</div>

</div>

</body>

</html>