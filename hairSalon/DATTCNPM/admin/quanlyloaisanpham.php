<?php
session_start();
if (!isset($_SESSION["user"])) {
    header("location:../account.php");
}
?>
<?php
    include 'config.php';
    if(isset($_POST['sbm']) && !empty($_POST['search'])){
        $search = $_POST['search'];
        $sql = "SELECT * FROM product_type WHERE name LIKE '%$search%'";
        $res = mysqli_query($conn, $sql);
        $total_prd = mysqli_num_rows($res);
    }else{
        $sql = "SELECT * FROM sanpham";
        $query = mysqli_query($conn, $sql);
    }

    if(isset($_POST['all_prd'])){
        unset($_POST['sbm']);
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="admin.css" />
    <link rel="stylesheet" href="../css/style.css" />
    <title>ADMIN</title>
</head>

<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                    class="fa fa-cogs me-2"></i>admin</div>
            <div class="list-group list-group-flush my-3">
                <a href="index.php" class="list-group-item list-group-item-action bg-transparent second-text "><i
                        class="fas fa-shopping-bag me-2"></i>Trang chủ</a>
                <a href="quanlysanpham.php" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                        class="fas fa-shopping-bag me-2"></i>Sản phẩm</a>
                <a href="quanlylichhen.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-project-diagram me-2"></i>Lịch Hẹn</a>
                <a href="quanlychinhanh.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold "><i
                        class="fas fa-project-diagram me-2"></i>Chi Nhánh</a>
                <a href="quanlyuser.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-users me-2"></i>Khách hàng</a>
                <a href="quanlynhanvien.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-users me-2"></i>Nhân Viên</a>
                <a href="quanlycalam.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-users me-2"></i>Ca Làm Việc</a>
                <a href="quanlymautoc.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-users me-2"></i>Kiểu Tóc</a>
                <a href="quanlydonhang.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-users me-2"></i>Đơn Hàng</a>
                <a href="quanlybaocao.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-paperclip me-2"></i>Báo cáo</a>
                <a href="quanlydoanhthu.php" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                        class="fas fa-shopping-cart me-2"></i>Doanh thu</a>
                <a href="../logout.php" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
                        class="fas fa-power-off me-2"></i>Đăng xuất</a>
            </div>
        </div>
        <!-- /#sidebar-End -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                    <h3 class="fs-2 m-0">Quản Lý Loại Sản Phẩm</h3>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i><?php if (isset($_SESSION['user']) && $_SESSION['user']){
                        echo $_SESSION['user'];
                    }
                    else{
                        echo 'Bạn chưa đăng nhập';
                    }?>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Hồ sơ</a></li>
                                <li><a class="dropdown-item" href="#">Cài đặt</a></li>
                                <li><a class="dropdown-item" href="../logout.php">Đăng xuất</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="container-fluid px-4">
                <div class="row g-3 my-2">
                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">720</h3>
                                <p class="fs-5">Sản Phẩm</p>
                            </div>
                            <i class="fas fa-gift fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">4920</h3>
                                <p class="fs-5"><a href="quanlyloaisanpham.php" style="color: #EA8025;">Loại Sản Phẩm</a></p>
                            </div>
                            <i
                                class="fas fa-hand-holding-usd fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">3899</h3>
                                <p class="fs-5">Best Sales</p>
                            </div>
                            <i class="fas fa-truck fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">%25</h3>
                                <p class="fs-5">Doanh Thu</p>
                            </div>
                            <i class="fas fa-chart-line fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>
                </div>

                <div    class="row my-5">
                    <ul class="quanly">
                    <li><a href="themloaihang.php" class="btn__add" style="padding: 15px 50px; background-color: #f18a1c; border-radius: 4px; text-align: center;padding-top: 8px; color: #fff; font-size: 18px; font-weight: 600;">
                            Thêm mới
                        </a></li>
                    <?php
                if(isset($total_prd)){
                    if($total_prd !==0){
                        echo "<p class='text-success'>Tìm thấy $total_prd sản phẩm</p>";
                    }else{
                        echo "<p class='text-danger'> Không tìm thấy sản phẩm nào! </p>";
                    }
                }
            ?>
                    <li><form method="POST" class="d-flex" action="">
                            <input name="search" type="search" class="form-control" style="border-color: #000;height: 40px; width: 300px; position: relative;">
                            <button name="sbm" class="btn btn-success" style=" border-color: #f18a1c; border: unset; margin-top: 0px; padding: 8px 10px;">Tìm kiếm</button>
                        </form>
                    </li>
                    </ul>
                    <?php
                            if(isset($_POST['sbm']) && !empty($_POST['search'])){?>
                                <form method="POST" action="">
                                    <button name="all_prd" class='btn btn-success text-light'>Tất cả sản phẩm</button>
                                </form>
                        <?php } ?>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Tên Loại</th>
                                    <th scope="col">Hình Ảnh</th>
                                    <th scope="col">Số Lượng</th>
                                    <th scope="col">Đặc Tả</th>
                                    <th scope="col">Chức Năng</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                include '../config.php';
                                $result=mysqli_query($conn, "SELECT * FROM `product_type`");
                                $row = mysqli_fetch_assoc($result);
                                $totalRecords = mysqli_query($conn, "SELECT * FROM `product_type`");
                                $totalRecords = $totalRecords->num_rows;
                                $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                                $limit = 6;


                                $total_page = ceil($totalRecords / $limit);

                                if ($current_page > $total_page){
                                    $current_page = $total_page;
                                }
                                else if ($current_page < 1){
                                    $current_page = 1;
                                }
                                $i = 1;
                                $start = ($current_page - 1) * $limit;
                                $result = mysqli_query($conn, "SELECT * FROM product_type LIMIT $start, $limit");
                                while ($row = mysqli_fetch_array($result)){
                            ?>
                                <tr>
                                    <th scope="row"><?php echo $i++ ?></th>
                                   <td> <a href="quanlytungloai.php?id=<?php echo $row['id']?>" style="color:#000;"><?php echo $row['name']?></a></td>
                                    <td><img src="../img/sanpham/<?php echo $row["img"]?>" alt="" style="height: 160px; width: 150px;"></td>
                                    <td><?php echo $row['soluong']?></td>
                                    <td><?php echo $row['descript']?></td>
                                    <td>
                                        <a class="btn btn-warning" style=" line-height: 40px; padding: 0px 20px; background-color:#ffc107; border-radius: 3px" href="sualoaihang.php?id=<?php echo $row['id']?>">Sửa</a>
                                        <a class="btn btn-danger" style="line-height: 40px; padding: 0px 20px; background-color:#dc3545; border-radius: 0.25rem;" href="xoaloaihang.php?id=<?php echo $row['id']?>">Xóa</a>
                                    </td>
                                </tr>
                            <?php }?>
                            </tbody>
                                </table>
                <ul class="pagination">
                <?php for ($i = 1; $i <= $total_page; $i++){

                    if ($i == $current_page){
                        echo '<li class="pag-item"><span >'.$i.'</span></li>';
                    }
                    else{
                        echo '<li class="pag-item"><a href = "quanlyloaisanpham.php?page='.$i.'">'.$i.'</a></li>';
                    }
                    }?>
                    </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /#page-content-End -->
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var el = document.getElementById("wrapper");
        var toggleButton = document.getElementById("menu-toggle");

        toggleButton.onclick = function () {
            el.classList.toggle("toggled");
        };
    </script>
</body>

</html>