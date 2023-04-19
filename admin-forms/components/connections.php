<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "thesis_archive_db";

if (!$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname)) 
{
  die("Failed to connect");
}
