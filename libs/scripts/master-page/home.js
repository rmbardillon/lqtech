let homeChart = document.getElementById("homeChart").getContext("2d");

$.ajax({
  url: PRODUCT_CONTROLLER + '?action=getProducts',
  dataType: 'json',
  success: function(data) {
    console.log(data);
    let modelNames = [];
    let salesFigures = [];

    for (let i = 0; i < data.length; i++) {
      modelNames.push(data[i].MODEL);
      salesFigures.push(data[i].QUANTITY);
    }
    console.log(modelNames);
    console.log(salesFigures);
    let barChart = new Chart(homeChart, {
      type: "doughnut",
      data: {
        labels: modelNames,
        datasets: [{
          label: "Quantity",
          data: salesFigures,
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
          }
        }
      }
    });
  }
});
