<?php
  session_start();
  //load and initialize database class
	require_once '../core/db.php';
	$db = new DB();

  $db->update("kban_about", array('title'=>'Okay'), array('id'=>1));
  echo "Yes";
  if(isset($_POST['save_about'])):
    $txt=$_POST['editor1'];
    $id=1;

    if($db->update("kban_about", array('title'=>'YEs'), array('id'=>1))):
      echo $txt;
    else:
      echo "Error";
    endif;
  else:
    echo 'nON';
  endif;
