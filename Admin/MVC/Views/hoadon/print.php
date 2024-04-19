<html><head><style>
        *{margin:0px auto;padding:0px;}
        div#wrapper{width:940px;padding:40px;font-family: Tahoma;font-size: 12px;}
        div#header{overflow: hidden;margin-bottom: 20px;}
        div#left_header{float:left;width:450px;}
        div#right_header{float:right;width:450px;text-align: center;padding-top: 20px;overflow: hidden;}
        div#left_header p{overflow: hidden;margin-bottom: 5px;}
        div#left_header label{width:100px;float:left;font-weight: bold;}
        div#right_header p{font-size:25px;}
        div#right_header span{font-weight: bold;font-size:12px;display: block;}
        div#customer{margin-bottom: 20px;}
        div#customer p{overflow: hidden;margin-bottom: 5px;}
        div#customer label{float:left;width:150px;font-weight: bold;}
        div#product{overflow: hidden}
        div#product table{border:1px solid #333;width:100%;border-collapse: collapse}
        div#product table thead tr th{border:1px solid #333;padding:5px;text-transform: uppercase;}
        div#product table tbody tr td{border:1px solid #333;padding:5px;text-align: center}
        div#product table tfoot tr td{border:1px solid #333;padding:5px;text-align: center}
        div#character{padding: 20px 0px;padding-left: 4px;}
        div#character p label{font-style: italic;}
        div#character p span{font-weight: bold;}
        div#footer{overflow: hidden;padding: 20px 0px;}
        div#left_footer{float:left;width:450px;text-transform: uppercase;text-align: center;font-size: 16px}
        div#right_footer{float:right;width:450px;text-align: center}
        a#print_button{margin-bottom: 10px;}
        @page
        {
            size: auto;   /* auto is the initial value */
            margin: 0mm;  /* this affects the margin in the printer settings */
        }
        .woocommerce-table__line-item.order_item a {
            color: #333;
            text-decoration: none;
            font-weight: 400 !important;
        }
        tr.woocommerce-table__line-item.order_item strong.product-quantity {
            font-weight: 400;
        }
    </style>

</head><body><div id="wrapper">
    <div id="header">
        <div id="left_header">
            <p>
                <label></label>
                <span><b>Tiệm cô trà</b></span>
            </p>
            <p>
                <label>Địa chỉ:</label>
                <span>Hà Nội</span>
            </p>
            <p>
                <label>Điện thoại:</label>
                <span>0974111234</span>
            </p></div>
        <div id="right_header">
            <p>HÓA ĐƠN BÁN HÀNG</p>
            <span>Số hóa đơn:DH<?php echo time(); ?></span>
        </div>
    </div>
    <div id="customer">
        <p>
            <label>Tên khách hàng:</label>
            <span><?php echo  ($data[0]['Ho'] ?? '')." ".($data[0]['Ten'] ?? '') ?></span>
        </p>
        <p>
            <label>Địa chỉ:</label>
            <span><?= ($data[0]['DiaChi'] ?? '') ?></span>
        </p>
        <p>
            <label>Điện thoại người đặt:</label>
            <span><?= ($data[0]['ndSDT'] ?? '') ?></span>
        </p>

        <p>
            <label>Người nhận:</label>
            <span><?= ($data[0]['NguoiNhan'] ?? '') ?></span>
        </p>
        <p>
            <label>Điện thoại người nhận:</label>
            <span><?= ($data[0]['SDT'] ?? '') ?></span>
        </p>

    </div>
    <div id="product">
        <table class="woocommerce-table woocommerce-table--order-details shop_table order_details">

            <thead>
            <tr>
                <th style="text-align:left; padding:5px;">Sản Phẩm</th>
                <th >Số Lượng</th>
                <th >Tổng</th>
            </tr>
            </thead>

            <tbody>
            <?php

            foreach ( $data as $item_id => $item ) {
            ?>
                <tr>
                    <td><?= ($item['TenSP'] ?? '') ?></td>
                    <td><?= ($item['SoLuong'] ?? 0) ?></td>
                    <td><?= ($item['SoLuong'] ?? 0) * ($item['DonGia'] ?? 0) ?></td>
                </tr>
            <?php } ?>
            </tbody>
            <tfoot>
                <tr>
                    <th style="text-align:left;  padding:5px; border:1px solid #333;" colspan="2" >Tổng cộng</th>
                    <td style="text-align:right;  padding:5px; font-weight:700;"><?= ($item['TongTien'] ?? 0) ?></td>
                </tr>
            </tfoot>
        </table>

        <?php //do_action( 'woocommerce_order_details_after_order_table', $order ); ?>


    </div>

    <div id="character">
    </div>
    <div id="footer">
        <div id="left_footer">
            <span>Khách hàng</span>
        </div>
        <div id="right_footer">
            <p>Ngày.........tháng...........năm...........</p>
            <p>Người bán hàng</p>
        </div>
    </div>
</div>
<script>
    function printpage() {
        window.print();
        window.close();
    }
    //    printpage();
</script></body></html>