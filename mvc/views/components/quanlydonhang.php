<h4 style="margin:70px 0 10px 50px ">Quản lý đơn hàng</h4>
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
    $countOrderItem = count($data["orderItem"]);
    for($i=0;$i<$countOrderItem;$i++){
      
      echo '<tr>
        <td>'.($i+1).'</td>
        <td><a href="http://localhost/Laptrinhweb/Home/detailOrderUser/'.$data["orderItem"][$i]["id"].'">'.$data["orderItem"][$i]["fullname"].'</a></td>
        <td>'.$data["orderItem"][$i]["phone"].'</td>
        <td>'.$data["orderItem"][$i]["created_at"].'</td>
        <td>'; if($data["orderItem"][$i]["table_id"] == 0) echo "Không đặt bàn"; else echo $data["orderItem"][$i]["table_id"];echo '</td>
        <td>'.number_format($data["orderItem"][$i]["total_money"]).' đ</td>
        <td>';
        if($data["orderItem"][$i]["status"] == 0)
            echo 'Chờ duyệt';
        else if($data["orderItem"][$i]["status"] == 1) echo "Đang giao hàng";
        else if($data["orderItem"][$i]["status"] == 4) echo "Đã thanh toán";
        else echo "Giao dịch hoàn tất!";
        if($data["orderItem"][$i]["status"] == 0 || $data["orderItem"][$i]["status"] == 4)
          echo '<td><a href="http://localhost/Laptrinhweb/Home/confirmOrder/'.$data["orderItem"][$i]["id"].'/'.$user["id"].'/'.$data["orderItem"][$i]["table_id"].'/2"><button class="btn btn-danger">Hủy</button><a/></td>';
        else echo '<td></td>';
          echo '</td>';
        if($data["orderItem"][$i]["status"] != 3 && $data["orderItem"][$i]["status"] != 2)
          echo '<td><a href="http://localhost/Laptrinhweb/Home/confirmOrder/'.$data["orderItem"][$i]["id"].'/'.$user["id"].'/'.$data["orderItem"][$i]["table_id"].'/3"><button class="btn btn-danger">Hoàn thành giao dịch</button><a/></td>';
        else echo '<td></td>
      </tr>';
    }
  ?>
  </tbody>
</table>