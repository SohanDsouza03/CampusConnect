<%@ page import="java.util.*,model.*,dao.*" %>

<%
User user = (User)session.getAttribute("user");

if(user==null){
    response.sendRedirect("login.jsp");
    return;
}

ComplaintDAO dao = new ComplaintDAO();

List<Complaint> list = dao.getComplaintsByUserId(user.getId());
%>

<!DOCTYPE html>

<html>

<head>

<title>My Complaints</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#eef2f7;
}

.container{
margin-top:50px;
}

.card{
border-radius:15px;
box-shadow:0px 0px 15px rgba(0,0,0,0.15);
}

</style>

</head>

<body>

<div class="container">

<div class="card">

<div class="card-header bg-primary text-white">

<h3>My Complaints</h3>

</div>

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Title</th>

<th>Description</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<%

for(Complaint c : list){

%>

<tr>

<td><%=c.getId()%></td>

<td><%=c.getTitle()%></td>

<td><%=c.getDescription()%></td>

<td>

<%

if(c.getStatus().equals("Pending")){

%>

<span class="badge bg-warning text-dark">

Pending

</span>

<%

}else{

%>

<span class="badge bg-success">

Resolved

</span>

<%

}

%>

</td>

</tr>

<%

}

%>

</tbody>

</table>

<a href="dashboard.jsp" class="btn btn-secondary">

← Back

</a>

</div>

</div>

</div>

</body>

</html>