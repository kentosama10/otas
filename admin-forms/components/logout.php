<?php


session_start();

  if(isset($_SESSION['admin_id'])) 
  {
    unset($_SESSION['admin_id']);
  }

  function logUserActivity($user_id, $user_type, $activity_type, $activity_description) {
    global $con;
    $sql = "INSERT INTO user_activity_logs (user_id, user_type, activity_type, activity_description) VALUES (?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("isss", $user_id, $user_type, $activity_type, $activity_description);
    $stmt->execute();
}

header('Location: ../admin-signin.php');

?>