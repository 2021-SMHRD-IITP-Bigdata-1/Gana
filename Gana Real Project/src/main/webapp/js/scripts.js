function addressKindChange(e) {
    var seoul = ["종로구", "중구", "용산구", "성동구","광진구","동대문구","중랑구","성북구","강북구","도봉구","노원구","은평구","서대문구","마포구","양천구","강서구","구로구","금천구","영등포구","동장구","관악구","서초구","강남구","송파구","강동구"];
    var busan = ["중구", "서구", "동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","강서구","연제구","수영구","사상구","기장군"];
    var deagu = ["중구","동구","서구","남구","북구","수성구","달서구","달성군"];
    var incheon = ["중구","동구","서구","미추홀구","연수구","남동구","부평구","계양구","강화군","옹진구"];
    var gwangju = ["중구","동구","서구","남구","북구","광산구"];
    var daejeon = ["중구","동구","서구","유성구","대덕구"];
    var ulsan = ["중구","동구","남구","북구","울주구"];
    var target = document.getElementById("addressKindD");

    if(e.value == "a") var d = seoul;
    else if(e.value == "b-1") var d = busan;
    else if(e.value == "b-2") var d = deagu;
    else if(e.value == "b-3") var d = incheon;
    else if(e.value == "b-4") var d = gwangju;
    else if(e.value == "b-5") var d = daejeon;
    else if(e.value == "b-6") var d = ulsan;


    target.options.length = 0;

    for (x in d) {
        var opt = document.createElement("option");
        opt.value = d[x];
        opt.innerHTML = d[x];
        target.appendChild(opt);
    }   
}