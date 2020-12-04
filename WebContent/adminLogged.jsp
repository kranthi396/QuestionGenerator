
<%@page import="QuestionPackage.ConnectionManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page language="java"
	import="java.util.*,java.io.*,java.lang.ClassNotFoundException,java.io.IOException,java.sql.SQLException"%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/js/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/usercss.css">

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
				<a class="navbar-brand" href="#"style="color:white">ADMIN</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav nav1 navbar-nav">
					
					<a href="#home" class="active" style="color:white">Question Generation Tool</a>
				
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a style="color:white" href="LoginPage.jsp"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
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
					<h2>ENTITIES</h2>					
						<span
							onclick="document.getElementById('id01').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
					<div class="container"></div>

					<div class="container tablecont" style="background-color: #f1f1f1">
						<%
							try {

							Connection currentCon = ConnectionManager.getConnection();
							Statement stmt = currentCon.createStatement();
							String query = "Select * from entity";
							ResultSet rs = stmt.executeQuery(query);
						%>
						<table border=1 id="customers" align=center
							style="text-align: center; color: black;">
							<tr>
								<th>Entity ID</th>
								<th>Title</th>
								<th>Usage</th>
								<th>Last question Genrated Date</th>
							</tr>
							<%
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("entity_id")%></td>
								<td><%=rs.getString("title")%></td>
								<td><%=rs.getString("usage")%></td>
								<td><%=rs.getString("last_qust_gn_date")%></td>
							</tr>
							<%
								}
							%>
						</table>
						<%
							} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						}
						%>
					</div>
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>

				</form>

			</div>

			<div class="column3">
				<a><button class="submit submit2"
						onclick="document.getElementById('id02').style.display='block'"
						style="width: auto;">CONCEPTS</button> </a>
				<!-- 			<a href="concepts.jsp"><button class="submit submit2"> CONCEPTS</button></a> -->
			</div>
			<div id="id02" class="modal" style="color: baclk;">

				<form class="modal-content animate" method="post">
					<div class="imgcontainer">
					<h2>CONCEPTS</h2>
						<span
							onclick="document.getElementById('id02').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
					<div class="container"></div>

					<div class="container tablecont" style="background-color: #f1f1f1">
						<%
							try {
							Connection currentCon = ConnectionManager.getConnection();
							Statement stmt = currentCon.createStatement();
							String query = "Select * from CONCEPT";
							ResultSet rs = stmt.executeQuery(query);
						%>
						<table border=1 id="customers" align=center
							style="text-align: center; color: black;">
							<tr>
								<th>Concept ID</th>
								<th>Title</th>
								<th>Scenario Driven</th>
								<th>Entity Driven</th>
								<th>Operation Driven</th>
							</tr>
							<%
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("concept_id")%></td>
								<td><%=rs.getString("title")%></td>
								<td><%=rs.getString("Scenaro_driven")%></td>
								<td><%=rs.getString("Entity_driven")%></td>
								<td><%=rs.getString("operation_driven")%></td>
							</tr>
							<%
								
							}
							%>
						</table>
						<%
							} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						}
						%>
					</div>
					<button type="button"
						onclick="document.getElementById('id02').style.display='none'"
						class="cancelbtn">Cancel</button>

				</form>

			</div>
			<div class="column3">
				<a><button class="submit submit2"
						onclick="document.getElementById('id03').style.display='block'"
						style="width: auto;">OPEARATION</button> </a>
				<!-- 			<a href="concepts.jsp"><button class="submit submit2"> CONCEPTS</button></a> -->
			</div>
			<div id="id03" class="modal" style="color: baclk;">

				<form class="modal-content animate" method="post">
					<div class="imgcontainer">
					<h2>OPEARATION</h2>
						<span
							onclick="document.getElementById('id03').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
					<div class="container"></div>

					<div class="container tablecont" style="background-color: #f1f1f1">
						<%
							try {
							Connection currentCon = ConnectionManager.getConnection();
							Statement stmt = currentCon.createStatement();
							String query = "Select * from OPERATION";
							ResultSet rs = stmt.executeQuery(query);
						%>
						<table border=1 id="customers" align=center
							style="text-align: center; color: black;">
							<tr>
								<th>Operation ID</th>
								<th>Title</th>
							</tr>
							<%
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString("operation_id")%></td>
								<td><%=rs.getString("title")%></td>
							</tr>
							<%
								
							}
							%>
						</table>
						<%
							}  catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						}
						%>

					</div>
					<button type="button"
						onclick="document.getElementById('id03').style.display='none'"
						class="cancelbtn">Cancel</button>
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
			<div class="button1 column2" align="center">
				<center>
					<input class="btn1 btn-info bb " type="submit" name="Submit"
						value=Submit>
				</center>
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

</html>