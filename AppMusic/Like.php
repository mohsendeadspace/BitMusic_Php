
<?php
Like();
function ConnectDatabase(){
    $connection= mysqli_connect("localhost","root","","appmusic");
    if(mysqli_connect_errno()){

        echo "Error:".mysqli_connect_error();

    }

    mysqli_set_charset($connection,'utf8');
    return $connection;
}

function Like(){
    $connection=ConnectDatabase();
    $username=$_REQUEST['Username'];
    $music=$_REQUEST['Music'];
    $status=$_REQUEST['Status'];

    if($status=="l"){

        $result=mysqli_query($connection,"INSERT INTO likes (Username,Music) VALUES ('$username','$music')");
        if($result!=""){
            echo "ok";
        }
        else{
            echo "no";
        }

    }
    else if ($status=="d"){

        $result=mysqli_query($connection,"DELETE FROM likes WHERE Username='$username' AND Music='$music'");
        if($result!=""){
            echo "ok";
        }
        else{
            echo "no";
        }

    }

}

?>
