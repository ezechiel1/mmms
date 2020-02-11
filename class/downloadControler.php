<?php
	session_start();

	//load and initialize database class
	require_once '../core/db.php';
	$db = new DB();
	//load and initialize extra class
	require_once '../core/extra.php';
	$extra = new Extra();
		//set default redirect url
	$redirectURL = '../../'.$db->url;

	if(isset($_GET['download']))
	{
			$tblName=$_GET['ct'].'_'.$_GET['id'];
			//get last total of downloads
			$td=$db->getRows($tblName, array('where'=>array('id'=>$_GET['cid'])));
			if(!empty($td)): foreach($td as $gt): $totalD = $gt['total_download']; endforeach;
			else: $totalD = 0;
			endif;
			//Increase Total downloads
			$totalD+=1;
				  $Data = array('total_download'=>$totalD);
					$condition = array('id'=>$_GET['cid']);
					$increase = $db->update($tblName,$Data,$condition);
					if($increase)
					{
						// $sessData['status']['type'] = 'success';
	          // $sessData['status']['msg'] = 'The Data has been registered successfully!';
						$pathFile = '../dist/docs/'.$_GET['ct'].'/'.$_GET['download'];
						$fileName=$extra->ezpk($_GET['download']);
						$extra->downloadFile($pathFile,$fileName);
					}
					else{
						$sessData['status']['type']='error';
						$sessData['status']['type']='Some errors occured. Try again later!';
					}
}

// //store status into the session
// $_SESSION['sessData'] = $sessData;

?>
