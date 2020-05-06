<?php
    session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <title>New Complaint</title>
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

            .Bar a:hover {
                background-color: rgb(65, 89, 163);
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
				padding: 5px;
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
        <a href="Patient.php"><img class="Header" src="Patient.png"/></a>
        <br><br>
        <div class="Bar">
            <a href="Patient.php">Main Page</a>
            <a href="OwnReport.php">View Patient Report</a>
            <a href="Complaint.php">Add Complaint</a>
            <a href="LoginPage.php" style="float: right;">Logout</a>
        </div>
        <br><br>
        <form action="SendComplaint.php" method="POST">
			<strong>Describe Complaint</strong><br><br>
			<input type="text" name="complaint" size="50" required>
			<br><br>

			<input type="submit" value="Submit Complaint" class="submitbutton">
		</form>
    </body>
</html>