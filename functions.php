<?php
	function connect_db(){
		$con = mysqli_connect("localhost","root","","authentication");
		return $con;
	}
	
	function connect_bdb(){
		$con = mysqli_connect("localhost","root","","blood");
		return $con;
	}
	
	function log_user_in($username, $password){
		$con = connect_db();
		echo 'Hello';
		$sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
		$result = mysqli_query($con, $sql);
		if(mysqli_num_rows($result)==1){
			$_SESSION['username'] = $username;
			$_SESSION['message'] = "Welcome".$username;
			header("Location: home.php");
		}
		else{
			$_SESSION['message'] = "Wrong username/password. Please try again! $username $password";
			header("Location: login.php");
		}
		
		exit();
	}
	
	function display_message(){
		echo '<div class="msg">';
			echo'<p>'.$_SESSION['message'].'</p>';
			unset($_SESSION['message']);
		echo '</div>';
	}
	
	function log_user_out(){
		session_destroy();
		unset($_SESSION['username']);
		header("Location: homepage.html");
	}
	
?>