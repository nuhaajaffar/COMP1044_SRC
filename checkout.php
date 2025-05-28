<?php include('partials-front/menu.php'); ?>

<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql2 = "SELECT * FROM tbl_order WHERE id = $id;";
    $res2 = mysqli_query($conn, $sql2);
    $row2 = mysqli_fetch_assoc($res2);
    $total = $row2['total'];
} else {
    header('location:' . SITEURL . 'myorders.php');
}
?>


<div class="main-content">
    <div class="wrapper">
        <h1 class="text-center">Check Out</h1>
        <br><br><br>
        <center>
            <table class="content-table">
                <tbody>

                    
                    <tr>
                        <td>Cart Subtotal</td>
                        <td><?php echo "RM" . $total; ?></td>
                    </tr>
                    <tr>
                        <td>Delivery</td>
                        <td>Free delivery</td>
                    </tr>
                    <tr>
                        <td class="text-color"><strong>Total</strong></td>
                        <td class="text-color"><strong><?php echo "RM" . $total; ?></strong></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="content-table">
                <tbody>
                    <tr>
                        <td>Payment Options</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="mod" id="radioStacked1" value="COD" class="custom-control-input" checked>
                            <label class="custom-control-label" for="radioStacked1">Cash on Delivery</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="radio" name="mod" id="radioStacked2" value="Online Banking" class="custom-control-input" disabled>
                            <label class="custom-control-label" for="radioStacked2">Online Banking</label>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p class="text-center">
                <input type="button" onclick="confirmPurchase()" class="btn btn-outline-success btn-block" value="Order now">
            </p>
            <br>
            <td> 
            <a href="<?php echo SITEURL . "myorders.php?id=" . $id; ?>" class="btn-secondary">Back</a>
            </td>
        </center>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
function confirmPurchase() {
    Swal.fire({
        title: 'Are you sure you want to place the order?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, place it!'
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire(
                'Purchased!',
                'Your order has been placed successfully.',
                'success'
            ).then(() => {
                // Redirect to the home page
                window.location.href = 'index.php'; // Replace 'home.php' with your actual home page URL
            });
        }
    });
}
</script>