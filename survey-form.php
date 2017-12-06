<?php

$artist =  $favcolor = $birthmonth = $satisfaction = $homepage = "";

if ($_SERVER["REQUEST_METHOD"] == "POST"){
    if(empty($_POST["favcolor"])) {
        $favcolor = "Please tell us what is your favourite color";
    }
    else {
       if (!preg_match("/^[a-zA-Z ]*$/",$_POST["favcolor"])) {
             $favcolor = "Only letters and white space allowed";
    }

    if (empty($_POST["homepage"])) {
        $homepage = "";
      } else {
        if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$website)) {
          $homepage = "Invalid URL";
        }
      }
}

echo "<h2>Twoje odpowiedzi: </h2>";
echo "<br>"
echo $_POST['artist'];
echo $_POST['favcolor'];
echo $_POST['birthmonth'];
echo $_POST['satisfaction'];
echo $_POST['homepage'];


?>
