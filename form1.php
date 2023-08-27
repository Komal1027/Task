<?php
// $message_sent= false;
    
// if(isset($_POST['email']) && $_POST['email'] != '')

// {

//   if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
//   {

//     $name=$_POST['full_name'];
//     $email=$_POST['email'];
//     $subject=$_POST['subject'];
//     $message=$_POST['message'];
    
//     $to= "komalmengane8833@gmail.com"; 
//     $body= "";
    
//     $body .="From: ".$name. "\r\n";
//     $body .="Email: ".$email. "\r\n";
//     $body .="Message: ".$message   . "\r\n";
    
//     mail($to,$message,$subject,$body);
    

//     $message_sent= true;

  
//   }

  

// }






?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Contact Page</title>
    <style>

        body
        {
            background-image: url("pexels-oleksandr-p-3800060.jpg");
            background-attachment: fixed;
            background-size: cover;
        }

        .card
        {
            margin: 30px;
        background-color: #fff;
        border: 1px solid black;
         opacity: 0.8;
        }


      
        
    </style>
</head>
<body>
  
<div class="row">
<div class="col-lg-4"></div>
    <div class="col-lg-4 p-3">
        <div class="card border-0">
          <div class="card-body">
           
            <form method="post">
                <h3>Deliver your queries here.....</h3><br>
              <input type="text" placeholder="Full Name" value="<?=((isset($_POST['full_name']))? $_POST['full_name']:'')?>" name="full_name" class="form-control" style="background-color: #F5F5F5;" required><br>
              <input type="tel" placeholder="Phone Number"  value="<?=((isset($_POST['phone_number']))? $_POST['phone_number']:'')?>" name="phone_number" class="form-control" style="background-color: #F5F5F5;" required><br>
              <input type="email" placeholder="Email"  value="<?=((isset($_POST['email']))? $_POST['email']:'')?>" name="email" class="form-control" style="background-color: #F5F5F5;" required><br>
              <input type="text" placeholder="Subject"  value="<?=((isset($_POST['subject']))? $_POST['subject']:'')?>" name="subject" class="form-control" style="background-color: #F5F5F5;" required><br>
              <textarea class="form-control" placeholder="Message"  value="<?=((isset($_POST['message']))? $_POST['message']:'')?>" name="message" style="height: 150px;background-color: #F5F5F5;"></textarea><br>
              <button class="btn btn-primary"type="submit"  name="submit">Submit</button>
            </form>
          </div>
        </div>
    </div>
    <div class="col-lg-4"></div>
    </div>
  
</body>
</html>



<?php 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "salon";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Retrieve form data
 
  
$name=$_POST['full_name'];
$mobile=$_POST['phone_number'];
$email=$_POST['email'];
$subject=$_POST['subject'];
$message=$_POST['message'];
$mobileno=strlen($_POST['phone_number']);
$length=strlen($mobileno);
$ipaddress = getenv("REMOTE_ADDR") ; 
date_default_timezone_set("Asia/Calcutta");  
$current_date = date("Y-m-d H:i:s");
$to = "komalmengane8833@gmail.com";
$header = "From:komalmengane8833@gmail.com \r\n";


  // Validate name
  if (empty($name)) {
      $nameError = "Name is required.";
  }
  
  // Validate mobile number
  if (empty($mobile)) {
      $mobileError = "Mobile number is required.";
  } elseif (!preg_match('/^\d{10}$/', $mobile)) {
      $mobileError = "Invalid mobile number.";
  }
  
  // Validate email
  if (empty($email)) {
      $emailError = "Email is required.";
  } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailError = "Invalid email format.";
  }
  
  // If no errors, perform further processing or redirection
  if (empty($nameError) && empty($mobileError) && empty($emailError)) {
    
    $sql = "INSERT INTO contact_form  VALUES ('$name',
     '$mobile','$email','$subject','$message','$ipaddress','$current_date')";
        
        if(mysqli_query($conn, $sql)){
          echo "";
          $_POST['full_name']=" ";
          header("http://localhost/form1.php");

           
        } else{
        echo "ERROR: Hush! Sorry $sql. "
            . mysqli_error($conn);
        }
          
  }

  // $retval = mail($to,$subject,$message,$header);
         
  //        if( $retval == true ) {
  //           echo "Message sent successfully...";
  //        }else {
  //           echo "Message could not be sent...";
  //        }

}

// if (!preg_match ("/^[a-zA-z]*$/", $name) ) 
// {  
//   $ErrMsg = "Only alphabets and whitespace are allowed.";  
//            echo $ErrMsg;  
// }

// else
// {

//   $sql = "INSERT INTO contact_form  VALUES ('$name',
//   '$mobile','$email','$subject','$message')";
    
//     if(mysqli_query($conn, $sql)){//       echo "";
       
//     } else{
//     echo "ERROR: Hush! Sorry $sql. "
//         . mysqli_error($conn);
//     }
      
// }
// }


  
// if ((preg_match ("/^[a-zA-z]*$/", $name)) && (preg_match ("/^[0-9]*$/", $mobile) ) && (preg_match ("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$^", $email)) && ($length>10) && ($length<10) ) {  
//   $sql = "INSERT INTO contact_form  VALUES ('$name',
//   '$mobile','$email','$subject','$message')";
  
//   if(mysqli_query($conn, $sql)){
//     echo "";
     
//   } else{
//   echo "ERROR: Hush! Sorry $sql. "
//       . mysqli_error($conn);
//   }
// } 
// else{
//   echo "insert valid data";
// }





?>