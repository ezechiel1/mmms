<?php
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;
    
    require 'phpmailer/src/Exception.php';
    require 'phpmailer/src/PHPMailer.php';
    require 'phpmailer/src/SMTP.php';
    
   
 function sendEmailPRO($fromemail_, $fromname_, $_toemail, $_toname, $_replytoemail, $_replytoname, $_subject, $_body){
    // Instantiation and passing `true` enables exceptions
    $mail = new PHPMailer(true);
 
    try {
        date_default_timezone_set('Etc/UTC');
        //Server settings
        //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                      // Enable verbose debug output
        $mail->isSMTP();                                            // Send using SMTP
        $mail->Host       = 'mail.ideashop.rw';                    // Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = 'admin@ideashop.rw';                     // SMTP username
        $mail->Password   = 'rw:ideaShop@2019';                               // SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
        $mail->Port       = 587;                                    // TCP port to connect to
    
        //Recipients
        $mail->setFrom($fromemail_, $fromname_);
        // Add a recipient
        $mail->addAddress($_toemail,$_toname);
        
        $mail->addReplyTo($_replytoemail, $_replytoname);
        // $mail->addCC('cc@example.com');
        // $mail->addBCC('bcc@example.com');
    
        // Attachments
        // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    
        // Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = $_subject;
        $mail->Body    = $_body;
       // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
        if($mail->send()) return true;
        
    } catch (Exception $e) {
        return false;
    }
  }//END OF SENDEMAILPRO FUNCTION

 ?>
