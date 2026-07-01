<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<title>Campus Connect - Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f4f7fc;
}

.card{
margin-top:50px;
border-radius:15px;
box-shadow:0px 0px 20px rgba(0,0,0,0.15);
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card">

<div class="card-header bg-success text-white text-center">

<h3>Campus Connect</h3>

<p>Student Registration</p>

</div>

<div class="card-body">

<form action="register" method="post">

<div class="mb-3">

<label>Full Name</label>

<input
type="text"
name="fullname"
class="form-control"
required>

</div>

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

<button class="btn btn-success">

Register

</button>

</div>

</form>

<hr>

<div class="text-center">

Already have an account?

<a href="login.jsp">

Login Here

</a>

</div>

</div>

</div>

</div>

</div>

</div>

</body>

</html>