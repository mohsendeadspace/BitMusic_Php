
<?php
Register();
function ConnectDatabase(){
    $connection= mysqli_connect("localhost","root","","appmusic");
    if(mysqli_connect_errno()){

        echo "Error:".mysqli_connect_error();

    }

    mysqli_set_charset($connection,'utf8');
    return $connection;
}


function Register(){

    $connection=ConnectDatabase();
    $username=$_REQUEST['Username'];
    $password=$_REQUEST['Password'];
    $forgot=$_REQUEST['Forgot'];


    if($username!="" && $password!=""){


        $check=mysqli_query($connection,"SELECT COUNT(*) FROM users WHERE Username='$username'");
        $row=mysqli_fetch_array($check);
        if($row[0]>=1){
            echo "old";
        }
        else{
            $res=mysqli_query($connection,"INSERT INTO users (Username,Password,Forgot) VALUES ('$username','$password','$forgot') ");
            if($res!=""){
                echo "ok";
            }
            else
            {
                echo "no";
            }
        }


    }else{
        echo "null";
    }


}


?>







