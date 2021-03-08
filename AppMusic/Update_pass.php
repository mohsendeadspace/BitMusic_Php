<?php
Update();
function ConnectDatabase()
{
    $connection = mysqli_connect("localhost", "root", "", "appmusic");
    if (mysqli_connect_errno()) {

        echo "Error:" . mysqli_connect_error();

    }

    mysqli_set_charset($connection, 'utf8');
    return $connection;
}

function Update(){
    $connection=ConnectDatabase();
    $username=$_REQUEST['Username'];
    $newpass=$_REQUEST['Newpass'];


    if($username!="" && $newpass!=""){
        $res=mysqli_query($connection,"UPDATE users SET Password='$newpass' WHERE Username='$username' ");
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