<?php
ob_start();
session_start();

// cookies
// if(count($_COOKIE) > 1) {
//     setcookie('user', $_COOKIE['user'], time() + (86400 * 10), '/');
//     setcookie('id', $_COOKIE['id'], time() + (86400 * 10), '/');
//     $_SESSION['id'] = $_COOKIE['id'];
//     $_SESSION['user'] = $_COOKIE['user'];
// };

include "../Model/index.php";
include "../view/components/Header.php";

function setSession($username)
{
    $user = finduser($username);
    $_SESSION['id'] = $user['MaTaiKhoan'];
    $_SESSION['user'] = $user['TenDangNhap'];
    //Role 1 quản lí bệnh viện
    if ($user['Role'] == 1) {
        $_SESSION['hospitalAdmin'] = $user;
        header('location: ../Screen/HospitalAdmin/index.php');
        //Role 2 quản lí hệ thống
    } else if ($user['Role'] == 2) {
        $_SESSION['systemAdmin'] = $user;
        header('location: ../Screen/SystemAdmin/index.php');
        //Role 3 nhân viên bệnh viện
    } else if ($user['Role'] == 3) {
        $_SESSION['HospitalEmployee'] = $user;
        header('location: ../Screen/HospitalEmployee/index.php');
        //Role 4 
    } else if ($user['Role'] == 4) {
        $_SESSION['HospitalWardEmployee'] = $user;
        header('location: ../Screen/HospitalWardEmployee/index.php');
    } else {
        setcookie('user', $_SESSION['user'], time() + (86400 * 10), '/');
        setcookie('id', $_SESSION['id'], time() + (86400 * 10), '/');
        header('location: index.php');
    }
}

if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        case 'contact':
            include '../view/components/Contact.php';
            break;
        case 'about':
            include '../view/components/About.php';
            break;
        case 'khaibaoyte':
            include "../view/components/HealthDeclaration.php";
            break;
        case 'new':
            include '../view/components/News.php';
            break;
        case 'giayxacnhan':
            include "../view/components/certification.php";
            break;
            // case 'updatethongtin':
            //     $get = get_user_by_id($_SESSION['id']);

            //     include "../view/components/Updateinformation.php";
            //     break;
        case 'dangkydieutri':
            $RegisterForTreatment = get_csyt();
            if (isset($_POST['txtcoso'])) {
                $print = thongtin($_POST['txtcoso']);
            }
            if (isset($_POST['guiyeucau']) && $_POST['guiyeucau']) {
                $mahs = $_POST['hosobn'];
                $ngayyeucau = $_POST['txtdate'];
                $tinhtrangsuckhoe = $_POST['txttinhtrang'];
                $mcsyt = $_POST['txtcoso'];
                $thongbaoloi = array();
                if (!preg_match('/^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổ,ỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s]{0,}$/', $_POST['txttinhtrang'])) {
                    $thongbaoloi['txttinhtrang']['sai'] = 'Không được nhập số';
                    echo "<script>alert('" . $thongbaloi['txttinhtrang']['sai'] . "')</script>";
                    header('refresh:0; url="index.php?act=dangkydieutri"');
                    break;
                }
                try {
                    $sql = add_dangkydieutri($tinhtrangsuckhoe, $ngayyeucau, $mahs, $mcsyt);
                    $conn = connect();
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();
                } catch (PDOException $e) {
                    echo $sql . "</br>" . $e->getMessage();
                }
                $conn = null;
                echo '<script>alert("Gửi thành công")</script>';
                header('refresh:0; url="index.php?act=dangkydieutri"');
                // include '../view/components/RegisterForTreatment.php';
                // break;
            }
            include "../view/components/RegisterForTreatment.php";
            break;
            // case 'doctors':
            //     include '../view/components/Doctors.php';
            //     break;
            // case 'search':
            //     if(isset($_POST['keyword']) && ($_POST['keyword']!='')){
            //         $listsearch = showsearch($_POST['keyword']);
            //         include '../view/search.php';
            //     }
            //     break;
        case 'login':
            if (isset($_POST['login']) && ($_POST['login'])) {

                $checkLogin = login($_POST);

                if ($checkLogin == $_POST['user']) {
                    setSession($checkLogin);
                } else {
                    echo '<script>alert("' . $checkLogin . '")</script>';
                }
            }
            include "../view/components/Login.php";
            break;
            // case 'user':
            //     $user = get_user_by_id($_SESSION['id']);
            //     $orders = get_limit_orders($_SESSION['id'], 5);
            //     include "./view/components/Updateinformation.php";
            //     break;
            // case 'edit_pass':
            //     if (isset($_POST['submit']) && ($_POST['submit'])) {
            //         $user = $_SESSION['user'];
            //         $pass = $_POST['password'];
            //         $newpass = $_POST['newpass'];
            //         $pass_hash = password_hash($newpass, PASSWORD_BCRYPT);
            //         updatepass($user, $pass_hash);
            //         header('location: index.php?act=user');
            //     }
            //     include "../view/edit_pass.php";
            //     break;
        case 'edit_user':
            // lấy thông tin user
            $user = get_user_by_id($_SESSION['id']);
            $HoTen = $user["HoTen"];
            $DiaChi = $user['DiaChi'];
            $NgaySinh = $user["NgaySinh"];
            $SDT = $user["SDT"];
            $Mail = $user["Email"];
            $CCCD = $user["CCCD"];
            if (isset($_POST['btnUpdate'])) {
                $resultEditUser = editUser($_POST, $_SESSION['id']);
                echo "<script>alert('" . $resultEditUser . "')</script>";
                if($resultEditUser == 'Cập nhật thông tin thành công')
                    header('refresh:0;');
            }
            include "../view/components/Updateinformation.php";
            break;
        case 'logout':
            if (isset($_SESSION['id'])) unset($_SESSION['id']);
            if (isset($_SESSION['user'])) unset($_SESSION['user']);
            // setcookie('user', '', time() - 1, '/');
            // setcookie('id', '', time() - 1, '/');
            // include "../view/components/Home.php";
            header('location: index.php');
            // include "../index.php";
            break;
        case 'register':
            if (isset($_POST['register']) && ($_POST['register'])) {
                if (isset($_POST['register']) && ($_POST['register'])) {
                    $resultRegister = register($_POST);
                    if ($resultRegister != $_POST['user']) {
                        echo '<script>alert("' . $resultRegister . '")</script>';
                    } else {
                        setSession($resultRegister);
                    }
                }
                // if (finduser($user) == NULL) {
                //     $pass_hash = md5($pass);
                //     $role = 0;
                //     $sdt = $_POST['sdt'];
                //     $email = $_POST['email'];
                //     $id = adduser($user, $pass_hash, $role, $sdt, $email);
                //     header('location: index.php?act=login');
                // }
                // elseif ($pass != $rpass) {
                //     # code...
                //     echo '<script>alert("Mật khẩu không trùng khớp!");</script>';
                //     echo header("refresh:0; url='../Controller/index.php?act=register'");
                // }
                // else {
                //     echo '<script>alert("Tên đăng nhập đã tồn tại vui lòng nhập lại!");</script>';
                //     echo header("refresh:0; url='../Controller/index.php?act=register'");
                // }
            }
            include "../view/components/Register.php";
            break;
        default:
            include "../view/components/Home.php";
    }
} else {
    include "../view/components/Home.php";
}
// include "../view/components/Home.php";
include "../view/components/Footer.php";
