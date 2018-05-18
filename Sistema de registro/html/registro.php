<html>
  <head>
    <meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge, chrome=1">
    <meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no'/>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title> Formato de registro </title>
    <link href = "./../css/materialize/materialize.min.css" rel = "stylesheet">
    <link href = "./../css/validetta/validetta.min.css" rel = "stylesheet">
    <link href = "./../css/fontawesome/css/fontawesome-all.min.css" rel = "stylesheet">
    <link href = "./../css/nouislider/nouislider.min.css" rel = "stylesheet">
  </head>

  <body background = "./../media/login-fondo.jpg">
    <div class = "valign-wrapper row">
      <div class = "col card hoverable l4 pull-l4 m6 pull-m3 s10 pull-s1">
        <form id = "registro_formulario" enctype = "multipart/form-data">
          <div class = "card-content">
            <span class = "card-title"> Formato de registro </span>
            <span> &#191;Ya tienes una cuenta&#63; Accede a ella dando click <a href = "./../index.php"> aqui </a> <span>
            <div class = "row">
              <div class = "col s12 input-field">
                <label for = "referencia"> N&uacute;mero de referencia: </label>
                <input type = "text" id = "referencia" name = "referencia" maxlength = "10" data-validetta = "required,minLength[10],regExp[reReferencia]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "nombre"> Nombre: </label>
                <input type = "text" id = "nombre" name = "nombre" data-validetta = "required,maxLength[20],regExp[reCaracteres]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "apellidoP"> Primer apellido: </label>
                <input type = "text" id = "apellidoP" name = "apellidoP" data-validetta = "required,maxLength[20],regExp[reCaracteres]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "apellidoM"> Segundo apellido: </label>
                <input type = "text" id = "apellidoM" name = "apellidoM" data-validetta = "required,maxLength[20],regExp[reCaracteres]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "direccion"> Direccion: </label>
                <input type = "text" id = "direccion" name = "direccion" maxlength = "100" data-validetta = "required,maxLength[100]"/>
              </div>
              <div class = "col s12 input-field">
                <select id = "estado" name = "estado" data-validetta = "required">
                  <option value = ""> Estado: </option>
                  <option value = "Aguascalientes"> Aguascalientes </option>
                  <option value = "Baja California"> Baja California </option>
                  <option value = "Baja California Sur"> Baja California Sur </option>
                  <option value = "Campeche"> Campeche </option>
                  <option value = "Chiapas"> Chiapas </option>
                  <option value = "Chihuahua"> Chihuahua </option>
                  <option value = "CDMX"> CDMX </option>
                  <option value = "Coahuila"> Coahuila </option>
                  <option value = "Colima"> Colima </option>
                  <option value = "Durango"> Durango </option>
                  <option value = "Guanajuato"> Guanajuato </option>
                  <option value = "Guerrero"> Guerrero </option>
                  <option value = "Hidalgo"> Hidalgo </option>
                  <option value = "Jalisco"> Jalisco </option>
                  <option value = "Mexico"> M&eacute;xico </option>
                  <option value = "Michoacan"> Michoac&aacute;n </option>
                  <option value = "Morelos"> Morelos </option>
                  <option value = "Nayarit"> Nayarit </option>
                  <option value = "Nuevo Leon"> Nuevo Le&oacute;n </option>
                  <option value = "Oaxaca"> Oaxaca </option>
                  <option value = "Puebla"> Puebla </option>
                  <option value = "Queretaro"> Quer&eacute;taro </option>
                  <option value = "Quintana Roo"> Quintana Roo </option>
                  <option value = "San Luis Potosi"> San Luis Potos&iacute; </option>
                  <option value = "Sinaloa"> Sinaloa </option>
                  <option value = "Sonora"> Sonora </option>
                  <option value = "Tabasco"> Tabasco </option>
                  <option value = "Tamaulipas"> Tamaulipas </option>
                  <option value = "Tlaxcala"> Tlaxcala </option>
                  <option value = "Veracruz"> Veracruz </option>
                  <option value = "Yucatan"> Yucat&aacute;n </option>
                  <option value = "Zacatecas"> Zacatecas </option>
                </select>
              </div>
              <div class = "col s12 input-field">
                <label for = "email"> Email: </label>
                <input type = "text" id = "email" name = "email" maxlength = "50" data-validetta = "required,maxLength[50],regExp[reEmail]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "curp"> CURP: </label>
                <input type = "text" id = "curp" name = "curp" data-validetta = "required,maxLength[50],regExp[reCURP]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "telefono"> Telefono: LADA + numero </label>
                <input type = "text" id = "telefono" name = "telefono" maxlength = "10" data-validetta = "required,number,maxLength[10]"/>
              </div>
              <div class = "col s12 input-field">
                <label for = "contrasena"> Contrase&ntilde;a: </label>
                <input type = "password" id = "contrasena" name = "contrasena" maxlength = "16" data-validetta = "required,minLength[8],maxLength[16]"/>
              </div>
              <div style = "clear: both; margin: 3%"> </div>
              <div class = "file-field input-field">
                <div class = "btn">
                  <span> Buscar foto: </span>
                  <input type = "file"/>
                </div>
                <div class = "file-path-wrapper">
                  <input class = "file-path validate" type = "text" placeholder = "Sube una fotografia tuya" data-validetta = "required"/>
                </div>
              </div>
              <div class = "col s12 input-field">
                <select id = "escuela_procedencia" name = "escuela_procedencia" data-validetta = "required">
                  <option value = ""> Escuela de procedencia: </option>
                  <option value = "CECyT-1"> CECyT N&uacute;mero 1 </option>
                  <option value = "CECyT-2"> CECyT N&uacute;mero 2 </option>
                  <option value = "CECyT-3"> CECyT N&uacute;mero 3 </option>
                  <option value = "CECyT-4"> CECyT N&uacute;mero 4 </option>
                  <option value = "CECyT-5"> CECyT N&uacute;mero 5 </option>
                  <option value = "CECyT-6"> CECyT N&uacute;mero 6 </option>
                  <option value = "CECyT-7"> CECyT N&uacute;mero 7 </option>
                  <option value = "CECyT-8"> CECyT N&uacute;mero 8 </option>
                  <option value = "CECyT-9"> CECyT N&uacute;mero 9 </option>
                  <option value = "CECyT-10"> CECyT N&uacute;mero 10 </option>
                  <option value = "CECyT-11"> CECyT N&uacute;mero 11 </option>
                  <option value = "CECyT-12"> CECyT N&uacute;mero 12 </option>
                  <option value = "CECyT-13"> CECyT N&uacute;mero 13 </option>
                  <option value = "CECyT-14"> CECyT N&uacute;mero 14 </option>
                  <option value = "CECyT-15"> CECyT N&uacute;mero 15 </option>
                  <option value = "CECyT-16"> CECyT N&uacute;mero 16 </option>
                  <option value = "CECyT-17"> CECyT N&uacute;mero 17 </option>
                  <option value = "CECyT-18"> CECyT N&uacute;mero 18 </option>
                  <option value = "CET-1"> CET N&uacute;mero 1 </option>
                </select>
              </div>
              <div class = "col s12 input-field">
                <select id = "lugar_nacimiento" name = "lugar_nacimiento" data-validetta = "required">
                  <option value = ""> Lugar de nacimiento: </option>
                  <option value = "Aguascalientes"> Aguascalientes </option>
                  <option value = "Baja California"> Baja California </option>
                  <option value = "Baja California Sur"> Baja California Sur </option>
                  <option value = "Campeche"> Campeche </option>
                  <option value = "Chiapas"> Chiapas </option>
                  <option value = "Chihuahua"> Chihuahua </option>
                  <option value = "CDMX"> CDMX </option>
                  <option value = "Coahuila"> Coahuila </option>
                  <option value = "Colima"> Colima </option>
                  <option value = "Durango"> Durango </option>
                  <option value = "Guanajuato"> Guanajuato </option>
                  <option value = "Guerrero"> Guerrero </option>
                  <option value = "Hidalgo"> Hidalgo </option>
                  <option value = "Jalisco"> Jalisco </option>
                  <option value = "Mexico"> M&eacute;xico </option>
                  <option value = "Michoacan"> Michoac&aacute;n </option>
                  <option value = "Morelos"> Morelos </option>
                  <option value = "Nayarit"> Nayarit </option>
                  <option value = "Nuevo Leon"> Nuevo Le&oacute;n </option>
                  <option value = "Oaxaca"> Oaxaca </option>
                  <option value = "Puebla"> Puebla </option>
                  <option value = "Queretaro"> Quer&eacute;taro </option>
                  <option value = "Quintana Roo"> Quintana Roo </option>
                  <option value = "San Luis Potosi"> San Luis Potos&iacute; </option>
                  <option value = "Sinaloa"> Sinaloa </option>
                  <option value = "Sonora"> Sonora </option>
                  <option value = "Tabasco"> Tabasco </option>
                  <option value = "Tamaulipas"> Tamaulipas </option>
                  <option value = "Tlaxcala"> Tlaxcala </option>
                  <option value = "Veracruz"> Veracruz </option>
                  <option value = "Yucatan"> Yucat&aacute;n </option>
                  <option value = "Zacatecas"> Zacatecas </option>
                </select>
              </div>
              <div class = "col s12 input-field">
                <label for = "fecha_nacimiento"> Fecha de nacimiento: </label>
                <input type = "text" class = "datepicker" name = "fecha_nacimiento" id = "fecha_nacimiento" data-validetta = "required"/>
              </div>
              <div style = "clear: both; margin: 5%"> </div>
              <div class = "col l3 m2" > Edad: </div> <div id = "valor-1-slider"> </div>
              <div style = "clear: both; margin: 5%"> </div>
              <div id = "edad-slider"></div>
              <div style = "clear: both; margin: 5%"> </div>
              <div class = "col l4 m3" > Promedio: </div> <div id = "valor-2-slider"> </div>
              <div style = "clear: both; margin: 5%"> </div>
              <div id = "promedio-slider"></div>
              <div style = "clear: both; margin: 10%"> </div>
              <div id = "genero">
                <label class = "col l6 m6 s6">
                  <input name = "grupo_radio" type = "radio" value = "Hombre" data-validetta = "required"/>
                  <span> Hombre </span>
                </label>
                <label class = "col l6 m6 s6">
                  <input name = "grupo_radio" type = "radio" value = "Mujer" data-validetta = "required"/>
                  <span> Mujer </span>
                </label>
              </div>
            </div>
          </div>
          <div class = "col l12 m12 s12 input-field card-action">
            <button type = "reset" class = "btn grey waves-effect" style = "width:100%;"> Restablecer </button>
            <button type = "submit" class = "btn blue waves-effect" style = "width:100%; margin-top: 10px;"> Entrar </button>
          </div>
        </form>
      </div>
    </div>
  </body>

  <script src = "./../js/jquery/jquery-3.3.1.min.js"></script>
  <script src = "./../js/materialize/materialize.min.js"></script>
  <script src = "./../js/validetta/validetta.min.js"></script>
  <script src = "./../js/nouislider/nouislider.min.js"></script>
  <script src = "./../js/validetta/localization/validettaLang-es-ES.js"></script>
  <script src = "./../js/registro.js"></script>
</html>
