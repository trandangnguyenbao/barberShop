
<?php
    include "header.php"
?>
<?php
    include 'config.php';
    $sql = "SELECT * FROM sanpham" ;
    $query = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/boostrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="remixicons/fonts/remixicon.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css" integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css"> 
    <title>hair salon</title>
</head>
<body id="home" data-bs-spy="scroll" data-bs-target=".navbar">
    <!-- CAM KET -->
    <section id="surrance">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 surrance">
                    <img src="img/anhmau/ah1.svg" alt="">
                    <p>Giao hàng siêu tốc 2h</p>
                </div>
                <div class="col-lg-3 col-md-3 surrance">
                    <img src="img/anhmau/ah2.svg" alt="">
                    <p>Hoàn tiền 120%</p>
                </div>
                <div class="col-lg-3 col-md-3 surrance">
                    <img src="img/anhmau/ah3.svg" alt="">
                    <p>Đổi trả tận nơi</p>
                </div>
                <div class="col-lg-3 col-md-3 surrance">
                    <img src="img/anhmau/ah4.svg" alt="">
                    <p>Hiệu quả trong 7 ngày</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-2 col-md-4 col-sm-4 surrance-item">
                    <img src="img/anhmau/hot.png" alt="">
                    <p>Sản phẩm mới</p>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 surrance-item">
                    <img src="img/anhmau/sale-shock.png" alt="">
                    <p>Sale sốc deal hời</p>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 surrance-item">
                    <img src="img/anhmau/doc-quyen.png" alt="">
                    <p>Sản phẩm độc quyền</p>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 surrance-item">
                    <img src="img/anhmau/het-mun.png" alt="">
                    <p>Nhanh hết mụn</p>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 surrance-item">
                    <img src="img/anhmau/skincare.png" alt="">
                    <p>Chăm sóc da mặt</p>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-4 surrance-item">
                    <img src="img/anhmau/toc-dep.png" alt="">
                    <p>Muốn có tóc đẹp</p>
                </div>
            </div>
        </div>
    </section>
    <!-- CAM KET -->
    <!-- PRODUCT NEWS -->
    <section id="product-new">
        <div class="container">
            <div class="title-top">
                <div class="title">
                    <h1 class="text-color d-md-none d-sm-none d-lg-block d-none">Sản Phẩm Mới Nhất</h1>
                    <h3 class="text-color d-lg-none">Sản Phẩm Mới Nhất</h3>
                    <div class="title-line"></div>
                </div>
                <div class="search-product d-none d-lg-block d-md-block d-sm-block">
                    <select name="search" id="">
                        <option value="Sắp Xếp Theo Giá">Sắp Xếp Theo Giá</option>
                        <option value="Sắp Xếp Theo Tên">Sắp Xếp Theo Tên</option>
                        <option value="Sắp Xếp Theo Đánh Giá">Sắp Xếp Theo Đánh Giá</option>
                        <option value="Sắp Xếp Theo Độ Phổ Biến">Sắp Xếp Theo Độ Phổ Biến</option>
                    </select>
                </div>
            </div>
            <div class="row gy-5">
            <?php
                include 'config.php';
                $result=mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 1");
                $row = mysqli_fetch_assoc($result);
                $totalRecords = mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 1");
                $totalRecords = $totalRecords->num_rows;
                $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                $limit = 8;


                $total_page = ceil($totalRecords / $limit);

                if ($current_page > $total_page){
                    $current_page = $total_page;
                }
                else if ($current_page < 1){
                    $current_page = 1;
                }
                
                $start = ($current_page - 1) * $limit;
                $result = mysqli_query($conn, "SELECT * FROM sanpham where product_type = 1 LIMIT $start, $limit");
                while ($row = mysqli_fetch_array($result)){
            ?>
                <div class="col-lg-3 col-md-6 product-new">
                    <div class="product-link"><a href="product-details.php?id=<?= $row['id']?>">
                    <img src="img/sanpham/<?php echo $row['product_img']; ?>" alt="">
                    <div class="social-links">
                        <a href="#" class="social__links"><i class="ri-heart-fill"></i></a>
                        <a href="product-details.php?id=<?= $row['id']?>" class="social__links"><i class="ri-shopping-bag-line"></i></a>
                    </div> 
                    <p class="descript"><a href="product_details.php?id=<?= $row['id']?>"><?= $row['product_name'] ?></a></p>
                    <ul class="price">
                        <li class="price-now">
                            <p><?= number_format($row['product_cost'], 0, ",", ".") ?></p>
                        </li>
                        <li class="price-old"><del><?= number_format($row['product_oldcost'], 0, ",", ".") ?></del></li>
                    </ul>
                    <ul class="rating">
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                    </ul>
                    <?php
                //         if ($current_page > 1 && $total_page > 1){
                //     echo '<button style = "height:30px;width:30px; background-color:white; color:black;"><a  href= "product.php?page='.($current_page-1).'"><i class="fa fa-chevron-left"></i></a></button>';
                // }

                // if ($current_page < $total_page && $total_page > 1){
                //     echo '<button style = "height:30px;width:30px; background-color:white; color:black;font-weight: bolder;"><a href="product.php?page='.($current_page+1).'"><i class="fa fa-chevron-right"></i></a></button>';
                // }

                ?> 
                    </div></a>
                </div>
                <?php } ?>
                <ul class="pagination">
                <?php for ($i = 1; $i <= $total_page; $i++){

                    if ($i == $current_page){
                        echo '<li class="pag-item"><span >'.$i.'</span></li>';
                    }
                    else{
                        echo '<li class="pag-item"><a href = "product.php?page='.$i.'">'.$i.'</a></li>';
                    }
                }?>
                </ul>
            </div>
        </div>
    </section>
    <!-- PRODUCT TRENDING -->
    <section id="product-trend">
        <div class="container">
            <div class="title-top">
                <div class="title">
                    <h1 class="text-color d-md-none d-sm-none d-lg-block d-none">Sản Phẩm Bán Chạy</h1>
                    <h3 class="text-color d-lg-none">Sản Phẩm Bán Chạy</h3>
                    <div class="title-line"></div>
                </div>
                <div class="search-product d-none d-lg-block d-md-block d-sm-block">
                    <select name="search" id="">
                        <option value="Sắp Xếp Theo Giá">Sắp Xếp Theo Giá</option>
                        <option value="Sắp Xếp Theo Tên">Sắp Xếp Theo Tên</option>
                        <option value="Sắp Xếp Theo Đánh Giá">Sắp Xếp Theo Đánh Giá</option>
                        <option value="Sắp Xếp Theo Độ Phổ Biến">Sắp Xếp Theo Độ Phổ Biến</option>
                    </select>
                </div>
            </div>
            <div class="row gy-5">
            <?php
                include 'config.php';
                $result=mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 3");
                $row = mysqli_fetch_assoc($result);
                $totalRecords = mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 2");
                $totalRecords = $totalRecords->num_rows;
                $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                $limit = 8;


                $total_page = ceil($totalRecords / $limit);

                if ($current_page > $total_page){
                    $current_page = $total_page;
                }
                else if ($current_page < 1){
                    $current_page = 1;
                }
                
                $start = ($current_page - 1) * $limit;
                $result = mysqli_query($conn, "SELECT * FROM sanpham where product_type = 2 LIMIT $start, $limit");
                while ($row = mysqli_fetch_array($result)){
            ?>
                <div class="col-lg-3 col-md-6 product-new">
                    <div class="product-link"><a href="product-details.php?id=<?= $row['id']?>">
                    <img src="img/sanpham/<?php echo $row['product_img']; ?>" alt="">
                    <div class="social-links">
                        <a href="#" class="social__links"><i class="ri-heart-fill"></i></a>
                        <a href="product-details.php?id=<?= $row['id']?>" class="social__links"><i class="ri-shopping-bag-line"></i></a>
                    </div> 
                    <p class="descript"><a href="product_details.php?id=<?= $row['id']?>"><?= $row['product_name'] ?></a></p>
                    <ul class="price">
                        <li class="price-now">
                            <p><?= number_format($row['product_cost'], 0, ",", ".") ?></p>
                        </li>
                        <li class="price-old"><del><?= number_format($row['product_oldcost'], 0, ",", ".") ?></del></li>
                    </ul>
                    <ul class="rating">
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                    </ul>
                    </div></a>
                </div>
                <?php } ?>
                <ul class="pagination">
                <?php for ($i = 1; $i <= $total_page; $i++){

                    if ($i == $current_page){
                        echo '<li class="pag-item"><span >'.$i.'</span></li>';
                    }
                    else{
                        echo '<li class="pag-item"><a href = "product.php?page='.$i.'">'.$i.'</a></li>';
                    }
                }?>
                </ul>
            </div>
        </div>
    </section>
    <!-- PRODUCT TRENDING -->
    <!-- PRODUCT COMBO -->
    <section id="product-combo">
        <div class="container">
            <div class="title-top">
                <div class="title">
                    <h1 class="text-color d-md-none d-sm-none d-lg-block d-none">ComBo Siêu Tiết Kiệm</h1>
                    <h3 class="text-color d-lg-none">ComBo Siêu Tiết Kiệm</h3>
                    <div class="title-line"></div>
                </div>
                <div class="search-product d-none d-lg-block d-md-block d-sm-block">
                    <select name="search" id="">
                        <option value="Sắp Xếp Theo Giá">Sắp Xếp Theo Giá</option>
                        <option value="Sắp Xếp Theo Tên">Sắp Xếp Theo Tên</option>
                        <option value="Sắp Xếp Theo Đánh Giá">Sắp Xếp Theo Đánh Giá</option>
                        <option value="Sắp Xếp Theo Độ Phổ Biến">Sắp Xếp Theo Độ Phổ Biến</option>
                    </select>
                </div>
            </div>
            <div class="row gy-5">
            <?php
                include 'config.php';
                $result=mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 3");
                $row = mysqli_fetch_assoc($result);
                $totalRecords = mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 3");
                $totalRecords = $totalRecords->num_rows;
                $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                $limit = 8;


                $total_page = ceil($totalRecords / $limit);

                if ($current_page > $total_page){
                    $current_page = $total_page;
                }
                else if ($current_page < 1){
                    $current_page = 1;
                }
                
                $start = ($current_page - 1) * $limit;
                $result = mysqli_query($conn, "SELECT * FROM sanpham where product_type = 3 LIMIT $start, $limit");
                while ($row = mysqli_fetch_array($result)){
            ?>
                <div class="col-lg-3 col-md-6 product-new">
                    <div class="product-link"><a href="product-details.php?id=<?= $row['id']?>">
                    <img src="img/sanpham/<?php echo $row['product_img']; ?>" alt="">
                    <div class="social-links">
                        <a href="#" class="social__links"><i class="ri-heart-fill"></i></a>
                        <a href="product-details.php?id=<?= $row['id']?>" class="social__links"><i class="ri-shopping-bag-line"></i></a>
                    </div> 
                    <p class="descript"><a href="product_details.php?id=<?= $row['id']?>"><?= $row['product_name'] ?></a></p>
                    <ul class="price">
                        <li class="price-now">
                            <p><?= number_format($row['product_cost'], 0, ",", ".") ?></p>
                        </li>
                        <li class="price-old"><del><?= number_format($row['product_oldcost'], 0, ",", ".") ?></del></li>
                    </ul>
                    <ul class="rating">
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                    </ul>
                    </div></a>
                </div>
                <?php } ?>
                <ul class="pagination">
                <?php for ($i = 1; $i <= $total_page; $i++){

                    if ($i == $current_page){
                        echo '<li class="pag-item"><span >'.$i.'</span></li>';
                    }
                    else{
                        echo '<li class="pag-item"><a href = "product.php?page='.$i.'">'.$i.'</a></li>';
                    }
                }?>
                </ul>
            </div>
        </div>
    </section>
    <!-- PRODUCT COMBO -->
    <!-- PRODUCT PERSONAL -->
    <section id="product-personal">
    <div class="container">
            <div class="title-top">
                <div class="title">
                    <h1 class="text-color d-md-none d-sm-none d-lg-block d-none">Chăm Sóc Cá Nhân</h1>
                    <h3 class="text-color d-lg-none">Chăm Sóc Cá Nhân</h3>
                    <div class="title-line"></div>
                </div>
                <div class="search-product d-none d-lg-block d-md-block d-sm-block">
                    <select name="search" id="">
                        <option value="Sắp Xếp Theo Giá">Sắp Xếp Theo Giá</option>
                        <option value="Sắp Xếp Theo Tên">Sắp Xếp Theo Tên</option>
                        <option value="Sắp Xếp Theo Đánh Giá">Sắp Xếp Theo Đánh Giá</option>
                        <option value="Sắp Xếp Theo Độ Phổ Biến">Sắp Xếp Theo Độ Phổ Biến</option>
                    </select>
                </div>
            </div>
            <div class="row gy-5">
            <?php
                include 'config.php';
                $result=mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 4");
                $row = mysqli_fetch_assoc($result);
                $totalRecords = mysqli_query($conn, "SELECT * FROM `sanpham` where product_type = 4");
                $totalRecords = $totalRecords->num_rows;
                $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                $limit = 8;


                $total_page = ceil($totalRecords / $limit);

                if ($current_page > $total_page){
                    $current_page = $total_page;
                }
                else if ($current_page < 1){
                    $current_page = 1;
                }
                
                $start = ($current_page - 1) * $limit;
                $result = mysqli_query($conn, "SELECT * FROM sanpham where product_type = 4 LIMIT $start, $limit");
                while ($row = mysqli_fetch_array($result)){
            ?>
                <div class="col-lg-3 col-md-6 product-new">
                    <div class="product-link"><a href="product-details.php?id=<?= $row['id']?>">
                    <img src="img/sanpham/<?php echo $row['product_img']; ?>" alt="">
                    <div class="social-links">
                        <a href="#" class="social__links"><i class="ri-heart-fill"></i></a>
                        <a href="product-details.php?id=<?= $row['id']?>" class="social__links"><i class="ri-shopping-bag-line"></i></a>
                    </div> 
                    <p class="descript"><a href="product_details.php?id=<?= $row['id']?>"><?= $row['product_name'] ?></a></p>
                    <ul class="price">
                        <li class="price-now">
                            <p><?= number_format($row['product_cost'], 0, ",", ".") ?></p>
                        </li>
                        <li class="price-old"><del><?= number_format($row['product_oldcost'], 0, ",", ".") ?></del></li>
                    </ul>
                    <ul class="rating">
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                        <li class="rating"><i class="ri-star-fill"></i></li>
                    </ul>
                    </div></a>
                </div>
                <?php } ?>
                <ul class="pagination">
                <?php for ($i = 1; $i <= $total_page; $i++){

                    if ($i == $current_page){
                        echo '<li class="pag-item"><span >'.$i.'</span></li>';
                    }
                    else{
                        echo '<li class="pag-item"><a href = "product.php?page='.$i.'">'.$i.'</a></li>';
                    }
                }?>
                </ul>
            </div>
        </div>
    </section>
    <!-- PRODUCT PERSONAL -->

    <!-- THƯƠNG HIỆU -->
    <section class="thuonghieu">
        <div class="container">
            <h1 class="text-color d-md-none d-sm-none d-lg-block d-none">THƯƠNG HIỆU NỔI BẬT</h1>
            <h3 class="text-color d-lg-none">THƯƠNG HIỆU NỔI BẬT</h3>
            <br>
            <div class="row">
                <div class="thuonghieu-item">
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th1.webp" alt="">
                    </div>
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th2.webp" alt="">
                    </div>
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th3.webp" alt="">
                    </div>
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th4.webp" alt="">
                    </div>
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th5.webp" alt="">
                    </div>
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th6.webp" alt="">
                    </div>
                    <div class="col-lg-2 col-md-2 thuonghieu">
                        <img src="img/anhmau/th7.webp" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- THƯƠNG HIỆU -->

    <!-- CAM KẾT -->
    <section id="camket">
        <div class="container">
            <div class="row gy-5">
                <h2 class="text-color d-md-none d-lg-none">Cam Kết</h2>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-1.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block d-lg-block">Cam kết 7 ngày hiệu quả</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-2.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">Mua 1 hưởng 5 đặc quyền</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-3.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">Chính sách hoàn tiền 120%</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-4.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">Sản phẩm chất lượng cao</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-5.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">Giao hàng siêu tốc 2h</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-6.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">Đổi trả tận nơi trong 24h</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-7.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">Tổng đài tư vấn mọi lúc mọi nơi</p>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 camket">
                    <img src="img/anhmau/usp-icon-8.png" alt="">
                    <p class="d-sm-none d-md-block d-lg-block">An toàn chuẩn giao vận quốc tế</p>
                </div>
            </div>
        </div>
    </section>
    <!-- CAM KẾT -->


    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js" integrity="sha512-HGOnQO9+SP1V92SrtZfjqxxtLmVzqZpjFFekvzZVWoiASSQgSr4cw9Kqd2+l8Llp4Gm0G8GIFJ4ddwZilcdb8A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js" integrity="sha512-eP8DK17a+MOcKHXC5Yrqzd8WI5WKh6F1TIk5QZ/8Lbv+8ssblcz7oGC8ZmQ/ZSAPa7ZmsCU4e/hcovqR8jfJqA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
      $('.thuonghieu-item').slick({
  slidesToShow: 6,
  slidesToScroll: 1, 
  arrows:true,
  Infinity:true
});

var filtered = false;

$('.js-filter').on('click', function(){
  if (filtered === false) {
    $('.filtering').slick('slickFilter',':even');
    $(this).text('Unfilter Slides');
    filtered = true;
   } else {
    $('.filtering').slick('slickUnfilter');
     $(this).text('Filter Slides');
     filtered = false;
   }
});
  </script>
  </body>
</html>
<?php
    include "footer.php"
?>