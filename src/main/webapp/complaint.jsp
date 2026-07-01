<!DOCTYPE html>
<html>

<head>

<title>Raise Complaint</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#eef2f7;
}

.card{
margin-top:60px;
border-radius:15px;
box-shadow:0px 0px 20px rgba(0,0,0,0.15);
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card">

<div class="card-header bg-danger text-white text-center">

<h3>Raise Complaint</h3>

</div>

<div class="card-body">

<form action="complaint" method="post">

<div class="mb-3">

<label class="form-label">Complaint Title</label>

<input
type="text"
name="title"
class="form-control"
required>

</div>

<div class="mb-3">

<label class="form-label">Description</label>

<textarea
name="description"
rows="5"
class="form-control"
required></textarea>

</div>

<div class="d-grid">

<button class="btn btn-danger">

Submit Complaint

</button>

</div>

</form>

<hr>

<a href="dashboard.jsp" class="btn btn-secondary">

Back to Dashboard

</a>

</div>

</div>

</div>

</div>

</div>

</body>

</html>