<?php
$mysqli = new mysqli("localhost", "root", "", "phptaskmanager", "3308");
if($mysqli->connect_error){
    exit('Error connecting to database');
}