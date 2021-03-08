


<?php

Get_Music();
function ConnectDatabase(){
    $connection= mysqli_connect("localhost","root","","appmusic");
    if(mysqli_connect_errno()){

        echo "Error:".mysqli_connect_error();

    }

    mysqli_set_charset($connection,'utf8');
    return $connection;
}


function Get_Music()
{
    $connection = ConnectDatabase();
    $id = $_REQUEST['id'];
    mysqli_query($connection, "UPDATE music SET View=View+1 WHERE ID='$id'");
}

?>


