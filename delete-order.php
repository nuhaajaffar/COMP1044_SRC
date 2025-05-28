<?php 
include('partials-front/menu.php'); 

    //echo "DELETE";

    if(isset($_GET['id'])) 
    {
        //Process to Delete
        //echo "Process to Delete";

        //1.  Get ID and Image NAme
        $id = $_GET['id'];
       

        //3. Delete order from Database
        $sql = "DELETE FROM tbl_order WHERE id=$id";
        //Execute the Query
        $res = mysqli_query($conn, $sql);

        //CHeck whether the query executed or not and set the session message respectively
        //4. Redirect to Manage Food with Session Message
        if($res==true)
        {
            //Food Deleted
            $_SESSION['delete'] = "<div class='success'>Food Deleted Successfully.</div>";
            header('location:'.SITEURL.'checkout.php');
        }
        else
        {
            //Failed to Delete Food
            $_SESSION['delete'] = "<div class='error'>Failed to Delete Food.</div>";
            header('location:'.SITEURL.'checkout.php');
        }

        

    }
    else
    {
        //Redirect to Manage Food Page
        //echo "REdirect";
        $_SESSION['unauthorize'] = "<div class='error'>Unauthorized Access.</div>";
        header('location:'.SITEURL.'checkout.php');
    }


?>
    
<?php include('partials-front/footer.php'); ?>