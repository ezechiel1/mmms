<?php
	session_start();
	//load and initialize database class
	require_once '../core/db.php';
	$db = new DB();

	//set default redirect url
	$redirectURL = ''.$db->url;

	if(isset($_POST['register']))
	{
			$tblName='money_back';
			$obs=(($_POST['total_amount']+$_POST['amount'])/$_POST['moneyloan'])*100;
			$Data=array(
				'member_id'=>$_POST['member_id'],
				'admin_id'=>$_SESSION['ID'],
				'loan_id'=>$_POST['loan_id'],
				'amount'=>$_POST['amount'],
				'total_amount'=> $_POST['total_amount']+$_POST['amount'],
				'remaining_amount'=>$_POST['remaining_amount']-$_POST['amount'],
				'observation'=>number_format($obs,1),
				'member_confirmation'=>0,
				'c_date'=>$db->showDate('datetime'),
			);
			$insert=$db->insert($tblName, $Data);
			if($insert){
				$sessData['status']['type'] = 'success';
				$sessData['status']['msg'] = 'Money Back has been registered successfuly!';
			}
			else{
				$sessData['status']['type'] = 'error';
				$sessData['status']['msg'] = 'Some errors occured. Please try again later!';
			}
}
// update
if(isset($_POST['deny']))
{
    //check if the form is not empty
     $tblName = 'money_back';
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
     $tblName = 'money_back';
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
$redirectURL .= '../execute.php?request=money-back';

//store status into the session
$_SESSION['sessData'] = $sessData;

//redirect to the list page
header("Location:".$redirectURL);

?>
