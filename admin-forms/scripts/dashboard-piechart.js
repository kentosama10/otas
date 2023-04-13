google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Course', 'Number'],
        "<?php  
        while ($row = mysqli_fetch_array($result)) {
            echo "['".$row["course"].
            "', ".$row["number"].
            "],";
        } ?
        > "
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