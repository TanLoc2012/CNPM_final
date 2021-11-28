<?php
	$title = 'Quản Lý Sản Phẩm';
    $isActive = "ProductAdmin";
	require_once('mvc/views/blocks/header_admin.php');
?>
<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>Quản Lý Sản Phẩm</h3>

		<a href="http://localhost/Laptrinhweb/ProductAdmin/viewAddProduct"><button class="btn btn-success">Thêm Sản Phẩm</button></a>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Thumbnail</th>
					<th>Tên Sản Phẩm</th>
					<th>Giá</th>
					<th>Danh Mục</th>
					<th style="width: 50px"></th>
					<th style="width: 50px"></th>
				</tr>
			</thead>
			<tbody>
<?php
	$countProduct = count($data["allProduct"]);
	for($i=$data["currentIndex"];$i<$data["currentIndex"]+8 && $i<$countProduct;$i++) {
		echo '<tr>
					<th>'.($i+1).'</th>
					<td><img src="'.fixUrl($data["allProduct"][$i]["thumbnail"]).'" style="height: 100px"/></td>
					<td>'.$data["allProduct"][$i]["title"].'</td>
					<td>'.number_format($data["allProduct"][$i]['price']).' VNĐ</td>
					<td>'.$data["allProduct"][$i]['category_name'].'</td>
					<td style="width: 50px">
						<a href="http://localhost/Laptrinhweb/ProductAdmin/viewUpdateProduct/'.$data["allProduct"][$i]["id"].'"><button class="btn btn-warning">Sửa</button></a>
					</td>
					<td style="width: 50px">
					<a href="http://localhost/Laptrinhweb/ProductAdmin/deleteProduct/'.$data["allProduct"][$i]["id"].'"><button class="btn btn-danger">Xoá</button></a>
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
                            echo    '<a href="http://localhost/Laptrinhweb/ProductAdmin/SayHi/1" class="page-link"><i class="fa fa-chevron-left"></i> Previous</a>';
                        }
                        else echo    '<a href="http://localhost/Laptrinhweb/ProductAdmin/SayHi/'.($data["pages"]-1).'" class="page-link"><i class="fa fa-chevron-left"></i> Previous</a>';
                        echo '</li>';
                        for($i=1; $i<=$data["numPages"];$i++){
                            if($i == $data["pages"]){
                                echo '<li class="page-item active"><a class="page-link" href="http://localhost/Laptrinhweb/ProductAdmin/SayHi/'.$i.'">'.$i.'</a></li>';
                            }
                            else echo '<li><a class="page-link" href="http://localhost/Laptrinhweb/ProductAdmin/SayHi/'.$i.'">'.$i.'</a></li>';
                        }
                        echo '<li class="page-item">';
                        if($data["pages"] == $data["numPages"]){
                            echo '<a href="http://localhost/Laptrinhweb/ProductAdmin/SayHi/1" class="page-link"> Next <i class="fa fa-chevron-right"></i></a>';
                        }
                        else echo '<a href="http://localhost/Laptrinhweb/ProductAdmin/SayHi/'.($data["pages"]+1).'" class="page-link "> Next <i class="fa fa-chevron-right"></i></a>';
                    }
                ?>
                </li>
            </ul>
        </nav>
</div>
<?php
	require_once('mvc/views/blocks/footer_admin.php');
?>