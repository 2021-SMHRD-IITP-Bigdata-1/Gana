// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example

var str1 = document.getElementById("test1").value;
var str2 = document.getElementById("test2").value;
var str3 = document.getElementById("test3").value;
var str4 = document.getElementById("test4").value;


let cnt1 =  Number(document.getElementById("cnt1").value);
let cnt2 =  Number(document.getElementById("cnt2").value);
let cnt3 =  Number(document.getElementById("cnt3").value);
let cnt4 =  Number(document.getElementById("cnt4").value);


let sum = (cnt1+cnt2+cnt3+cnt4);

let result1 = (cnt1/sum)*100;
let result2 = (cnt2/sum)*100;
let result3 = (cnt3/sum)*100;
let result4 = (cnt4/sum)*100;

let data1 = (result1).toFixed(1);
let data2 = (result2).toFixed(1);
let data3 = (result3).toFixed(1);
let data4 = (result4).toFixed(1);

var intoStr1 = data1+"%";
var intoStr2 = data2+"%";
var intoStr3 = data3+"%";
var intoStr4 = data4+"%";



var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: [str1, str2, str3, str4],
    datasets: [{
      data:  [data1, data2, data3, data4],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});