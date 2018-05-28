<?php
    function connect() { return mysqli_connect("localhost", "root", "", "diagnostico"); }
    
    function login($ref, $pass) {
        $con = connect();
        $sql = "SELECT * FROM Alumno WHERE NoReferencia='$ref' AND Password='$pass'";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function create_account($ref, $nom, $ap1, $ap2, $sexo, $curp, $foto, $pass, $esc, $prom, $opc, $dir, $mun, $edo, $cel, $tel, $correo, $fechaN, $paisN, $edoN, $hora, $lab) {
        $con = connect();
    }

    function setTest($ref, $hora, $lab) {
        $con = connect();
        $sql = "SELECT * FROM Alumno WHERE NoReferencia='$ref' AND Password='$pass'";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function getAlumnosPorAciertos() {
        $con = connect();
        $sql = "SELECT * FROM NumAciertos";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function getEscuelaAciertos() {
        $con = connect();
        $sql = "SELECT * FROM PromEscAciertos";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function getAlumnosPorMunicipio() {
        $con = connect();
        $sql = "SELECT * FROM AlumnoMunicipio";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function getAlumnosPorEdad() {
        $con = connect();
        $sql = "SELECT * FROM AlumnosEdad";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }

    function getAlumnosPorSexo() {
        $con = connect();
        $sql = "SELECT * FROM AlumnosSexo";
        $res = mysqli_query($con, $sql);
        return mysqli_num_rows($res) == 1;
    }
?>