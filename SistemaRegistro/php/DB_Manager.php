<?php
    function connect() { return mysqli_connect("localhost", "root", "", "diagnostico"); }

    function login($ref, $pass) {
        $sql = "SELECT * FROM Alumno WHERE NoReferencia='$ref' AND Password='$pass'";
        $res = mysqli_query(connect(), $sql);
        if(mysqli_num_rows($res) == 1) {
            session_start();
            $_SESSION['ref'] = $ref;
            return true;
        }
        return false;
    }

    function loginAdm($usr, $pass) {
        $sql = "SELECT * FROM Administrador WHERE Username='$usr' AND Password='$pass'";
        $res = mysqli_query(connect(), $sql);
        if(mysqli_num_rows($res) == 1) {
            session_start();
            $_SESSION['usr'] = $usr;
            return true;
        }
        return false;
    }

    function create_account($ref, $nom, $ap1, $ap2, $sexo, $curp, $foto, $pass, $dir, $mun, $edo, $cel, $tel, $crr, $esc, $prm, $opc, $fNa, $pNa, $eNa) {
        $con = connect();

        $sql = "INSERT INTO Alumno VALUES ('".$ref."', '".$nom."', '".$ap1."', '".$ap2."', '".$sexo."', '".$curp."', '".$foto."', '".$pass."')";
        if (!mysqli_query($con, $sql)) { return false; }

        $sql = "INSERT INTO Contacto VALUES ('".$ref."', '".$dir."', '".$mun."', '".$edo."', '".$cel."', '".$tel."', '".$crr."')";
        if (!mysqli_query($con, $sql)) { return false; }

        $sql = "INSERT INTO Escolares VALUES ('".$ref."', '".$esc."', '".$prm."', '".$opc."')";
        if (!mysqli_query($con, $sql)) { return false; }

        $sql = "INSERT INTO Nacimiento VALUES ('".$ref."', '".$fNa."', '".$pNa."', '".$eNa."')";
        if (!mysqli_query($con, $sql)) { return false; }

        if (!asigna_examen($ref, $con)) { return false; }

        session_start();
        $_SESSION['ref'] = $ref;
        return true;
    }

    function update_contrasena($con, $ref, $old_pass, $new_pass) {
        $sql = "UPDATE Alumno SET Password='".$new_pass."' WHERE NoReferencia='".$ref."' AND Password='".$old_pass."'";
        return mysqli_query($con, $sql);
    }

    function asigna_horario($con) {
        $horas = [10, 12, 14];
        $sql = "SELECT * FROM AlumnosHorario";
        $res = mysqli_query($con, $sql);
        $alumnos_hora = array();
        while($row = mysqli_fetch_array($res)) {
            $hora = intval(date("G", strtotime($row['Horario'])));
            unset($horas[array_search($hora, $horas)]);
            $alumnos_hora[$hora] = intval($row["Alumnos"]);
        }
        if (count($horas) != 0)
            $horario = array_pop(array_reverse($horas));
        else
            $horario = array_keys($alumnos_hora, min($alumnos_hora));
        if (is_array($horario))
            $horario = $horario[0];
        return $horario;
    }

    function asigna_lab($con, $horario) {
        $laboratorios = [1, 2, 3, 4, 5];
        $sql = "SELECT * FROM AlumnosLab";
        $res = mysqli_query($con, $sql);
        $alumnos_lab = array();
        while($row = mysqli_fetch_array($res)) {
            $lab = intval($row['Laboratorio']);
            unset($laboratorios[array_search($lab, $laboratorios)]);
            $alumnos_lab[intval($lab)] = intval($row["Alumnos"]);
        }
        if (count($laboratorios) != 0)
            $laboratorio = array_pop(array_reverse($laboratorios));
        else
            $laboratorio = array_keys($alumnos_lab, min($alumnos_lab));
        if (is_array($laboratorio))
            $laboratorio = $laboratorio[0];
        return $laboratorio;
    }

    function asigna_examen($ref, $con) {
        $horario = asigna_horario($con);
        $laboratorio = asigna_lab($con, $horario);
        $sql = "INSERT INTO Examen VALUES ('".htmlentities($ref)."', '2018-06-13 ".htmlentities($horario).":00:00', ".htmlentities($laboratorio).", 0)";
        return mysqli_query($con, $sql);
    }

    function get_report_data($vista) {
        $sql = "SELECT * FROM ".$vista;
        return mysqli_query(connect(), $sql);
    }

    function get_comprobante($ref) {
        $con = connect();
        $sql = "SELECT * FROM Alumno WHERE NoReferencia='".$ref."'";
        $res = mysqli_query($con, $sql);
        $alum_data = mysqli_fetch_assoc($res);
        $sql = "SELECT * FROM Examen WHERE NoReferencia='".$ref."'";
        $res = mysqli_query($con, $sql);
        $alum_data = array_merge($alum_data, mysqli_fetch_assoc($res));
        return $alum_data;
    }

    function getImagePath($ref){
        $con = connect();
        $sql = "SELECT Foto from Alumno where NoReferencia ='$ref'";
        $res = mysqli_query($con, $sql);
        $row = mysqli_fetch_array($res);
        return $row["Foto"];
    }
?>
