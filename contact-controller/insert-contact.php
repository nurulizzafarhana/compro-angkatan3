<?php
require_once "../admin/koneksi.php";


//ambil data dari input-an form contact
if (isset($_POST['send-bro'])) {
    $name = mysqli_real_escape_string($koneksi, $_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $subject = htmlspecialchars($_POST['subject']);
    $message = htmlspecialchars($_POST['message']);


    //query handle duplicated email
    $select = mysqli_query($koneksi, "SELECT email FROM contact WHERE email = '$email'");

    if (mysqli_num_rows($select) > 0) {
        header("Location: ../contact.php?status=email-sudahada");
        exit();
    } else {
        // query + table_name + (isi kolom table) + VALUES + ()
        $insert = mysqli_query($koneksi, "INSERT INTO contact (nama, email, subject, message) VALUES ('$name','$email','$subject','$message')");
    
        if ($insert) {
            header("Location: ../contact.php?status=success");
            exit();
        }
    }
}
?>