
$(function () {
    // Get the canvas element and create the chart
    var ctx = document.getElementById('myChart').getContext('2d');
    var item = document.getElementsByTagName("li")
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [
                {
                    label: item,
                    data: [10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32],
                    borderColor: 'red',
                    fill: false
                },
                // {
                //   label: 'Tomatoes',
                //   data: [8, 9, 11, 12, 14, 15, 17, 18, 20, 21, 23, 25],
                //   borderColor: 'blue',
                //   fill: false
                // },
                // {
                //   label: 'Carrots',
                //   data: [6, 7, 8, 9, 10, 12, 13, 14, 15, 16, 18, 20],
                //   borderColor: 'green',
                //   fill: false
                // }
            ]
        },
        options: {
            responsive: true,
            title: {
                display: true,
                text: 'Price Trend in Market for Various Crops and Vegetables'
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
});
