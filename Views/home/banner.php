<div class="main-slider-one main-slider-two slider-area">
    <div id="wrapper">
        <div class="slider-wrapper">
            <div id="mainSlider" class="nivoSlider">
                <?php $i=3; foreach ($data_banner as  $value) {  ?>
                <img style="" src="public/<?=$value['HinhAnh']?>" alt="main slider" title="#htmlcaption"/>
                <?php } ?>
            </div>
            <div id="htmlcaption" class="nivo-html-caption slider-caption">
                <div class="container">
                    <div style="" class="slider-left slider-right">
                        <div class="slide-text animated zoomInUp">
                      
                        </div>
                        <div class="animated slider-btn fadeInUpBig">
                            <a class="shop-btn" href="index.php?act=shop"  style="margin-top:250px;">Mua ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>							
    </div>
</div>