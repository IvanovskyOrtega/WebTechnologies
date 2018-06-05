<?php
    require("../php/DB_Manager.php");
    $res = get_report_data("AlumnoMunicipio");
?>
<html>
    <head>
        <script src="../js/jquery/jquery-3.3.1.min.js"></script>
        <script src="../js/canvasjs.min.js"></script>
        <script type="text/javascript">
            window.onload = function () {
                var chart = new CanvasJS.Chart("chartContainer", {
                    title: {
                        text: "Cantidad de alumnos por municipio"
                    },
                    axisX: {
                        title: "Municipio"
                    },
                    axisY: {
                        title: "Cantidad de alumnos"
                    },
                    data: [
                    {
                        // Change type to "doughnut", "line", "splineArea", etc.
                        type: "column",
                        dataPoints: [
                            <?php
                                while ($row = mysqli_fetch_array($res)) {
                                    echo "{ label: '".html_entity_decode($row['Municipio'])."', y: ".$row['Alumnos']."},";
                                }
                            ?>
                        ]
                    }
                    ]
                });
                chart.render();
                var canvas = $("#chartContainer .canvasjs-chart-canvas").get(0);
                var dataURL = canvas.toDataURL('image/png');
                $.ajax({
                    method: "post",
                    url: "./chart_to_img.php",
                    data: {
                        img_url: dataURL,
                        file_name: 'alum_mun.png'
                    },
                    success: function(resp) {
                        if (resp) {
                            location.href = 'report_pdf.php';
                        } else {
                            alert("Imagen no creada");
                        }
                    }
                });
            }
        </script>
        <style>
            #chartContainer {
                width: 1920px;
                height: 1080px;
            }
        </style>
    </head>
    <body>
        <div id="chartContainer"></div>
    </body>
</html>