<?php
	session_start();
	//load and initialize database class
	require_once '../core/db.php';
	$db = new DB();

	//set default redirect url
	$redirectURL = ''.$db->url;

	if(isset($_POST['register']))
	{
			$tblName='contributions';
			$allM=$db->getRows('contributions', array('where'=>array('member_id'=>$_POST['member'])));
			if(!empty($allM)): foreach($allM as $member):
				$total_amount=$member['total_amount']+$_POST['amount'];
				endforeach;
			else:$total_amount=$_POST['amount'];
			endif;
				$Data = array
				(
          'member_id' => $_POST['member'],
					'admin_id' => $_SESSION['ID'],
					'amount' => $_POST['amount'],
					'total_amount' => $total_amount,
					'date_payment' => $_POST['date_payment'],
					'member_confirmation'=>0,
					'c_date' => $db->showDate('datetime')
				 );
				$insert = $db ->insert($tblName, $Data);
				if($insert)
				{
								$sessData['status']['type'] = 'success';
          			$sessData['status']['msg'] = 'New Member\'s Account has been registered successfuly!';
				}
				else{
					$getMessage['status']['type']='error';
					$getMessage['status']['type']='Some errors occured. Please try again later!';
				}

}
// update
if(isset($_POST['deny']))
{
    //check if the form is not empty
     $tblName = 'contributions';
            //insert data
            $Data = array  ('member_confirmation' => -1);
            $condition=array('id' => $_POST['ID'], );
            $update = $db->update($tblName, $Data,$condition);
            if($update){
                $sessData['status']['type'] = 'success';
                $sessData['status']['msg'] = 'Contribution has been denied successfuly!';
            }
            else{
                $sessData['status']['type'] = 'error';
                $sessData['status']['msg'] = 'Some errors occured. Please try again later!';
            }
}
if(isset($_POST['confirm']))
{
    //check if the form is not empty
     $tblName = 'contributions';
            //insert data
            $Data = array  ('member_confirmation' => 1);
            $condition=array('id' => $_POST['ID'], );
            $update = $db->update($tblName, $Data,$condition);
            if($update){
                $sessData['status']['type'] = 'success';
                $sessData['status']['msg'] = 'Contribution has been confirmed successfuly!';
            }
            else{
                $sessData['status']['type'] = 'error';
                $sessData['status']['msg'] = 'Some errors occured. Please try again later!';
            }
}
// delete
if(isset($_POST["delete"]) )

{
            $tblName='members';
            $Condition = array('id'=> $_POST['ID']);
            $delete = $db->delete($tblName,$Condition);
            if($delete){
                $sessData['status']['type'] = 'success';
                $sessData['status']['msg'] = 'Administrator\'s Account has been deleted successfuly!';
            }
            else{
                $sessData['status']['type'] = 'error';
                $sessData['status']['msg'] = 'Some errors occured. Please try again later!';
            }
}
//set redirect url
$redirectURL .= '../execute.php?request=contribution';

//store status into the session
$_SESSION['sessData'] = $sessData;

//redirect to the list page
header("Location:".$redirectURL);

?>
