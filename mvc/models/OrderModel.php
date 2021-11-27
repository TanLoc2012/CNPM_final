<?php
require_once "mvc/utility/utility.php";
class OrderModel extends DB{
    
    public function getAllOrder(){
        $sql = "select * from orders order by status asc, created_at desc";
        $data = $this->executeResult($sql);
        return $data;
    }

    public function getDoanhthu(){
        $sql = "SELECT SUM(total_money),MONTH(created_at) 
                FROM orders 
                WHERE status=3
                GROUP BY MONTH(created_at)
                ORDER BY MONTH(created_at) ASC";
        $data = $this->executeResult($sql);
        return $data;
    }

    public function getDetailOrder($idList){
        $sql = "select order_details.*, product.title, product.thumbnail 
                from order_details left join product on product.id = order_details.product_id 
                where order_details.order_id=$idList";
        $data = $this->executeResult($sql);
        return $data;
    }

    public function getOrderItem($id){
        $sql = "select * from orders where id = $id";
        $orderItem = $this->executeResult($sql, true);
        return $orderItem;
    }

    public function getorders($id){
        $sql = "SELECT orders.created_at, orders.total_money, orders.status, orders.phone, orders.fullname,orders.id,table_id
                FROM orders
                WHERE orders.user_id=$id
                order by orders.id DESC ";
        $orderItem = $this->executeResult($sql);
        return $orderItem;
    }

    public function updateStatus($id, $status){
        $sql = "update orders set status = $status where id = $id";
        $this->execute($sql);
    }

    public function updateStatusOrder($id, $status=3){
        $sql = "update orders set status = $status where id = $id";
        $this->execute($sql);
    }

    public function insertOrders($user_id, $fullname, $address, $phone, $email,$totalMoney, $table) {
        //insert
        $created_at = date("Y-m-d H:i:s");
        if($table==0)
            $sql = "insert into orders(user_id, fullname, address, phone, email, created_at, total_money) values ('$user_id','$fullname', '$address','$phone','$email','$created_at','$totalMoney')";
        else{
            $sql = "insert into orders(user_id, fullname, address, phone, email, created_at, total_money, table_id) values ('$user_id','$fullname', '$address','$phone','$email','$created_at','$totalMoney','$table')";
        }
        $this->execute($sql);
    }

    public function insertOrderDetail($order_id, $product_id, $price, $num,$totalMoney) {
        //insert
        $sql = "INSERT INTO order_details(order_id, product_id, price, num, total_money) 
                VALUES ('$order_id','$product_id','$price','$num','$totalMoney')";
        $this->execute($sql);
    }

    public function getOrderId($user_id){
        $sql = "SELECT  orders.id
                FROM orders 
                WHERE orders.user_id=$user_id
                ORDER BY orders.id DESC
                LIMIT 1";
        $orderItem = $this->executeResult($sql);
        return $orderItem;
    }

    public function getStaffOrder(){
        $sql = "SELECT id,fullname,phone,user_id,total_money,table_id,status,created_at
                FROM orders
                WHERE status=4 OR status=0
                ORDER BY id ASC";
        $data = $this->executeResult($sql);
        return $data;
    }

    public function getChefOrder(){
        $sql = "SELECT id,fullname,phone,user_id,total_money,table_id,status,created_at
                FROM orders
                WHERE status=1
                ORDER BY id ASC";
        $data = $this->executeResult($sql);
        return $data;
    }

    public function getTable(){
        $sql = "SELECT id, note
                FROM table_reservation 
                WHERE status=0";
        $table = $this->executeResult($sql);
        return $table;
    }

    public function updateStatusTable($status,$table){
        $sql = "UPDATE table_reservation 
                SET status=$status
                WHERE id=$table";
        $this->execute($sql);
    }
}


