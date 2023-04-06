let homeChart = document.getElementById("homeChart").getContext("2d");

$.ajax({
  url: 'data.json',
  dataType: 'json',
  success: function(data) {
    let brandNames = data.brands.map(brand => brand.name);
    let salesFigures = data.brands.map(brand => brand.sales);
    
    let barChart = new Chart(homeChart, {
      type: "doughnut",
      data: {
        labels: brandNames,
        datasets: [{
          label: "Sales",
          data: salesFigures,
          pointLabel: "Sales",
        }]
      },
      options: {
        plugins: {
          title: {
            display: true,
            text: "Sales per day",
            font: {
              size: 25,
            }
          },
          legend: {
            position: 'right',
            display: true,
          },
          subtitle: {
            display: true,
            text: "Sales per day",
          }
        }
      }
    });
  }
});
