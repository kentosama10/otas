google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Program', 'Number'],
        <?php  
        // assuming $result is defined with a query that retrieves data from the database
        while ($row = mysqli_fetch_array($result)) {
            echo "['".$row["program"].
            "', ".$row["number"].
            "],";
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

$(window).resize(function() {
    drawChart();
});
