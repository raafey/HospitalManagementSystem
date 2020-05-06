<!DOCTYPE html>

<html>
	<head>
		<title>Ivor Paine Hospital Login Page</title>
		<link rel="icon" type="image/png" href="IPHospitalB.png">
		<style>
			body {
				font-family: Helvetica;
				font-size: 95%;
			}

			br {
				line-height: 200%;
			}

			form {
				width: 20%;
				margin: auto;
				padding: 25px;
				border-radius: 10px;
				background-color: rgb(237, 239, 242);
				box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
			}

			input {
				width: 98%;
				padding: 3px;
				border: 2px solid rgb(48, 121, 237);
				border-radius: 4px;
			}

			.submitbutton {
				width: 50%;
				border: 2px solid rgb(48, 121, 237);
				border-radius: 4px;
				background-color: rgb(77, 144, 254);
				color: white;
				display: block;
			    margin-left: auto;
		    	margin-right: auto;
			}

			img {
				display: block;
			    margin-left: auto;
		    	margin-right: auto;
    			width: 28%;
			}

		</style>
	</head>

	<body>
		<img src="IPHospital.png"/>
		<form action="LoginSession.php" method="POST">
			<strong>Login ID</strong><br>
			<input type="text" name="username" required/>
			<br><br>

			<strong>Password</strong><br>
			<input type="password" name="password" required>
			<br><br>

			<input type="submit" value="Login" class="submitbutton">
		</form>
	</body>
</html>