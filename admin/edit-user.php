<?php
session_start();
include("checklogin.php");
check_login();
include("dbconnection.php");
if(isset($_POST['update']))
{
$name=$_POST['name'];
$altemail=$_POST['altemail'];
$contact=$_POST['contact'];
$address=$_POST['address'];
$gender=$_POST['gender'];
$userid=$_GET['id'];
	$ret=mysqli_query($con,"update user set name='$name', alt_email='$altemail',mobile='$contact',gender='$gender',address='$address' where id='$userid'");
	if($ret)
	{
	echo "<script>alert('Data Updated');</script>";	
	}
	}

if(isset($_POST['delete']))
{
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
}
}
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Snazzy Wealth | Edit Profile </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="../assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="../assets/plugins/boostrapv5/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="../assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css"/>
<link href="../assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
</head>
<body class="">
<div class="page-content"> 
    <div id="portlet-config" class="modal hide">
      <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button"></button>
        <h3>Widget Settings</h3>
      </div>
      <div class="modal-body"> Widget settings form goes here </div>
    </div>
    <div class="clearfix"></div>
    <div class="content">  
		<div class="page-title">
         <?php $rt=mysqli_query($con,"select * from user where id='".$_GET['id']."'");
			  while($rw=mysqli_fetch_array($rt))
			  {?>	
			<h3><?php echo $rw['name'];?>'s Profile</h3>	
             
                        <form name="muser" method="post" action="" enctype="multipart/form-data">
                        
                     <table width="100%" border="0">
  <tr>
    <td height="42">Name</td>
    <td><input type="text" name="name" id="name" value="<?php echo $rw['name'];?>" class="form-control" readonly></td>
  </tr>
  <tr>
    <td height="42">Primary Email</td>
    <td><input type="text" name="email" id="email" value="<?php echo $rw['email'];?>" class="form-control" readonly></td>
  </tr>
  <tr>
    <td height="42">Alt Email</td>
    <td><input type="text" name="altemail" id="altemail" value="<?php echo $rw['alt_email'];?>" class="form-control" readonly></td>
  </tr>
  <tr>
    <td height="42">Contact no.</td>
    <td><input type="text" name="contact" id="contact" value="<?php echo $rw['mobile'];?>" class="form-control" readonly></td>
  </tr>
  <tr>
    <td height="42">Gender</td>
    
    <td><input type="text" name="gender" id="gender" value="<?php $a=$rw['gender'];
                          if($a=='m')
                          {
                          echo "Male";
                          }
                            if($a=='f')
                          {
                          echo "Female";
                          }
                         
                          
                            if($a=='others')
                          {
                          echo "Others";
                          }
                         
                          
                          ?>" class="form-control" readonly>
                          </td>
    
    
  </tr>


  <tr>
    <td height="42">Address</td>
    <td><textarea name="address" cols="64" rows="4"  readonly><?php echo $rw['address'];?></textarea></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="42">
    
  

  


   </td>
  </tr>
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<?php } ?>
</form>

<a href="manage-users.php?id=<?php echo $row['id'];?>" class="btn btn-primary btn-xs btn-mini">Back</a>
<!-- Button trigger modal -->
<button type="button" class="btn btn-danger btn-xs btn-mini" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Delete
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Delete Account?</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <b><h6>Are you sure you want to delete this account?</h6></b>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" name="delete" class="btn btn-danger">DELETE</button>
      </div>
    </div>
  </div>
</div>

</div>
  </div>
  </div>
</div>
 </div>
<script src="../assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script> 
<script src="../assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script> 
<script src="../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="../assets/plugins/breakpoints.js" type="text/javascript"></script> 
<script src="../assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script> 
<script src="../assets/plugins/jquery-block-ui/jqueryblockui.js" type="text/javascript"></script> 
<script src="../assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js" type="text/javascript"></script>
<script src="../assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
<script src="../assets/plugins/jquery-numberAnimate/jquery.animateNumbers.js" type="text/javascript"></script>
<script src="../assets/js/core.js" type="text/javascript"></script> 
<script src="../assets/js/chat.js" type="text/javascript"></script> 
<script src="../assets/js/demo.js" type="text/javascript"></script> 
<script src="../assets/plugins/boostrapv5/js/bootstrap.bundle.min.js" type="text/javascript"></script>

</body>
</html>