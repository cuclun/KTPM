<?php
    function Search($timkiem){ 
        $query = "SELECT * from `hosobenhnhan` JOIN `taikhoan` WHERE hosobenhnhan.MaTaiKhoan = taikhoan.MaTaiKhoan AND hosobenhnhan.MaHoSo LIKE '$timkiem'";
        return getone($query);
    }

    function update_health($tinhtrang, $ghichu, $id){
        $sql = "UPDATE `hosobenhnhan` SET `TinhTrangSucKhoe` = '$tinhtrang', `GhiChu`='$ghichu' WHERE `hosobenhnhan`.`MaHoSo` = '$id'";
        
        execsql($sql, 1);
        return true;
    }

    function updateSituation($tinhtrang, $ghichu, $idhoso) { //không đúng
        if ($tinhtrang != '') {

            $tinhtrang = $_POST['txttinhtrang'];
            $ghichu = $_POST['txtghichu'];
            $idhoso = $_POST['txtid'];

            $sqlcapnhat = update_health($tinhtrang, $ghichu, $idhoso);

            return 'Cập nhật thành công';
        } else {
            return 'Cập nhật không thành công';
        }
    }