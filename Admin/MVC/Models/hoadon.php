<?php
require_once("model.php");
class Hoadon extends Model
{
    var $table = "hoadon";
    var $contens = "MaHD";
    function trangthai($id){
        $query = "select * from HoaDon where TrangThai = $id  ORDER BY MaHD DESC";

        require("result.php");

        return $data;
    }
    function chitiethoadon($id){
        $query = "select ct.*, s.TenSP as Ten from chitiethoadon as ct, sanpham as s where ct.MaSP = s.MaSP and ct.MaHD = $id ";

        require("result.php");
        
        return $data;
    }

    function inhoadon($id){
        $query = "select
                    hd.*, ct.*, nd.Ho, nd.Ten, nd.SDT as ndSDT, s.TenSP
                    from hoadon as hd
                    join chitiethoadon as ct on hd.MaHD = ct.MaHD
                    join sanpham as s on ct.MaSP = s.MaSP
                    left join nguoidung nd ON nd.MaND = hd.MaND
                    where hd.MaHD = $id ";

        require("result.php");

        return $data;
    }
}