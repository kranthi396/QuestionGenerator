<!DOCTYPE html>
<html>

<head>
<title>UserPage</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/usercss.css">
<link rel="icon" href="Login/images">
</head>


<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color:white" href="#">USER</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<a class="navbar-brand" style="color:white" >QUESTION GENERATION</a>
				<ul class="nav navbar-nav navbar-right" >
					<li><a href="LoginPage.jsp" style="color:white">
					<span class="glyphicon glyphicon-log-out" ></span> Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container1 container2 container-fluid">
		<div class="row">
			<div class="column3">
				<a><button class="submit submit2"
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto;">ENTITY</button> </a>
			</div>
			<div id="id01" class="modal" style="color: baclk;">
				<form class="modal-content animate" method="post">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('id01').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
				</form>
			</div>
			<div class="column3">
				<a><button class="submit submit2"
						onclick="document.getElementById('id02').style.display='block'"
						style="width: auto;">CONCEPTS</button> </a>
			</div>
			<div id="id02" class="modal" style="color: baclk;">

				<form class="modal-content animate" method="post">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('id02').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
				</form>
			</div>
			<div class="column3">
				<a><button class="submit submit2"
						onclick="document.getElementById('id03').style.display='block'"
						style="width: auto;">OPEARATION</button> </a>
			</div>
			<div id="id03" class="modal" style="color: baclk;">

				<form class="modal-content animate" method="post">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('id03').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
				</form>
			</div>
		</div>
		<form method="post" class="form-fluid" style="width: 100%;">
			<div class="column">
				<div class="form-group group">
					<label for="prvTC" class="co">Private Test Cases:</label> <input
						type="text" class="form-control input-normal" id="prvTC"
						width="150" required="">
				</div>
				<div class="form-group group">
					<label for="pubTC" class="co">Public Test Cases:</label> <input
						type="text" class="form-control input-normal" id="pubTC"
						required="">
				</div>
				<div class="form-group group">
					<label for="noq" class="co">No. of Questions:</label> <input
						type="number" class="form-control input-normal" id="noq"
						required="">
				</div>
			</div>
			<div class="column">
				<div class="form-group group">
					<label for="Qoutput" class="co">Question Output:</label> <select
						class="form-control input-normal">
						<option>1</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>
				<div class="form-group group">
					<label for="Qpattern" class="co">Questions Pattern:</label> <select
						class="form-control input-normal">
						<option>1</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>
			</div>
			<div class="button1 column2">
				<input class="btn1 btn-info bb " type="submit" name="Submit"
					value=Submit>

			</div>
		</form>
	</div>

</body>
<script>
	// Get the modal
	var modal = document.getElementById('id01');
	var modal2 = document.getElementById('id02');
	var modal3 = document.getElementById('id03');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
	window.onclick = function(event) {
		if (event.target == modal2) {
			modal2.style.display = "none";
		}
	}
	window.onclick = function(event) {
		if (event.target == modal3) {
			modal3.style.display = "none";
		}
	}
</script>
</body>


</html>