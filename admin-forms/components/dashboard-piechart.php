<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 

    <script type="text/javascript">  
        google.charts.load('current', {'packages':['corechart']});  
        google.charts.setOnLoadCallback(drawChart);  
        function drawChart()  
        {  
            var data = google.visualization.arrayToDataTable([  
                ['Course', 'Number'],  
                <?php  

                $sql_query = "SELECT program, count(*) as number FROM uploaded_thesis GROUP BY program";
                $result = $con->query($sql_query);

                    while($row = mysqli_fetch_array($result)){  
                        echo "['".$row["program"]."', ".$row["number"]."],";  
                          }  
                ?>  
            ]);  
            var options = {  
                //is3D:true,  
                pieHole: 0.3
            };  
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));  
        chart.draw(data, options);  
           } 
    </script>
    

    <script type="text/javascript">  
        google.charts.load('current', {'packages':['corechart']});  
        google.charts.setOnLoadCallback(drawChart1);  
        function drawChart1()  
        {  
            var data = google.visualization.arrayToDataTable([  
                ['Department', 'Number'],  
                <?php  

                $sql_query = "SELECT department, count(*) as number FROM uploaded_thesis GROUP BY department";
                $result = $con->query($sql_query);

                    while($row = mysqli_fetch_array($result)){  
                        echo "['".$row["department"]."', ".$row["number"]."],";  
                          }  
                ?>  
            ]);  
            var options = {  
                //is3D:true,  
                pieHole: 0.3
            };  
        var chart = new google.visualization.PieChart(document.getElementById('piechart-department'));  
        chart.draw(data, options);  
           } 
    </script>

<script type="text/javascript">  
        google.charts.load('current', {'packages':['corechart']});  
        google.charts.setOnLoadCallback(drawChart2);  
        function drawChart2()  
        {  
            var data = google.visualization.arrayToDataTable([  
                ['Expert', 'End-user'],  
                <?php  

                $sql_query = "SELECT acc_type, count(*) as number FROM admin_accounts GROUP BY acc_type UNION ALL SELECT acc_type, count(*) as number FROM user_accounts GROUP BY acc_type";
                $result = $con->query($sql_query);

                    while($row = mysqli_fetch_array($result)){  
                        echo "['".$row["acc_type"]."', ".$row["number"]."],";  
                          }  
                ?>  
            ]);  
            var options = {  
                //is3D:true,  
                pieHole: 0.3
            };  
        var chart = new google.visualization.PieChart(document.getElementById('piechart-acctype'));  
        chart.draw(data, options);  
           } 
    </script>