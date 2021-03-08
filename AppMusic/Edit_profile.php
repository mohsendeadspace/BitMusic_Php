<?php
Edit();
function ConnectDatabase()
{
    $connection = mysqli_connect("localhost", "root", "", "appmusic");
    if (mysqli_connect_errno()) {

        echo "Error:" . mysqli_connect_error();

    }

    mysqli_set_charset($connection, 'utf8');
    return $connection;
}

function Edit(){
    $connection=ConnectDatabase();
    $username=$_REQUEST['Username'];
    $password=$_REQUEST['Password'];
    $security=$_REQUEST['Security'];


    if($username!="" && $password!="" && $security!=""){
        $res=mysqli_query($connection,"UPDATE users SET Password='$password' AND Forgot='$security' WHERE Username='$username' ");
        if ($res!=""){
            echo "ok";
        }else{
            echo "no";
        }

    }
    else{
        echo "null";
    }
    mysqli_close($connection);

}



?>