<?php
	session_start();
	//load and initialize database class
	require_once '../core/db.php';
	$db = new DB();

	//set default redirect url
	$redirectURL = ''.$db->url;

	if(isset($_POST['register']))
	{
			$tblName='members';
				$Data = array
				(
          'fname' => $_POST['fname'],
					'lname' => $_POST['lname'],
					'email' => $_POST['email'],
					'phone' => $_POST['phone'],
					'address' => $_POST['address'],
					'category' => 0,
					'status' => $_POST['status'],
					'registered_by'=>$_SESSION['ID'],
					'profile' => 'images/user.png',
					'password' => $_POST['fname'].'@mmms2019',
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
if(isset($_POST['update']))
{
    //check if the form is not empty
     $tblName = 'members';
            //insert data
            $Data = array
            (
							'fname' => $_POST['fname'],
							'lname' => $_POST['lname'],
							'email' => $_POST['email'],
							'phone' => $_POST['phone'],
							'address' => $_POST['address'],
							'status' => $_POST['status']
            );

            $condition=array('id' => $_POST['ID'], );
            $update = $db->update($tblName, $Data,$condition);
            if($update){
                $sessData['status']['type'] = 'success';
                $sessData['status']['msg'] = 'Modification has been saved successfuly!';
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
$redirectURL .= '../execute.php?request=members';

//store status into the session
$_SESSION['sessData'] = $sessData;

//redirect to the list page
header("Location:".$redirectURL);

?>
