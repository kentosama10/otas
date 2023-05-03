<?php
session_start();
include '../components/connections.php';

if(empty($_SESSION['admin_id'])):
    header('Location: ../admin-signin.php');
endif;

function logUserActivity($user_id, $user_type, $activity_type, $activity_description) {
    global $con;
    $sql = "INSERT INTO user_activity_logs (user_id, user_type, activity_type, activity_description) VALUES (?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("isss", $user_id, $user_type, $activity_type, $activity_description);
    $stmt->execute();
}

function getUserActivityLogs($user_id, $user_type) {
    global $con;
    $sql = "SELECT * FROM user_activity_logs WHERE user_id = ? AND user_type = ? ORDER BY activity_date DESC";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("is", $user_id, $user_type);
    $stmt->execute();
    $result = $stmt->get_result();
    return $result->fetch_all(MYSQLI_ASSOC);
}

// Example log calls:
// After successful admin login:
// logUserActivity($_SESSION['admin_id'], 'admin', 'login', 'Admin logged in');

// After successful admin logout:
// logUserActivity($_SESSION['admin_id'], 'admin', 'logout', 'Admin logged out');
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
    <link rel="stylesheet" href="../styles/dashboard-styles/tables-chart.css">


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

        <a href="admin-log-manager.php" class="general-link ">
            <div class="log-container">
            <i class="fa-solid fa-clock fa-lg"></i>
                <p class="log-button">Log Manager
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>
    </div>

    <div class="container">
        <h1>User Activity Logs</h1>
        <table class="activity-table">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>User Type</th>
                    <th>Activity Type</th>
                    <th>Activity Description</th>
                    <th>Activity Date</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $logs = getUserActivityLogs(null, null);
                foreach($logs as $log): ?>
                    <tr>
                        <td><?= $log['user_id'] ?></td>
                        <td><?= $log['user_type'] ?></td>
                        <td><?= $log['activity_type'] ?></td>
                        <td><?= $log['activity_description'] ?></td>
                        <td><?= $log['activity_date'] ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <script src="../scripts/dashboard.js"></script>
  
</body>