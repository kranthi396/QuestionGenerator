<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="css/main1.css">
<link rel="stylesheet" href="css/main.css">

</head>
<body>
	<section class="login-block">
		<div class="cont container container-fluid">
			<div class="row">
				<div class="col login-sec">
					<h2 class="text-center">Login</h2>
					<form method="get" class="form-fluid form-group"
						style="width: 100%;" action="LoginServlet">
						<div class="form-group group">
							<label for="user" class="co">Username</label> <input type="text"
								class="form-control input-normal" id="user" name="un"
								placeholder="Username">
						</div>

						<div class="textboxtop form-group group">
							<label for="pass" class="co">Password</label> <i
								class="far fa-eye" id="togglePassword"></i><input
								type="password" class="form-control input-normal" name="pw"
								id="password" placeholder="Password">
						</div>
						<button type="submit" class="btn btn-info bb">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
<script src="js/main.js"></script>
</html>
-->
<html>
<head>
<title>Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/login.css">

<!------ Include the above in your HEAD tag ---------->
</head>
<body>
	<div class="sidenav">
         <div class="login-main-text">
            <h1>Java Question Generator<br> Login Page</h1>
            <p>Login from here to access.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-4 col-sm-12">
            <div class="login-form">
               <form action="LoginServlet">
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" class="form-control" placeholder="User Name"  name="un">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" placeholder="Password" name="pw">
                  </div>
                  <button type="submit" class="btn btn-black">Login</button>
                  
               </form>
            </div>
         </div>
      </div>
</body>
</html>