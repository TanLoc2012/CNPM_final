<div id="wrapper">

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/108"><h3 style="margin-left:20px; margin-top: 15px">Món nước</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonNuoc"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productMonNuoc"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonNuoc"][$i]["id"].'"><h5 class="card-title">'.$data["productMonNuoc"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productMonNuoc"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productMonNuoc"][$i]["discount"] != 0) echo number_format($data["productMonNuoc"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productMonNuoc"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/109"><h3 style="margin-left:20px; margin-top: 15px">Món nướng</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonNuong"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productMonNuong"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonNuong"][$i]["id"].'"><h5 class="card-title">'.$data["productMonNuong"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productMonNuong"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productMonNuong"][$i]["discount"] != 0) echo number_format($data["productMonNuong"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productMonNuong"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/110"><h3 style="margin-left:20px; margin-top: 15px">Món chay</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonChay"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productMonChay"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonChay"][$i]["id"].'"><h5 class="card-title">'.$data["productMonChay"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productMonChay"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productMonChay"][$i]["discount"] != 0) echo number_format($data["productMonChay"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productMonChay"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/111"><h3 style="margin-left:20px; margin-top: 15px">Món kho</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonKho"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productMonKho"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMonKho"][$i]["id"].'"><h5 class="card-title">'.$data["productMonKho"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productMonKho"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productMonKho"][$i]["discount"] != 0) echo number_format($data["productMonKho"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productMonKho"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/112"><h3 style="margin-left:20px; margin-top: 15px">Thức uống</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productDrink"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productDrink"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productDrink"][$i]["id"].'"><h5 class="card-title">'.$data["productDrink"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productDrink"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productDrink"][$i]["discount"] != 0) echo number_format($data["productDrink"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productDrink"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/113"><h3 style="margin-left:20px; margin-top: 15px">Ăn vặt</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productAnVat"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productAnVat"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productAnVat"][$i]["id"].'"><h5 class="card-title">'.$data["productAnVat"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productAnVat"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productAnVat"][$i]["discount"] != 0) echo number_format($data["productAnVat"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productAnVat"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
		$(".btnOrder").click(function(){
            $("#alertSuccess").html('<p style="background-color: #55e073;padding: 10px;"><i class="fas fa-check-circle"></i>Thêm vào giỏ hàng thành công</p>');
		});
	});

    function addToCard(productId) {
        var action = "add";
        $.ajax({
            url:"home/addToCart",
            method:"POST",
            data:{action:action ,productId:productId, num:1},
            success:function(data){
                location.reload();
                // alert("Chào mừng bạn đến với freetuts.net");
                
            }
        });
    }
</script>