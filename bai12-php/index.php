<?php
    //nội dung php đặt ở đây
    echo "sao trung lại gay?";
    //biến: $tên biến = biến;
    $hoTen= "Khoa dai to";
    $tuoi =20;
    //để nối chuỗi dùng dấu .
    echo $hoTen . " ". $tuoi. "<br>";

    //strlen() độ dài chuỗi;
    echo strlen($hoTen)."<br>";

    //đếm số từ
    echo str_word_count($hoTen)."<br>";

    //tìm kiếm kí tự trong chuỗi
    echo strpos($hoTen,"o")."<br>";
    
    //thay thế kí tự trong chuỗi

    echo str_replace("dai","chim",$hoTen)."<br>";

    $soThuNhat=10;
    $soThuHai=5;
    //phep cộng
    $tong= $soThuNhat + $soThuHai;
    echo $tong."<br>";
    //- * /
    echo $soThuNhat - $soThuHai."<br>";
    echo $soThuNhat * $soThuHai."<br>";
    echo $soThuNhat / $soThuHai."<br>";

    //toán tử gán
     $soThuNhat += $soThuHai;
     echo $soThuNhat."<br>";
     $soThuNhat -= $soThuHai;
     echo $soThuNhat."<br>";
     $soThuNhat *= $soThuHai;
     echo $soThuNhat."<br>";
     $soThuNhat /= $soThuHai;
     echo $soThuNhat."<br>";
     $soThuNhat %= $soThuHai;
     echo $soThuNhat."<br>";

    //toán tử so sánh
    echo  $soThuNhat < $soThuHai."<br>";
    echo  $soThuNhat > $soThuHai."<br>";
    echo  $soThuNhat <= $soThuHai."<br>";
    echo  $soThuNhat >= $soThuHai."<br>";
    echo  $soThuNhat == $soThuHai."<br>";
    echo  $soThuNhat != $soThuHai;
    echo "<br>";
    echo  $soThuNhat === $soThuHai."<br>";

    //câu điều kiện
    // if(){
    // }
    // elseif(){

    // }else{

    // }

    //kiểm tra tổng của số thứ nhất và số thứ 2
    // nếu<15 thì in ra nhỏ hơn 15
    // nếu =15 thì in ra tổng =15
    // còn lại thì in ra lớn hơn 15
    if($tong<15){
        echo "nhỏ hơn 15 nhé ông";
    }
    elseif($tong==15){
        echo "tổng = 15 nhé ông ơi";    
    }
    else{
        echo "lớn hơn 15 nhé ông ey";
    }
    //switch case
    $color="red";
    switch($color){
        case "red":
            echo "<br>";
            echo "IS RED";
            break;
        case "blue":
            echo "<br>";
            echo "IS BLUE";
            BREAK;
        default:
            echo "<br>";
            echo "IS BLUE";
            BREAK;
    }

    //for
    for($i=0;$i<100;$i++){
        echo $i."<br>";
    }
    

    //mảng
    echo "<br>";

    $mang =["Khoa","Trung","Hieu"];
    //dem phan tu
    echo count ($mang). "<br>";
    echo $mang[0]."<br>";

    $mang[]="Viet Nam";
    print_r($mang);
    echo $mang[3];

    echo "<br>";
    unset($mang[3]);
    print_r($mang);
?>