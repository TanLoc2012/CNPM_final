<?php
	$title = 'Quản Lý Người Dùng';
	$isActive = "UserAdmin";
	require_once('mvc/views/blocks/header_admin.php');
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>Quản Lý Người Dùng</h3>

		<a href="http://localhost/Laptrinhweb/UserAdmin/viewInsertUser"><button class="btn btn-success">Thêm Tài Khoản</button></a>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Họ & Tên</th>
					<th>Email</th>
					<th>SĐT</th>
					<th>Địa Chỉ</th>
					<th>Quyền</th>
					<th style="width: 50px"></th>
					<th style="width: 50px"></th>
				</tr>
			</thead>
			<tbody>
<?php
	$countUser = count($data["allUser"]);
	for($i=$data["currentIndex"];$i<$data["currentIndex"]+8 && $i<$countUser;$i++) {
		echo '<tr>
					<th>'.($i+1).'</th>
					<td>'.$data["allUser"][$i]['fullname'].'</td>
					<td>'.$data["allUser"][$i]['email'].'</td>
					<td>'.$data["allUser"][$i]['phone_number'].'</td>
					<td>'.$data["allUser"][$i]['address'].'</td>
					<td>'.$data["allUser"][$i]['role_name'].'</td>
					<td style="width: 50px">
						<a href="http://localhost/Laptrinhweb/UserAdmin/viewUpdateUser/'.$data["allUser"][$i]['id'].'"><button class="btn btn-warning">Sửa</button></a>
					</td>
					<td style="width: 50px">';
		if($data["allUser"][$i]['role_id'] != 2) {
			echo '<a href="http://localhost/Laptrinhweb/UserAdmin/deletedUser/'.$data["allUser"][$i]['id'].'"><button class="btn btn-danger">Xoá</button><a/>';
		}
		echo '
					</td>
				</tr>';
	}
?>
			</tbody>
		</table>
	</div>
	<nav aria-label="Page navigation example">
            <ul class="pagination pg-blue justify-content-center">
                <li class="page-item">
            <?php
                    if($data["numPages"]>1){
                        if($data["pages"]==1){
                            echo    '<a href="http://localhost/Laptrinhweb/UserAdmin/SayHi/1" class="page-link"><i class="fa fa-chevron-left"></i> Previous</a>';
                        }
                        else echo    '<a href="http://localhost/Laptrinhweb/UserAdmin/SayHi/'.($data["pages"]-1).'" class="page-link"><i class="fa fa-chevron-left"></i> Previous</a>';
                        echo '</li>';
                        for($i=1; $i<=$data["numPages"];$i++){
                            if($i == $data["pages"]){
                                echo '<li class="page-item active"><a class="page-link" href="http://localhost/Laptrinhweb/UserAdmin/SayHi/'.$i.'">'.$i.'</a></li>';
                            }
                            else echo '<li><a class="page-link" href="http://localhost/Laptrinhweb/UserAdmin/SayHi/'.$i.'">'.$i.'</a></li>';
                        }
                        echo '<li class="page-item">';
                        if($data["pages"] == $data["numPages"]){
                            echo '<a href="http://localhost/Laptrinhweb/UserAdmin/SayHi/1" class="page-link"> Next <i class="fa fa-chevron-right"></i></a>';
                        }
                        else echo '<a href="http://localhost/Laptrinhweb/UserAdmin/SayHi/'.($data["pages"]+1).'" class="page-link "> Next <i class="fa fa-chevron-right"></i></a>';
                    }
                ?>
                </li>
            </ul>
        </nav>
</div>

<?php
	require_once('mvc/views/blocks/footer_admin.php');
?>