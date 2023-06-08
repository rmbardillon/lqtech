let transactionInChart = document.getElementById("transactionIn").getContext("2d");
let transactionOutChart = document.getElementById("transactionOut").getContext("2d");
// let productChart = document.getElementById("productChart").getContext("2d");
const colors = [];
for (let i = 0; i < 1000; i++) {
  const r = Math.floor(Math.random() * 255);
  const g = Math.floor(Math.random() * 255);
  const b = Math.floor(Math.random() * 255);
  colors.push(`rgb(${r}, ${g}, ${b})`);
}

// $.ajax({
//   url: PRODUCT_CONTROLLER + '?action=getProducts',
//   dataType: 'json',
//   success: function(data) {
//     let modelNames = [];
//     let salesFigures = [];

//     for (let i = 0; i < data.length; i++) {
//       modelNames.push(data[i].MODEL);
//       salesFigures.push(data[i].IN_QUANTITY);
//     }
//     let barChart = new Chart(productChart, {
//       type: "pie",
//       data: {
//         labels: modelNames,
//         datasets: [{
//           label: "Quantity",
//           data: salesFigures,
//           backgroundColor: colors,
//         }]
//       },
//       options: {
//         plugins: {
//           title: {
//             display: true,
//             text: "Products Total",
//             font: {
//               size: 25,
//             }
//           },
//           legend: {
//             position: 'right',
//             display: true,
//           }
//         }
//       }
//     });
//   }
// });
$.ajax({
  url: PRODUCT_CONTROLLER + '?action=getIn',
  dataType: 'json',
  success: function(data) {
    let modelNames = [];
    let salesFigures = [];

    for (let i = 0; i < data.length; i++) {
      modelNames.push(data[i].MODEL);
      salesFigures.push(data[i].MODEL_COUNT);
    }
    let barChart = new Chart(transactionInChart, {
      type: "bar",
      data: {
        labels: modelNames,
        datasets: [{
          label: "Quantity",
          data: salesFigures,
          backgroundColor: colors,
        }]
      },
      options: {
        plugins: {
          title: {
            display: true,
            text: "In Products Today",
            font: {
              size: 25,
            }
          },
          legend: {
            position: 'right',
            display: true,
          },
        }
      }
    });
  }
});
$.ajax({
  url: PRODUCT_CONTROLLER + '?action=getSales',
  dataType: 'json',
  success: function(data) {
    let modelNames = [];
    let salesFigures = [];
    
    for (let i = 0; i < data.length; i++) {
      modelNames.push(data[i].MODEL);
      salesFigures.push(data[i].MODEL_COUNT);
    }
    let barChart = new Chart(transactionOutChart, {
      type: "bar",
      data: {
        labels: modelNames,
        datasets: [{
          label: "Quantity",
          data: salesFigures,
          backgroundColor: colors,
        }]
      },
      options: {
        plugins: {
          title: {
            display: true,
            text: "Out Products Today",
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
