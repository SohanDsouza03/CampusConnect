<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <title>CampusConnect - Student Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

    body{
        background:linear-gradient(135deg,#4F46E5,#7C3AED);
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
        font-family:'Poppins',sans-serif;
    }

    .login-card{
        width:420px;
        border:none;
        border-radius:20px;
        box-shadow:0 20px 45px rgba(0,0,0,.25);
        overflow:hidden;
    }

    .card-header{
        background:white;
        border:none;
        text-align:center;
        padding:30px 20px 10px;
    }

    .logo{
        font-size:34px;
        color:#4F46E5;
    }

    h2{
        font-weight:700;
        margin-top:10px;
    }

    .card-body{
        padding:30px;
    }

    .form-control{
        border-radius:12px;
        height:50px;
    }

    .btn-login{
        background:#4F46E5;
        color:white;
        border-radius:12px;
        height:48px;
        font-weight:600;
    }

    .btn-login:hover{
        background:#4338CA;
        color:white;
    }

    a{
        text-decoration:none;
    }

    </style>

</head>

<body>

<div class="card login-card">

    <div class="card-header">

        <i class="bi bi-mortarboard-fill logo"></i>

        <h2>CampusConnect</h2>

        <p class="text-muted">Student Login</p>

    </div>

    <div class="card-body">

        <form action="login" method="post">

            <div class="mb-3">

                <label class="form-label">
                    <i class="bi bi-envelope-fill"></i>
                    Email
                </label>

                <input
                type="email"
                name="email"
                class="form-control"
                placeholder="Enter your email"
                required>

            </div>

            <div class="mb-4">

                <label class="form-label">
                    <i class="bi bi-lock-fill"></i>
                    Password
                </label>

                <input
                type="password"
                name="password"
                class="form-control"
                placeholder="Enter your password"
                required>

            </div>

            <div class="d-grid">

                <button class="btn btn-login">

                    <i class="bi bi-box-arrow-in-right"></i>

                    Login

                </button>

            </div>

        </form>

        <hr>

        <div class="text-center">

            Don't have an account?

            <a href="register.jsp">
                Register
            </a>

        </div>

        <div class="text-center mt-3">

            <a href="index.jsp">

                <i class="bi bi-arrow-left"></i>

                Back to Home

            </a>

        </div>

    </div>

</div>

</body>
</html>