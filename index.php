    <?php include('partials-front/menu.php'); ?>

    <!-- fOOD sEARCH Section Starts Here -->
    <section class="food-search text-center">
        <div class="container">
            
            <form action="<?php echo SITEURL; ?>food-search.php" method="POST">
                <input type="search" name="search" placeholder="Search for Food.." required>
                <input type="submit" name="submit" value="Search" class="btn btn-primary">
            </form>

        </div>
    </section>
    <!-- fOOD sEARCH Section Ends Here -->

    <?php 
        if(isset($_SESSION['order']))
        {
            echo $_SESSION['order'];
            unset($_SESSION['order']);
        }
    ?>

    <!-- CAtegories Section Starts Here -->
    <section class="categories">
        <div class="container">
            <h2 class="text-center">Categories</h2>

            <?php 

                //Display all the cateories that are active
                //Sql Query
                $sql = "SELECT * FROM tbl_category WHERE active='Yes'";

                //Execute the Query
                $res = mysqli_query($conn, $sql);

                //Count Rows
                $count = mysqli_num_rows($res);
            ?>

               <div class="foods-container">

                    <?php
                    if($count>0)
                    {
                        //CAtegories Available
                        while($row=mysqli_fetch_assoc($res))
                        {
                            //Get the Values like id, title, image_name
                            $id = $row['id'];
                            $title = $row['title'];
                            $image_name = $row['image_name'];
                            ?>
                            
                            <a href="<?php echo SITEURL; ?>category-foods.php?category_id=<?php echo $id; ?>">
                                    <?php 
                                        //Check whether Image is available or not
                                        if($image_name=="")
                                        {
                                            //Display MEssage
                                            echo "<div class='error'>Image not Available</div>";
                                        }
                                        else
                                        {
                                            //Image Available
                                            ?>
                                            <img src="<?php echo SITEURL; ?>images/category/<?php echo $image_name; ?>" alt="Pizza" class="img-responsive img-curve">
                                            <?php
                                        }
                                    ?>
                                    

                                    <figcaption><?php echo $title; ?></figcaption>
                            </a>

                            <?php
                        }
                    }
                    else
                    {
                        //Categories not Available
                        echo "<div class='error'>Category not Added.</div>";
                    }
                    ?>

                </div>   
            

            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Categories Section Ends Here -->

    
    <?php include('partials-front/footer.php'); ?>