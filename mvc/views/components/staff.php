<h4 style="margin:70px 0 10px 50px ">Trang nhân viên - Quản lý đơn hàng</h4>
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
    $countStaffOrder = count($data["staffOrder"]);
    for($i=0;$i<$countStaffOrder;$i++){
      
      echo '<tr>
        <td>'.($i+1).'</td>
        <td><a href="http://localhost/Laptrinhweb/Home/detailOrderUser/'.$data["staffOrder"][$i]["id"].'">'.$data["staffOrder"][$i]["fullname"].'</a></td>
        <td>'.$data["staffOrder"][$i]["phone"].'</td>
        <td>'.$data["staffOrder"][$i]["created_at"].'</td>
        <td>'; if($data["staffOrder"][$i]["table_id"] == 0) echo "Không đặt bàn"; else echo $data["staffOrder"][$i]["table_id"];echo '</td>
        <td>'.number_format($data["staffOrder"][$i]["total_money"]).' đ</td>
        <td>';
        if($data["staffOrder"][$i]["status"] == 0)
            echo 'Chờ duyệt';
        else if($data["staffOrder"][$i]["status"] == 1) echo "Đang giao hàng";
        else if($data["staffOrder"][$i]["status"] == 4) echo "Đã thanh toán. Chờ duyệt";
        echo '<td><a href="http://localhost/Laptrinhweb/OrderAdmin/updateStatusOrder/'.$data["staffOrder"][$i]['id'].'/1"><button class="btn btn-danger">Duyệt</button><a/></td>';
        echo '<td><a href="http://localhost/Laptrinhweb/OrderAdmin/updateStatusOrder/'.$data["staffOrder"][$i]['id'].'/2"><button class="btn btn-danger">Hủy</button><a/></td>';
        echo '</td>';
      echo '</tr>';
    }
  ?>
  </tbody>
</table>