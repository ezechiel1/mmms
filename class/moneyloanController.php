<?php
	session_start();
	//load and initialize database class
	require_once '../core/db.php';
	$db = new DB();

	//set default redirect url
	$redirectURL = ''.$db->url;

	if(isset($_POST['register']))
	{
			$tblName='money_loan';
			$allM=$db->getRows('money_loan', array('where'=>array('member_id'=>$_POST['member'], 'status'=>0)));
			if(!empty($allM)):
				$sessData['status']['type']='error';
				$sessData['status']['msg']='Operation failed.This member has another unpaid loan!';
			else:
						$interest=($_POST['amount']*10)/100;
						$Data = array
						(
		          'member_id' => $_POST['member'],
							'admin_id' => $_SESSION['ID'],
							'amount' => $_POST['amount'],
							'interest' => $interest,
							'date_loan' => $_POST['date_loan'],
							'date_echeance' => $_POST['date_echeance'],
							'status' => 0,
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
							$sessData['status']['type']='error';
							$sessData['status']['msg']='Some errors occured. Please try again later!';
						}
			endif;
}
// update
if(isset($_POST['deny']))
{
    //check if the form is not empty
     $tblName = 'money_loan';
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
     $tblName = 'money_loan';
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
            $tblName='money_loan';
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
$redirectURL .= '../execute.php?request=money-loan';

//store status into the session
$_SESSION['sessData'] = $sessData;

//redirect to the list page
header("Location:".$redirectURL);

?>
