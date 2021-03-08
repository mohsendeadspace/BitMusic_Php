<?php
Forgot();
function ConnectDatabase()
{
    $connection = mysqli_connect("localhost", "root", "", "appmusic");
    if (mysqli_connect_errno()) {

        echo "Error:" . mysqli_connect_error();

    }

    mysqli_set_charset($connection, 'utf8');
    return $connection;
}

function Forgot(){
    $connection=ConnectDatabase();
    $username=$_REQUEST['Username'];
    $security=$_REQUEST['Security'];

    if($username!="" && $security!=""){
        $res=mysqli_query($connection,"SELECT COUNT(*) FROM users WHERE Username='$username' AND Forgot='$security' ");
        $row=mysqli_fetch_array($res);

        if($row[0]>=1){
            echo "ok";
        }else if ($row[0]<=0){
            echo "no";

        }

        mysqli_close($connection);
    }
    else{
        echo "null";
    }

}

?>