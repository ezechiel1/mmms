<?php include 'views/header.php'; ?>
<?php
  switch ($_GET['request']):
    case 'dashboard':
      include 'views/dashboard.php';
      break;
    case 'members':
      include 'views/member.php';
      break;
    case 'contribution':
      include 'views/contribution.php';
      break;
    case 'money-loan':
      include 'views/money_loan.php';
      break;
    case 'money-back':
      include 'views/money_back.php';
      break;
    default:
      include 'dashboard.php';
      break;
  endswitch;
 ?>
<?php include 'views/footer.php'; ?>
