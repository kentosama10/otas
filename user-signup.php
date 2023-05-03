<?php
    session_start();

    include 'components/connections.php'; 


    if(isset($_POST['save']))
    
    { 
        $email_address = $_POST['email_address']; 
        $username = $_POST['username']; 
        $password = $_POST['password'];
        $c_password = $_POST['c_password'];
        $acc_name = $_POST['name']; 

    
        $sql = "SELECT email FROM user_accounts WHERE email = '$email_address' OR username = '$username'";
        $result = $con->query($sql);
            if ($result->num_rows > 0) {
                  echo "<script>
                            alert('Email or Username already used!')
                            window.location.replace('user-signup.php');
                        </script>";
                    }
                else {
                    if ($password == $c_password){     
                        $sql_query = "INSERT INTO user_accounts (email, username, password, acc_name) VALUES ('$email_address', '$username', '$password', '$acc_name')";
                        $result = $con->query($sql_query);
            
                        echo "<script>
                                alert('Account created! Sign in now')
                                window.location.replace('user-signin.php');
                            </script>";
                                                }                                        
                    else { 
                        echo "<script>
                            alert('Passwords not matched!')
                            window.location.replace('user-signup.php');
                        </script>";
                        }       
                    }
    mysqli_close($con); 
    }
?>

<!DOCTYPE html>

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="img/urslogo.png">

    <link rel="stylesheet" href="styles/signup-form.css">
    <title>SVCI Research and Development Archiving System | Sign up</title>

</head>

<body>

    <div class="section-grid">
        <div class="left-section">
            <div>
                <a href="index.php">
                    <img src="img/svci_logo.png" alt="" class="logo">
                </a>
            </div>
            <div class="welcome-sidebar">
                <div class="welcome-label">SVCI Research and Development Archiving System</div>
                <div class="welcome-statement">Access most of the thesis accomplished by St. Vincent's College Incorported - students and alumnis.</div>
            </div>
        </div>
        <div class="right-section">
            <div class="header">
                <div class="welcome-label-header-container">
                    <a href="index.php" class="link-index">
                        <div class="welcome-label-header">SVCI Research and Development Archiving System</div>
                    </a>
                    <div class="welcome-statement-header">Access most of the thesis accomplished by St. Vincent's College Incorported - students and alumnis.</div>
                </div>
            </div>
            <form action="" method="post">
                <div class="signup-form-container">
                    <div class="signup-label-container">
                        <p class="signup-label">SIGN UP</p>
                    </div>
                    <div class="signup-form">
                    <div class="signup-input-container">
                            <input type="text" class="signup-input-name" name="name" placeholder="Name" required>
                        </div>

                        <div class="signup-input-container">
                            <input type="email" class="signup-input-email" name="email_address" placeholder="Email address" required>
                        </div>
                        <div class="signup-input-container">
                            <input type="text" class="signup-input-username" name="username" placeholder="Username" required>
                        </div>

                        <div class="signup-input-container">
                            <input type="password" class="signup-input-password" name="password" placeholder="Password" id="signup-input-password" required>
                        </div>

                        <div class="signup-input-container">
                            <input type="password" class="signup-input-cpassword" name="c_password" placeholder="Confirm password" id="signup-input-cpassword" required>
                        </div>

                        <input type="checkbox" id="show-password-button" class="show-password-button" onclick="myFunction()">
                        <label for="show-password-button" class="show-password-label">Show password</label>

                        <div class="signup-input-container">
                            <div class="signup-button-container">
                                <button class="signup-button" type="submit" name="save">SIGN UP</button>
                            </div>
                        </div>
                        <div class="signup-input-container">
                            <a href="user-signin.php" class="signin-button">
                                <div class="signin-label">
                                    Already a member? Sign in here
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("signup-input-password");
            var y = document.getElementById("signup-input-cpassword");
            if (x.type === "password" && y.type === "password") {
                x.type = "text";
                y.type = "text";
            } else {
                x.type = "password";
                y.type = "password";

            }
        }
    </script>
</body>

</html>