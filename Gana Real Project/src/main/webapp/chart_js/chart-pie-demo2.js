Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

var name1 = document.getElementById("wish_name1").value;
var name2 = document.getElementById("wish_name2").value;
var name3 = document.getElementById("wish_name3").value;
var name4 = document.getElementById("wish_name4").value;


let count1 =  Number(document.getElementById("wish_cnt1").value);
let count2 =  Number(document.getElementById("wish_cnt2").value);
let count3 =  Number(document.getElementById("wish_cnt3").value);
let count4 =  Number(document.getElementById("wish_cnt4").value);


let num_sum = (count1+count2+count3+count4);

let result_1 = (count1/num_sum)*100;
let result_2 = (count2/num_sum)*100;
let result_3 = (count3/num_sum)*100;
let result_4 = (count4/num_sum)*100;

let data1_1 = (result_1).toFixed(1);
let data2_2 = (result_2).toFixed(1);
let data3_3 = (result_3).toFixed(1);
let data4_4 = (result_4).toFixed(1);





var ctx = document.getElementById("myPieChart2");

var myPieChart = new Chart(ctx, {

  type: 'doughnut',
  data: {
    labels: [name1, name2, name3, name4],
    datasets: [{
      data: [data1_1, data2_2, data3_3, data4_4],
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