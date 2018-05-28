<?php
    function connect() { return mysqli_connect("localhost", "root", "", "diagnostico"); }
    
    function login($ref, $pass) {
        $con = connect();
        $sql = "SELECT * FROM Alumno WHERE NoReferencia='$ref' AND Password='$pass'";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function create_account($ref, $nom, $ap1, $ap2, $dir, $edo, $email, $curp, $tel, $pass, $foto, $esc, $edoN, $paisN, $fecN, $edad, $prom, $sex) {
        return 1;
    }
?>