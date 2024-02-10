<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lodging Reservation System</title>
 <style>
    .container {
      margin-top: 5px;
    }
  </style>
  <style>
    .logo {
      position: relative;
      animation: slideRight 12s infinite linear;
    }

    @keyframes slideRight {
      0% {
        left: -50px;
      }
      50% {
        left: calc(50% + 50px);
      }
    }
  </style>
</head>
<body>
<%@ include file="nav2.jsp" %>

<div class="container">
<h4 class="text-center">Welcome to Lodging Reservation System</h4>
<br>
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h3 class="card-header bg-dark text-light">Login</h3>
               <hr>
          <form action="controller.jsp" method="post">
            <div class="mb-3">
              <label for="loginEmail" class="form-label">Email Address</label>
              <input type="email" class="form-control" id="loginEmail" aria-describedby="emailHelp" name="inEmail" required>
            </div>
            <div class="mb-3">
              <label for="loginPassword" class="form-label">Password</label>
              <input type="password" class="form-control" id="loginPassword" name="inPass" required>
            </div>
             <input type="hidden" name="action" value="login">
            <button type="submit" class="btn btn-success">Login</button>
          </form>
        </div>
      </div>
    </div>
    
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h3 class="card-header bg-dark text-light">Create Account</h3>
          <hr>
          <form action="controller.jsp" method="post">
            <div class="mb-3">
              <label for="registerName" class="form-label">Full Name</label>
              <input type="text" class="form-control" id="registerName" name="regName" required>
            </div>
            <div class="mb-3">
              <label for="registerEmail" class="form-label">Email address</label>
              <input type="email" class="form-control" id="registerEmail" aria-describedby="emailHelp" name="regEmail" required>
            </div>
            <div class="mb-3">
              <label for="registerPassword" class="form-label">Password</label>
              <input type="password" class="form-control" id="registerPassword" name="regPass" required>
            </div>
              <input type="hidden" name="action" value="register">
            <button type="submit" class="btn btn-success">Register</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<hr>
<div class="container">
  <div class="row">
    <div class="col">
    
    </div>
  </div>
  <div class="row">
    <div class="col">
      <img src="https://upload.wikimedia.org/wikipedia/commons/1/19/OYO_Rooms_%28logo%29.png" width="50" height="50" alt="Logo" class="logo">&nbsp;
      <img src="https://play-lh.googleusercontent.com/-3i67iVwdx5jxeFfYnqaDuIp76tWOA36mr0Nd6oHxcOpzgRl0pjCpVFeYsNZERqtd-w=s256-rw" width="50" height="50" alt="Logo" class="logo">&nbsp;
       <img src="https://d3lzcn6mbbadaf.cloudfront.net/media/details/air_indfia.jpg" width="50" height="50" alt="Logo" class="logo">&nbsp;
        <img src="https://cdn.dribbble.com/users/45617/screenshots/4898119/indigo02_still_2x.gif?resize=400x300&vertical=center" width="50" height="50" alt="Logo" class="logo">&nbsp;
         <img src="https://media.united.com/assets/m/cc552e3afece72b/original/logo_partner_VISTARA_272x272-br.png" width="50" height="50" alt="Logo" class="logo">&nbsp;
         <img src="https://upload.wikimedia.org/wikipedia/commons/1/19/OYO_Rooms_%28logo%29.png" width="50" height="50" alt="Logo" class="logo">&nbsp;
      <img src="https://play-lh.googleusercontent.com/-3i67iVwdx5jxeFfYnqaDuIp76tWOA36mr0Nd6oHxcOpzgRl0pjCpVFeYsNZERqtd-w=s256-rw" width="50" height="50" alt="Logo" class="logo">&nbsp;
       <img src="https://d3lzcn6mbbadaf.cloudfront.net/media/details/air_indfia.jpg" width="50" height="50" alt="Logo" class="logo">&nbsp;
        <img src="https://upload.wikimedia.org/wikipedia/commons/1/19/OYO_Rooms_%28logo%29.png" width="50" height="50" alt="Logo" class="logo">&nbsp;
      <img src="https://play-lh.googleusercontent.com/-3i67iVwdx5jxeFfYnqaDuIp76tWOA36mr0Nd6oHxcOpzgRl0pjCpVFeYsNZERqtd-w=s256-rw" width="50" height="50" alt="Logo" class="logo">&nbsp;
       
    </div>
  </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>