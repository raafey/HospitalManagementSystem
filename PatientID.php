<?php
    session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Patient Report</title>
        <link rel="icon" type="image/png" href="IPHospitalB.png">
        <style>
            .Header {
                display: block;
			    margin-left: auto;
		    	margin-right: auto;
                width: 70%;
            }

            .Bar {
                overflow: hidden;
                background-color: rgb(15, 41, 119);
                font-family: Arial, Helvetica, sans-serif;
            }

            .Bar a {
                float: left;
                font-size: 20px;
                color: white;
                text-align: center;
                padding: 20px 20px;
                text-decoration: none;
            }

            .Dropdown {
                float: left;
                overflow: hidden;
            }

            .Dropdown2 {
                float: left;
                overflow: hidden;
            }

            .Dropdown .DropButton {
                font-size: 20px;    
                border: none;
                outline: none;
                color: white;
                padding: 20px 20px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .Dropdown2 .DropButton2 {
                font-size: 20px;    
                border: none;
                outline: none;
                color: white;
                padding: 20px 20px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .Bar a:hover, .Dropdown:hover .DropButton {
                background-color: rgb(65, 89, 163);
            }

            .Bar a:hover, .Dropdown2:hover .DropButton2 {
                background-color: rgb(65, 89, 163);
            }

            .DropLinks {
                display: none;
                position: absolute;
                background-color: rgb(249, 249, 249);
                min-width: 200px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .DropLinks2 {
                display: none;
                position: absolute;
                background-color: rgb(249, 249, 249);
                min-width: 200px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .DropLinks a {
                float: none;
                color: black;
                padding: 20px 20px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .DropLinks2 a {
                float: none;
                color: black;
                padding: 15px 15px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .DropLinks a:hover {
                background-color: rgb(221, 221, 221);
            }

            .DropLinks2 a:hover {
                background-color: rgb(221, 221, 221);
            }

            .Dropdown:hover .DropLinks {
                display: block;
            }

            .Dropdown2:hover .DropLinks2 {
                display: block;
            }

            form {
                font-family: Arial, Helvetica, sans-serif;
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
        </style>
    </head>
    <body>
        <a href="Admin.php"><img class="Header" src="Admin.png"/></a>
        <br><br>
        <div class="Bar">
            <a href="Admin.php">Main Page</a>
            <div class="Dropdown">
                <button class="DropButton">Records</button>
                <div class="DropLinks">
                    <a href="PatientID.php">Patient Record</a>
                    <a href="WardID.php">Ward Record</a>
                    <a href="ConsultantID.php">Consultant Team Record</a>
                </div>
            </div> 
            <div class="Dropdown2">
                <button class="DropButton2">Insert New Data</button>
                <div class="DropLinks2">
                    <a href="#">Ward</a>
                    <a href="#">Care Unit</a>
                    <a href="#">Doctor</a>
                    <a href="#">Nurse</a>
                    <a href="#">Patient</a>
                    <a href="#">Treatment</a>
                </div>
            </div>
            <a href="LoginPage.php" style="float: right;">Logout</a>
        </div>
        <br><br>
        <form action="PatientReport.php" method="POST">
			<strong>Enter Patient ID</strong><br><br>
			<input type="text" name="patient" required/>
			<br><br>

			<input type="submit" value="Submit" class="submitbutton">
		</form>
    </body>
</html>