<!DOCTYPE html>

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;700&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/svci_logo.png">

    <link rel="stylesheet" href="styles/user-forgot-pass.css">
    <title>SVCI Research and Development Archiving System | Sign in</title>

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
            <form action="">
                <div class="fp-form-container">
                    <div class="fp-label-container">
                        <p class="fp-label">FORGOT PASSWORD</p>
                    </div>
                    <div class="fp-form">
                        <div class="fp-input-container" style="margin-bottom: 10px;">Please enter your email address to recover your account
                        </div>

                        <div class="fp-input-container">
                            <input type="text" class="fp-input-email" placeholder="Email address" required>
                        </div>

                        <div class="buttons-container">
                            <div class="fp-input-container">
                                <div class="fp-button-container">
                                    <button class="fp-button" type="submit">RESET PASSWORD</button>
                                </div>
                            </div>

                            <div class="fp-input-container">
                                <div class="fp-button-container">
                                    <a href="user-signin.php" class="fp-button fp-button-back">BACK</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("fp-input-password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</body>

</html>