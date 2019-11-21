
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box}

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        button:hover {
            opacity:1;
        }

        /* Extra styles for the cancel button */


        /* Change styles for cancel button and signup button on extra small screens */
        @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }







            input::-webkit-input-placeholder {
                color: grey;
            }
            input:-moz-placeholder { /* Firefox 18- */
                color: grey;
            }
            input::-moz-placeholder {  /* Firefox 19+ */
                color: grey;
            }
            input:-ms-input-placeholder {
                color: grey;
            }



        }
        {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: cornflowerblue;

        }
        .button {
            background-color: #e7e7e7; /* Green */
            border: none;
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }





        .pp {
            background-color: dodgerblue;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            color:white;
            width: 70px;
        }
        body{
            background-image: url("https://graphicsmount.com/wp-content/uploads/edd/2017/08/Job-Search-Logo-1-1180x843.jpg");
        }

    </style>
</head>

<body >
<div class="topnav">
    <a > <h1>  Signup</h1></a>
</div>

<form action="callservlet" method="post">
    <div class="container">
        <br>

        Username:<input type="text" placeholder="Enter Username" name="Username" required>
        Password:<input type="password" placeholder="Enter Password " name="Password" pattern="[A-Za-z]{8}" title="password should be of only 8 characters  and only alphabets" required >
        <input type="checkbox"  name="course" required> I accept terms and conditions

        <div>
            <button type="submit" class="button" >SignUp </button>
            <br>
            <button type="button" class="button" ><a href="login.jsp"style="color: white">Login</a> </button>
            <br>
            <button type="reset" class="button">Reset</button>
        </div>
    </div>


</form>
</div>
</body>
</html>