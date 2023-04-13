<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "theses_archive_db";

if (!$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname)) 
{
  die("Failed to connect");
}
