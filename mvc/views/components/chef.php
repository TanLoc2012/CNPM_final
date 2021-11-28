<h4 style="margin:70px 0 10px 50px ">Trang đầu bếp - Quản lý đơn hàng</h4>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên</th>
      <th scope="col">Số điện thoại</th>
      <th scope="col">Ngày đặt hàng</th>
      <th scope="col">Số bàn đã đặt</th>
      <th scope="col">Tổng số tiền</th>
      <th scope="col">Trạng thái</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <?php
    $countchefOrder = count($data["chefOrder"]);
    for($i=0;$i<$countchefOrder;$i++){
      
      echo '<tr>
        <td>'.($i+1).'</td>
        <td><a href="http://localhost/Laptrinhweb/Home/detailOrderUser/'.$data["chefOrder"][$i]["id"].'">'.$data["chefOrder"][$i]["fullname"].'</a></td>
        <td>'.$data["chefOrder"][$i]["phone"].'</td>
        <td>'.$data["chefOrder"][$i]["created_at"].'</td>
        <td>'; if($data["chefOrder"][$i]["table_id"] == 0) echo "Không đặt bàn"; else echo $data["chefOrder"][$i]["table_id"];echo '</td>
        <td>'.number_format($data["chefOrder"][$i]["total_money"]).' đ</td>
        <td>';
        if($data["chefOrder"][$i]["status"] == 1) echo "Đã duyệt";
        echo '<td><a href="http://localhost/Laptrinhweb/OrderAdmin/updateStatusOrder/'.$data["chefOrder"][$i]['id'].'/2"><button class="btn btn-danger">Hủy</button><a/></td>';
        echo '</td>';
      echo '</tr>';
    }
  ?>
  </tbody>
</table>