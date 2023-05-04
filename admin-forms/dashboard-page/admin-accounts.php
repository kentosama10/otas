<?php
session_start();
    include '../components/connections.php';

    if(empty($_SESSION['admin_id'])):
        header('Location: ../admin-signin.php');
    endif;

    if(isset($_POST['save']))
    
    { 
        $acc_type = $_POST['acc_type'];
        $acc_id = $_POST['accounts_id'];
        $email_address = $_POST['email']; 
        $acc_name = $_POST['name']; 
        $username = $_POST['username']; 
        $password = $_POST['password'];
        $c_password = $_POST['c_password'];

        if($acc_type == 'Expert') {
            $sqladmin = "SELECT email FROM admin_accounts WHERE email = '$email_address' OR username = '$username'";
            $result = $con->query($sqladmin);
            if ($result->num_rows > 0) {
                  echo "<script>
                            alert('Some information already existing!')
                            window.location.replace('admin-accounts.php');
                        </script>";
                    }
                else {
                    if ($password == $c_password){     
                        $sqladmin_query = "INSERT INTO admin_accounts (acc_type, acc_id, email, acc_name, username, password) VALUES ('$acc_type', '$acc_id', '$email_address', '$acc_name', '$username', '$password')";
                        $result = $con->query($sqladmin_query);
            
                        echo "<script>
                                alert('Account successfully created!')
                                window.location.replace('admin-accounts.php');
                            </script>";
                                                }                                        
                    else { 
                        echo "<script>
                            alert('Please check again your passwords!')
                            window.location.replace('admin-accounts.php');
                        </script>";
                        }       
                    }
        }
        else {
            $sqluser = "SELECT email FROM user_accounts WHERE email = '$email_address' OR username = '$username'";
            $result = $con->query($sqluser);
            if ($result->num_rows > 0) {
                  echo "<script>
                            alert('Some information already existing!')
                            window.location.replace('admin-accounts.php');
                        </script>";
                    }
                else {
                    if ($password == $c_password){     
                        $sqluser_query = "INSERT INTO user_accounts (acc_type, email, acc_name, username, password) VALUES ('$acc_type', '$email_address', '$acc_name', '$username', '$password')";
                        $result = $con->query($sqluser_query);
            
                        echo "<script>
                                alert('Account successfully created!')
                                window.location.replace('admin-accounts.php');
                            </script>";
                                                }                                        
                    else { 
                        echo "<script>
                            alert('Please check again your passwords!')
                            window.location.replace('admin-accounts.php');
                        </script>";
                        }       
                    }
        }
    }

    if(isset($_GET['id'])) {
        $id = $_GET['id'];
        $delete_query = "DELETE FROM admin_accounts WHERE id = '$id'";
        $delete = $con->query($delete_query);

    } 

    if(isset($_GET['id'])) {
        $id = $_GET['id'];
        $delete_query = "DELETE FROM user_accounts WHERE id = '$id'";
        $delete = $con->query($delete_query);

    } 
?>

<!DOCTYPE html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://kit.fontawesome.com/067d14b27b.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="../styles/dashboard-styles/header.css">
    <link rel="stylesheet" href="../styles/dashboard-styles/left-nav.css">
    <link rel="stylesheet" href="../styles/dashboard-styles/account-table.css">


    <link rel="icon" type="image/x-icon" href="../img/svci_logo.png">

    <title>SVCI Research and Development Archiving System | Accounts</title>

</head>

<body>

    <nav>
        <div class="header-nav">
            <div class="left-section">
                <div class="search-container">
                    <input type="text" class="search-input" placeholder="Search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
            </div>

            <div class="right-section">
                <div class="user-info-container" id="showHide-btn" onclick="showDiv()">
                    <div class="user-icon-container">
                        <i class="fa-solid fa-user-gear fa-lg fa-inverse"></i>
                    </div>
                    <div class="user-accountid">
                        <?php
                            echo $_SESSION['admin_id'];
                        ?>
                    </div>
                    <div class="dropdown-content" id="dropDown-div">
                        <div class="user-accountid-dropdown">
                            <i class="fa-solid fa-id-badge"></i> 
                            <?php
                                echo $_SESSION['admin_id'];
                            ?>
                        </div>
                        <button class="myaccount-btn">
                            <i class="fa-solid fa-circle-user"></i>
                            My Account
                        </button>

                        <a href='../components/logout.php'>
                        <button class="logout-btn">
                            <i class="fa-solid fa-arrow-right-from-bracket"></i>
                            Logout
                        </button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
   
    </nav>

   <div class="left-nav ">
        <div class="logo-title-container ">
            <img src="../img/svci_logo.png" alt=" " class="svcilogo ">
            <p class="title ">ADMINISTRATOR</p>
        </div>

        <a href="admin-dashboard.php" class="general-link ">
            <div class="dashboard-container ">
                <i class="fa-solid fa-gauge fa-lg dashboard-icon "></i>
                <p class="dashboard-button ">Dashboard
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="admin-thesis.php" class="general-link ">
            <div class="list-container ">
                <i class="fa-solid fa-list-check fa-lg "></i>
                <p class="list-button ">Uploaded Thesis
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="admin-accounts.php" class="general-link ">
            <div class="account-container">
                <i class="fa-solid fa-user-pen fa-lg"></i>
                <p class="account-button">Accounts
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

    </div>
    
   <div class="top-section">
    <div class="action-container">
            <a href="#form-div" class="action-parent">
                <button class="add-account" id="add-record" onclick="generateRandomNumber(), showForm()">
                CREATE
                </button>
            </a>
        </div>
   </div>

    <div class="account-label">EXPERTS</div>
        <div class="account-table-container">
           <table class="accounts-table">
            <tr>
                <th class="id_header">ID</th>
                <th class="account_id_header">Account ID</th>
                <th class="username_header">Username</th>
                <th class="email_header">Email</th>
                <th class="account_name_header">Account Name</th>
                <th class="acctype_header">Account Type</th>
                <th class="date_header">Date Modified</th>
                <th class="action_header">Actions</th>
            </tr>

            <?php
                $sql = "SELECT id, acc_id, username, email, acc_name, acc_type, date from admin_accounts";
                $result = $con-> query($sql);

                if ($result-> num_rows > 0) {
                    while ($row = $result-> fetch_assoc()) {
                        echo 
                            "<tr>
                                <td>" . $row["id"] . "</td>
                                <td>" . $row["acc_id"] . "</td>
                                <td>" . $row["username"] . "</td>
                                <td>" . $row["email"] . "</td>
                                <td>" . $row["acc_name"] . "</td>
                                <td>" . $row["acc_type"] . "</td>
                                <td>" . $row["date"] . "</td>
                                <td>" . "<a href='#' class = 'edit_button' onclick='showForm()'><i class='fa-solid fa-pen-to-square'></i></a>" . 
                                "<a href='admin-accounts.php?id=".$row["id"]."' class = 'delete_button'><i class='fa-solid fa-trash'></i></a>" . "</td>
                            </tr>";       
                            
                    }
                    echo "</table>";
                }
                else {
                    echo "No results.";
                }

            ?>
           </table>
        </div>

        <div class="endusers-account-label">END-USERS</div>
        <div class="account-table-container">
           <table class="accounts-table">
            <tr>
                <th class="id_header">ID</th>
                <th class="username_header">Username</th>
                <th class="email_header">Email</th>
                <th class="account_name_header" style="">Account Name</th>                   
                <th class="acctype_header">Account Type</th>
                <th class="date_header">Date Modified</th>                
                <th class="action_header">Actions</th>
            </tr>

            <?php
                $query = "SELECT id, username, email, acc_name, acc_type, date from user_accounts";
                $result = $con-> query($query);

                if ($result-> num_rows > 0) {
                    while ($row = $result-> fetch_assoc()) {
                        echo 
                            "<tr>
                                <td>" . $row["id"] . "</td>
                                <td>" . $row["username"] . "</td>
                                <td>" . $row["email"] . "</td>
                                <td>" . $row["acc_name"] . "</td>                                  
                                <td>" . $row["acc_type"] . "</td>
                                <td>" . $row["date"] . "</td>                                
                                <td>" . "<a href='#' class = 'edit_button' onclick='showForm()'><i class='fa-solid fa-pen-to-square'></i></a>" . 
                                "<a href='admin-accounts.php?id=".$row["id"]."' class = 'delete_button'><i class='fa-solid fa-trash'></i></a>" . "</td>
                            </tr>";    
                            
                    }
                    echo "</table>";
                }
                else {
                    echo "No results.";
                }

                $con-> close();
            ?>
           </table>
        </div>
    
        <div class="form-label" id="label-div">CREATE NEW / MODIFY RECORD</div>
        <div class="form-container" id="form-div">
            <form action="" method="post">
            <input type="hidden" class="data-input" name= "id" placeholder="ID" required>

                <div class="type-id-parent-container">
                        <div class="type-container">
                            <div class="label">ACCOUNT TYPE</div>
                            <div class="data-input-container">
                                <select name="acc_type" id="select" class="data-input" onchange="accountType()">
                                    <option value="Expert">Expert</option>
                                    <option value="End-user">End-user</option>
                                </select>
                            </div>
                        </div>
                        <div class="id-container">
                            <div class="label">ACCOUNT ID</div>
                            <div class="data-input-container">
                                <input type="text" class="data-input" id="accounts_id" name="accounts_id" placeholder="1211900000" readonly="readonly">
                            </div>
                        </div>
                    </div>

                    <div class="email-parent-container">
                        <div class="email-container">
                            <div class="label">EMAIL ADDRESS</div>
                            <div class="data-input-container">
                                <input type="email" class="data-input" name= "email" placeholder="email@email.com" required>
                            </div>
                        </div>
                    </div>

                    <div class="name-uname-parent-container">
                        <div class="name-container">
                            <div class="label">ACCOUNT NAME</div>
                            <div class="data-input-container">
                                <input type="text" class="data-input" name= "name" placeholder="Name" required>
                            </div>
                        </div>
                        <div class="uname-container">
                            <div class="label">USERNAME</div>
                            <div class="data-input-container">
                                <input type="text" class="data-input" name= "username" placeholder="Username" required>
                            </div>
                        </div>
                    </div>

                    <div class="pword-parent-container">
                        <div class="password-container">
                            <div class="label">PASSWORD</div>
                            <div class="data-input-container">
                                <input type="password" class="data-input" id="signup-input-password" name= "password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="cpassword-container">
                            <div class="label">CONFIRM PASSWORD</div>
                            <div class="data-input-container">
                                <input type="password" class="data-input" id="signup-input-cpassword" name="c_password" placeholder="Confirm password" required>
                            </div>
                        </div>
                    </div>

                    <div class="show-parent-container">
                        <div class="show-container">
                            <input type="checkbox" id="show-password-button" class="show-password" placeholder="Password" onclick="myFunction()">
                            <label for="show-password-button" class="show-label">Show password</label>
                        </div>
                    </div>

                <div class="button-container">
                    <button class="save-button" type="submit" name="save">
                        SAVE
                    </button>

                    <button class="cancel-button" onclick="showForm()">
                        CANCEL
                    </button>
                </div>
            </form>   
                  
        </div>
    <script src="../scripts/dashboard.js"></script>
  
</body>