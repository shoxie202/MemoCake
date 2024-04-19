<?php if(isset($data) and $data != null){ ?>
<a href="javascrip:void(0)" class="btn btn-info" id="print-order-invoice" data-order_id="<?php echo $data['0']['MaHD']; ?>">In Hóa Đơn</a>
<a href="?mod=hoadon&act=xetduyet&id=<?= $data['0']['MaHD'] ?>" class="btn btn-success">Duyệt hóa đơn</a>
<a href="?mod=hoadon&act=delete&id=<?= $data['0']['MaHD'] ?>" onclick="return confirm('Bạn có thật sự muốn xóa ?');" type="button" class="btn btn-danger">Xóa</a>
<?php } ?>
<?php if (isset($_COOKIE['msg'])) { ?>
    <div class="alert alert-success">
        <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
    </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th scope="col">Tên Sản Phẩm</th>
            <th scope="col">Đon Giá</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Thành tiền</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $row) { ?>
            <tr>
                <td><?= $row['Ten'] ?></td>
                <td><?= number_format($row['DonGia']) ?> VNĐ</td>
                <td><?= $row['SoLuong'] ?></td>
                <td><?= number_format($row['DonGia'] * $row['SoLuong']) ?> VNĐ</td>
            </tr>
        <?php } ?>
</table>
<script>
    $(document).ready(function() {
        $('#dataTable').DataTable();
        $(document).on('click','#print-order-invoice',function(e){
            var order_id = $(this).data('order_id');
            window.open('?mod=hoadon&act=print&id=' + order_id, 'in hoá đơn', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + 1000 + ', height=' + 1000 + ', top=' + 0 + ', left=' + 0);
            return false;
        });
    });
</script>