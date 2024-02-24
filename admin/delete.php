<?php
session_start();
include("checklogin.php");
check_login();
include("dbconnection.php");


$name=$_POST['name'];
$altemail=$_POST['altemail'];
$contact=$_POST['contact'];
$address=$_POST['address'];
$gender=$_POST['gender'];
$userid=$_GET['id'];
 $sql=mysqli_query($con,"delete user where name='$name', alt_email='$altemail',mobile='$contact',gender='$gender',address='$address' where id='$userid'");
if($sql)
{
  echo "<script>alert('account deleted');</script>";
  echo "<script>window.location = 'manage-users.php';</script>";
}

?>