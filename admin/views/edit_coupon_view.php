<?php

ini_set("display_erros", "Off");
$obj = new adminback();
if (isset($_GET['coustatus'])) {
    if ($_GET['coustatus'] == 'edit') {
        $id = $_GET['id'];
        $coupon_info = $obj->edit_coupon($id);
        $coupon = mysqli_fetch_assoc($coupon_info);
    }
}

if (isset($_POST['update_coupon'])) {
    $update_msg = $obj->update_coupon($_POST);
    $id = $_GET['id'];
    $coupon_info = $obj->edit_coupon($id);
    $coupon = mysqli_fetch_assoc($coupon_info);
}


?>
<h4>Update Coupon</h4>

<?php
if (isset($update_msg) && !empty($update_msg)) {
    echo $update_msg;
}
?>
<form action="" method="post" class="form">
    <div class="form-group">
        <label for="coupon_name">Coupon Name</label>
        <input type="text" name="u_coupon_name" class="form-control" value="<?php echo $coupon['cupon_code'] ?>">
    </div>

    <input type="hidden" name="coupon_id" value="<?php echo $coupon['cupon_id'] ?>">
    <div class="form-group">
        <label for="coupon_des">Coupon Description</label>
        <textarea name="u_coupon_desc" cols="30" rows="10" class="form-control"><?php echo $coupon['description'] ?> </textarea>
    </div>
    <div class="form-group">
        <label for="coupon_price">Coupon Discount</label>
        <input type="text" name="u_coupon_discount" class="form-control" value="<?php echo $coupon['discount'] ?>">
    </div>

    <div class="form-group">
        <label for="coupon_status">Status</label>
        <select name="u_status" class="form-control">
            <option value="1" <?php if ($coupon['status'] == 1) {
                                    echo "selected";
                                } ?>>Active</option>
            <option value="0" <?php if ($coupon['status'] == 0) {
                                    echo "selected";
                                } ?>>Inactive</option>
        </select>
    </div>

    <input type="submit" value="Update Coupon" name="update_coupon" class="btn btn-block btn-primary">
</form>