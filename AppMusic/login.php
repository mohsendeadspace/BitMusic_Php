

<?php
login();
function ConnectDatabase(){
    $connection= mysqli_connect("localhost","root","","appmusic");
    if(mysqli_connect_errno()){

        echo "Error:".mysqli_connect_error();

    }

    mysqli_set_charset($connection,'utf8');
    return $connection;
}


function login(){
    $connection=ConnectDatabase();
    $username=$_REQUEST['Username'];
    $password=$_REQUEST['Password'];

    $res=mysqli_query($connection,"SELECT * FROM users WHERE Username='$username' AND Password='$password'");
    $output=array();
    $row=mysqli_fetch_array($res);
    if($row['Username']!=""){

        $record=array();
        $record['ID']=$row['ID'];
        $record['Username']=$row['Username'];
        $record['Password']=$row['Password'];
        $record['Vip']=$row['Vip'];

        $output[]=$record;

        echo  json_encode($output);

    }else{


        echo "null";
    }



}

?>





