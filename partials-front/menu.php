<?php 

    include('config/constants.php'); 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nusantara</title>

    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar menu">

        <div class="nav">
            <a href="<?php echo SITEURL; ?>" class="navleft">Home</a>
            <a href="<?php echo SITEURL; ?>foods.php" class="navleft">Foods</a>
            <div class="logo-container">    
                <a href="index.php" title="Logo">
                    <img src="images/logo.jpg" alt="Restaurant Logo" class="img-responsive">
                </a>
            </div>
            <a href="<?php echo SITEURL; ?>myorders.php" class="navright">Cart</a>
            <a href="<?php echo SITEURL; ?>logout.php" class="navright">Logout</a>

        </div>

    </section>
    <!-- Navbar Section Ends Here -->