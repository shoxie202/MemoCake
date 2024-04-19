<?php if (isset($_COOKIE['msg'])) { ?>
    <div class="alert alert-success">
        <strong>Thông báo</strong> <?= $_COOKIE['msg'] ?>
    </div>
<?php } ?>
<hr>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <form action="?mod=sanpham&act=update" method="POST" role="form" enctype="multipart/form-data">
        <input type="hidden" name="MaSP" value="<?= $data['MaSP'] ?>">
        <div class="form-group">
            <label for="cars">Loại sản phẩm: </label>
            <select id="" name="MaDM" class="form-control">
                <?php foreach ($data_dm as $row) { ?>
                    <option <?= ($row['MaDM'] == $data['MaDM'])?'selected':''?> value="<?= $row['MaDM'] ?>"><?= $row['TenDM'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="cars">Loại sản phẩm: </label>
            <select id="" name="MaLSP" class="form-control">
                <?php foreach ($data_lsp as $row) { ?>
                    <option <?= ($row['MaLSP'] == $data['MaLSP'])?'selected':''?> value="<?= $row['MaLSP'] ?>"><?= $row['TenLSP'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="">Tên sản phẩm</label>
            <input type="text" class="form-control" id="" placeholder="" name="TenSP" value="<?=$data['TenSP']?>">
        </div>
        <div class="form-group">
            <label for="">Đơn giá</label>
            <input type="text" class="form-control" id="" placeholder="" name="DonGia" value="<?=$data['DonGia']?>">
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="SoLuong" value="<?=$data['SoLuong']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 1</label>
            <img src="../public/<?=$data['HinhAnh1']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh1" value="<?=$data['HinhAnh1']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 2</label>
            <img src="../public/<?=$data['HinhAnh2']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh2" value="<?=$data['HinhAnh2']?>">
        </div>
        <div class="form-group">
            <label for="">Hình ảnh 3</label>
            <img src="../public/<?=$data['HinhAnh3']?>" height="200px" width="200px">
            <input type="file" class="form-control" id="" placeholder="" name="HinhAnh3" value="<?=$data['HinhAnh3']?>">
        </div>
        <div class="form-group">
            <label for="cars">Mã khuyến mãi </label>
            <select id="" name="MaKM" class="form-control">
                <?php foreach ($data_km as $row) { ?>
                    <option <?= ($row['MaKM'] == $data['MaKM'])?'selected':''?> value="<?= $row['MaKM'] ?>"><?= $row['TenKM'] ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="">Khối lượng</label>
            <input type="text" class="form-control" id="" placeholder="" name="Khoi_luong" value="<?=$data['Khoi_luong']?>">
        </div>
        <div class="form-group">
            <label for="">Kích thước</label>
            <input type="text" class="form-control" id="" placeholder="" name="Kich_thuoc" value="<?=$data['Kich_thuoc']?>">
        </div>
        <div class="form-group">
            <label for="">Màu</label>
            <input type="text" class="form-control" id="" placeholder="" name="Mau" value="<?=$data['Mau']?>">
        </div>
        <div class="form-group">
            <label for="">Nguyên liệu</label>
            <input type="text" class="form-control" id="" placeholder="" name="Chat_lieu" value="<?=$data['Chat_lieu']?>">
        </div>
        <div class="form-group">
            <label for="">Xuất Xứ</label>
            <input type="text" class="form-control" id="" placeholder="" name="Xuat_xu" value="<?=$data['Xuat_xu']?>">
        </div>
        <div class="form-group">
            <label for="">Hình dáng</label>
            <input type="text" class="form-control" id="" placeholder="" name="Hinh_dang" value="<?=$data['Hinh_dang']?>">
        </div>
        <div class="form-group">
            <label for="">Size</label>
            <input type="text" class="form-control" id="" placeholder="" name="Size" value="<?=$data['Size']?>">
        </div>
        <div class="form-group">
            <label for="">Hạn sử dụng</label>
            <input type="text" class="form-control" id="" placeholder="" name="HSD" value="<?=$data['HSD']?>">
        </div>
        <div class="form-group">
            <label for="">Lưu ý</label>
            <input type="text" class="form-control" id="" placeholder="" name="Luu_y" value="<?=$data['Luu_y']?>">
        </div>
        <label for="">Mô tả</label>
        <div class="form-group">
            <textarea class="form-control" id="summernote" placeholder="" name="MoTa"><?=$data['MoTa']?></textarea>
        </div>
        <div class="form-group">
            <label for="">Trạng thái</label>
            <input <?=($data['TrangThai']==1)?'checked':''?> type="checkbox" id="" placeholder="" value="1" name="TrangThai"><em>(Check cho phép hiện thị sản phẩm)</em>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
    <script>
        $(document).ready(function() {
            $('#summernote').summernote();
        });
    </script>