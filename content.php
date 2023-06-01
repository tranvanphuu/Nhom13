<style type="text/css">
	.content .sp .title a {
    text-decoration: none;
    font-size: 15px;
    font-weight: bold;
    color: #052436;
    margin: 25px;
}
	.content .sp {
    height: 315px;
    margin-top: 10px;
    }
</style>
<?php
	if(isset($_GET['menu'])){
		$menu= $_GET['menu'];
		switch($menu){ 
			case 'phim': include('chuc_nang/phim/phim.php'); break;
			case 'product_info': include('chuc_nang/phim/product_info.php'); break;

			case 'dang_ky': include('chuc_nang/dang_ky_dang_nhap/dang_ky.php'); break;
			case 'dang_nhap': include('chuc_nang/dang_ky_dang_nhap/dang_nhap.php'); break;
			case 'exec_dang_ky': include('chuc_nang/dang_ky_dang_nhap/exec_dang_ky.php'); break;
			case 'exec_dang_nhap': include('chuc_nang/dang_ky_dang_nhap/exec_dang_nhap.php'); break;
			case 'bo': include('chuc_nang/phim/bo.php'); break;
			case 'le': include('chuc_nang/phim/le.php'); break;
			case 'kinhdi': include('chuc_nang/phim/kinhdi.php'); break;
			case 'hai': include('chuc_nang/phim/hai.php'); break;
			case 'khoahocvientuong': include('chuc_nang/phim/khoahocvientuong.php'); break;
			case 'hanhdong': include('chuc_nang/phim/hanhdong.php'); break;
			case 'lichsu': include('chuc_nang/phim/lichsu.php'); break;
			case 'noi_bat': include('chuc_nang/phim/phimnoibat.php'); break;
			case 'xem_nhieu': include('chuc_nang/phim/phimxemnhieu.php'); break;
			case 'phim_moi': include('chuc_nang/phim/phimmoi.php'); break;
			case 'thanh_vien_form': include('chuc_nang/gio_hang/thanh_vien_form.php'); break;
			case 'thanh_vien': include('chuc_nang/dang_ky_dang_nhap/thanh_vien.php'); break;
			case 'sua_tt_thanh_vien': include('chuc_nang/dang_ky_dang_nhap/sua_tt_thanh_vien.php'); break;
			case 'exec_sua_tt_thanh_vien': include('chuc_nang/dang_ky_dang_nhap/exec_sua_tt_thanh_vien.php'); break;
			case 'change_password': include('chuc_nang/dang_ky_dang_nhap/change_password.php'); break;
			case 'exec_change_password': include('chuc_nang/dang_ky_dang_nhap/exec_change_password.php'); break;
			case 'search': include('chuc_nang/search/search.php'); break;
			case 'khach_hang': include('chuc_nang/gio_hang/thong_tin_khach_hang.php'); break;
			case 'logout': include('chuc_nang/dang_ky_dang_nhap/logout.php'); break;		

			case 'chitiet_lichsu': include('chuc_nang/dang_ky_dang_nhap/chitiet_lichsu.php'); break;
			
			default: include('slideshow.php'); break;
		}
	}
	else{
		include('slideshow.php');
		include('chuc_nang/phim/phim.php');
	}
?>