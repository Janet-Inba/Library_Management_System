<?php
session_start();
error_reporting(0);
include('includes/config.php');
?><head>
  <link rel="icon" type="image/x-icon" href="https://assets.thestorygraph.com/assets/logo-no-text-dark-mode-c6312775a773a77605dd659850b4c0cd08db5c2044ef53a4f7b5186f8ca05f1f.png">

<style>
.badge {
    position: relative;
    top: -1rem;
    right: 1rem;
    padding: 0.35rem 0.5rem;
    border-radius: 100%;
    background: #BA1A1A;
    color: white;
    font-size: 1rem !important;
}
</style>
</head>


<div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" >

                    <img src="assets/img/logo.png" />
                </a>

            </div>

        </div>
    </div>
    <!-- LOGO HEADER END-->
<?php if($_SESSION['login'])
{
?>    
<section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
								
							
						                                   <tbody>

						
                            <li><a href="dashboard.php" >DASHBOARD</a></li>
                            <li><a href="issued-books.php">Issued Books</a></li>
                             <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Account <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="my-profile.php">My Profile</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="change-password.php">Change Password</a></li>
									<?php if($_SESSION['login']){?><li role="presentation"><a role="menuitem" tabindex="-1" href="logout.php" >LOG OUT</a>
      						       <?php }?></li>
								
                                </ul>
                            </li>
															   
						<?php
							$sql = "SELECT * FROM tblbooks WHERE RegDate > DATE_ADD(CURDATE(), INTERVAL -1 DAY)";
							$query = $dbh -> prepare($sql);
							$query->execute();
							$results=$query->fetchAll(PDO::FETCH_OBJ);
							$cnt= $query->rowCount();
 
 		
							$sid=$_SESSION['stdid'];
							$sql2="SELECT * FROM tblissuedbookdetails where StudentId=:sid AND (RetrunStatus=0 || RetrunStatus is null || RetrunStatus='') AND DueDate <= CURDATE()";


							$query2 = $dbh -> prepare($sql2);
							$query2-> bindParam(':sid', $sid, PDO::PARAM_STR);
							$query2->execute();
							$results2=$query2->fetchAll(PDO::FETCH_OBJ);
							$cnt2= $query2->rowCount();
 
 							$count = $cnt + $cnt2;
						 ?>

							
						    	 <li > <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> <i class="fa fa-bell-o" aria-hidden="true" ></i>
									 <?php if ($count > 0) {
			 echo "<span class='badge'>" . $count . "</span>"; }?>
									 </a>
								 <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">	
									 
									 <?php if ($cnt > 0) { ?>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="noticifications.php" style="text-transform: lowercase"><?php echo $cnt . ' new books added!'; ?></a></li>
									 <?php }?>
									 
									  <?php if ($cnt2 > 0) { ?>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="not-returned.php" style="text-transform: lowercase"><?php echo $cnt2 . ' books due'; ?></a></li>
									 <?php }?>
									 
									  <?php if ($count == 0) { ?>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#" style="text-transform: lowercase"><?php echo 'no new noticifications!'; ?></a></li>
									 <?php }?>
									 
									 
								 </ul>
							 </li>
						

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <?php } else { ?>
        <section class="menu-section">
        <div class="container">
            <div class="row ">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">                        
                          
      <li><a href="index.php">Home</a></li>
      <li><a href="index.php#ulogin">User Login</a></li>
                            <li><a href="signup.php">User Signup</a></li>
                         
                            <li><a href="adminlogin.php">Admin Login</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
	<script>
		function hidedot() {
			document.getElementById("plus").style.display = "none";
		}
	</script>
							

    <?php } ?>