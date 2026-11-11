<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .khoi{
            border: 1px solid black;
            border-radius: 10px;
            width: 300px;
            margin: 20vh auto;
            background-color: antiquewhite;
        }
        input{
            padding:5px 0;
            margin:10px 0;
        }
        form{
            padding:10px;
        }
        h1{
            margin: 5px 0; 
        }
    </style>
</head>
<body>
    <div class="khoi">
        <div style="width: 80%; margin:auto; text-align:center" class="">
            <h1>Đăng nhập</h1>
            <form action="dangnhap.php" method="POST" >
                <div class="">
                    <p><b>Đăng Nhập</b></p>
                    <input type="text" name="tendangnhap" id="" placeholder="ten dang nhap">
                </div>
                <div class="">
                    <p><b>Mật Khẩu</b></p>
                    <input type="password" name="matkhau" id="" placeholder="mat khau">
                </div>
                <div class="">
                    <button type="submit">
                        Đăng Nhập
                    </button>
                </div>
            </form>
    </div>
    <?php
        if(isset($_POST["tendangnhap"]) && isset($_POST["matkhau"])){
            $tendangnhap=$_POST["tendangnhap"];
            $matkhau=$_POST["matkhau"];
            if($tendangnhap=="admin" && $matkhau=="123"){
                session_start();
                $_SESSION['dangnhap']="thanhcong";
                header("location:trangchu.php");
            }
            else{
                echo "tên đăng nhập hoặc mật khẩu khong đúng nhé";
            }
        }
    ?>
</body>
</html>