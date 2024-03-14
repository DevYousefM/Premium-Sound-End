<?php
$show_coupon = $obj->show_coupon();

if (isset($_GET['coustatus']) && $_GET['coustatus'] == "delete") {
    $id = $_GET['id'];

    $del_msg = $obj->delete_coupon($id);
    $show_coupon = $obj->show_coupon();
}
?>

<h2>Manage Coupon</h2>

<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>Coupon Id</th>
            <th>Coupon Code</th>
            <th>Coupon Description</th>
            <th>Coupon Discount</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        <?php
        while ($result = mysqli_fetch_assoc($show_coupon)) {
        ?>
            <tr>
                <td> <?php echo $result['cupon_id'] ?></td>
                <td> <?php echo $result['cupon_code'] ?></td>
                <td> <?php echo $result['description'] ?></td>
                <td> <?php echo $result['discount'] ?></td>
                <td> <a href="edit_coupon.php?coustatus=edit&&id=<?php echo $result['cupon_id'] ?>">Edit</a> <br>
                    <a href="?coustatus=delete&&id=<?php echo $result['cupon_id'] ?>">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>