<?php
require_once "mvc/utility/utility.php";

class Login extends Controller{

    public $UserModel;

    public function __construct(){
        $this->UserModel = $this->model("UserModel");
    }

    public function SayHi(){
        $this->view("login", []);
    }

    public function UserLogin() {

        if( isset($_POST["btnLogin"]) ) {
            // get data
            $email = getPost('email');
            $password = getPost('password');
            $password = getSecurityMD5($password);
           
            
            $kq = $this->UserModel->XacNhanTaiKhoan($email, $password);
     
            // show home
           
            if($kq["result"]) {
                if($kq["role_id"] == 1) {
                    header('Location: http://localhost/Laptrinhweb/Home');
                }
                else if($kq["role_id"] == 3){
                    header('Location: http://localhost/Laptrinhweb/Home/staff');
                }
                else if($kq["role_id"] == 4){
                    header('Location: http://localhost/Laptrinhweb/Home/chef');
                }
                else if($kq["role_id"] == 2){
                    header('Location: http://localhost/Laptrinhweb/admin');
                }
            }
            else {
                // header('Location: http://localhost/Laptrinhweb/Login');
                $this->view("login", []);
            }

        }
    }

    public function UserLogout() {
        $user = getUserToken();
        if($user != null) {
            $token = getCookie('token');
            $id = $user['id'];
            $this->UserModel->deleteToken($id, $token);
            setcookie('token', '', time() - 100, '/');
        }
        session_destroy();
        header('Location: http://localhost/Laptrinhweb/Home');
    }
}

?>