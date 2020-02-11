<?php
session_start();
//load and initialize database class
require_once '../core/db.php';
$db = new DB();
//set default redirect url
$redirectURL = $db->url;

if(isset($_POST['login'])):
  if(!empty($_POST['email']) && !empty($_POST['password'])):
                $condition =array
                (
                  'email'=>$_POST['email'],
                  'password'=>$_POST['password']
                );
          $admin = $db->login('members',$condition);
          if(!empty($admin)):
            $count = 0;
            foreach($admin as $user): $count++;
                if($user['status']==0): //if Desactivated
                    $sessData['status']['type'] = 'error';
                    $sessData['status']['msg'] = 'Your Account is desactivated. Contact the IT!';
                    //set redirect url
                    $redirectURL .= '../index.php';
                else:
                    $_SESSION['ID']=$user['id'];
                    $sessData['status']['type'] = 'success';
                    $sessData['status']['msg']  = 'Welcome';
                    //set redirect url
                    $redirectURL .= '../execute.php?request=dashboard';
                endif;
             endforeach;
            else:
               $sessData['status']['type'] = 'error';
               $sessData['status']['msg'] = 'Invalid Email or Password!';
               //set redirect url
               $redirectURL .= '../index.php';
            endif;
    endif;
    //store status into the session
    $_SESSION['sessData'] = $sessData;
    //redirect to the list page
    header("Location:".$redirectURL);
endif;
// exit();
?>
