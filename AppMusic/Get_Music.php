
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


function Get_Music(){
    $connection=ConnectDatabase();
    $cate=$_REQUEST['Cate'];
    $page=$_REQUEST['Page'];

    $number=10;
    $skip=$page * $number;

    if($cate=="track_select"){

        $res=mysqli_query($connection,"SELECT * FROM music WHERE Model=0 limit 10");

    }elseif ($cate=="album_select"){

        $res=mysqli_query($connection,"SELECT * FROM music WHERE Model=2 limit 10");


    }elseif ($cate=="video_select"){

        $res=mysqli_query($connection,"SELECT * FROM music WHERE Model=1 limit 10");


    }elseif ($cate=="track"){

        $res=mysqli_query($connection,"SELECT * FROM music WHERE Model=0 limit ".$skip.",".$number);


    }elseif ($cate=="album"){

        $res=mysqli_query($connection,"SELECT * FROM music WHERE Model=2 limit ".$skip.",".$number);

    }elseif ($cate=="video"){

        $res=mysqli_query($connection,"SELECT * FROM music WHERE Model=1 limit ".$skip.",".$number);

    }



    $output=array();
    while ($row=mysqli_fetch_array($res)){
        $record=array();
        $record['ID']=$row['ID'];
        $record['Name']=$row['Name'];
        $record['Artist']=$row['Artist'];
        $record['Model']=$row['Model'];
        $record['Link']=$row['Link'];
		$record['Img']=$row['Img'];
        $record['NamesAlbum']=$row['NamesAlbum'];
        $record['Date']=$row['Date'];
        $record['View']=$row['View'];


        /*$resl=mysqli_query($connection,"SELECT COUNT(*) FROM likes WHERE Music='".$row['ID']."'");
        $rowl=mysqli_fetch_array($resl);
        $record['Likes']=$rowl[0];
        $resll=mysqli_query($connection,"SELECT COUNT(*) FROM likes WHERE Usernmae='$username' AND Music='".$row['ID']."'");
        $rowll=mysqli_fetch_array($resll);
        if($rowll<=0)
        {
            $record['Liked']="no";
        }
        else
        {
            $record['Liked']="yes";
        }*/


        $output[]=$record;
    }

    echo  json_encode($output);

}


?>
