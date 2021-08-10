function addressKindChange(e) {
    var seoul = ["종로구", "중구", "용산구", "성동구","광진구","동대문구","중랑구","성북구","강북구","도봉구","노원구","은평구","서대문구","마포구","양천구","강서구","구로구","금천구","영등포구","동장구","관악구","서초구","강남구","송파구","강동구"];
    var busan = ["중구", "서구", "동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","강서구","연제구","수영구","사상구","기장군"];
    var deagu = ["중구","동구","서구","남구","북구","수성구","달서구","달성군"];
    var incheon = ["중구","동구","서구","미추홀구","연수구","남동구","부평구","계양구","강화군","옹진구"];
    var gwangju = ["중구","동구","서구","남구","북구","광산구"];
    var daejeon = ["중구","동구","서구","유성구","대덕구"];
    var ulsan = ["중구","동구","남구","북구","울주구"];
    var jeju = ["제주시","서귀포시"];
    var gg = ["수원","고양","용인","성남","부천","안산","화성","남양주","안양","평택","의정부","파주","시흥","김포","광명","광주","군포","이천","오산","하남","양주","구리","안성","포천","의왕","여주","양평","동두천","과천","가평","연천"];
    var gw = ["춘천","원주","강릉","동해","태백","속초","삼척","홍천","횡성","영월","평창","정선","철원","화천","양구","인제","고성","양양"];
    var cb = ["청주","충주","제천","보은","옥천","영동","증평","진천","괴산","음성","단양"];
    var cn = ["천안","공주","보령","아산","서산","논산","계룡","당진","금산","부여","서천","청양","홍성","예산","태안"];
    var gb = ["경산","경주","고령","구미","군위","김천","문경","봉화","상주","성주","안동","영덕","영양","영주","영천","예천","울릉","울진","의성","청도","청송","칠곡","포항"];
    var gn = ["거제","거창","고성","김해","남해","밀양","사천","산청","양산","의령","진주","창녕","창원","통영","하동","함안","함양","합천"];
    var jb = ["고창","군산","김제","남원","무주","부안","순창","완주","익산","임실","장수","전주","정읍","진안"];
    var jn = ["강진","고흥","곡성","광양","구례","나주","담양","목포","무안","보성","순천","신안","여수","영광","영암","완도","장성","장흥","진도","함평","해남","화순"];
    
    
    
    var target = document.getElementById("input_ad2");

    if(e.value == "a") var d = seoul;
    else if(e.value == "b1") var d = busan;
    else if(e.value == "b2") var d = deagu;
    else if(e.value == "b3") var d = incheon;
    else if(e.value == "b4") var d = gwangju;
    else if(e.value == "b5") var d = daejeon;
    else if(e.value == "b6") var d = ulsan;
    else if(e.value == "c2") var d = jeju;
    else if(e.value == "d1") var d = gg;
    else if(e.value == "d2") var d = gw;
    else if(e.value == "d3") var d = cb;
    else if(e.value == "d4") var d = cn;
    else if(e.value == "d5") var d = gb;
    else if(e.value == "d6") var d = gn;
    else if(e.value == "d7") var d = jb;
    else if(e.value == "d8") var d = jn;


    target.options.length = 0;

    for (x in d) {
        var opt = document.createElement("option");
        opt.value = d[x];
        opt.innerHTML = d[x];
        target.appendChild(opt);
    }   
}



function checkId(){
        	var id = $('#input_id').val(); //id값이 "id"인 입력란의 값을 저장
        	
        		
        		
	        $.ajax({
	            url:'loginCheckController', //Controller에서 인식할 주소
	            type:'post', //POST 방식으로 전달
	            data:{id:id},
	            dataType : "text",
	            success:function(data){
	            	
	            
	            	 if(data != "true"){ 
	                     $('.id_ok').css("display","inline-block"); 
	                     $('.id_already').css("display", "none");
	                 } else { 
	                     $('.id_already').css("display","inline-block");
	                     $('.id_ok').css("display", "none");
	                 }
	                 
	                 if(id==""){
        		    $('.id_ok').css("display","none"); 
	                $('.id_already').css("display", "none");
        		}
	            	
	            	
	            	
	            	
	        }
	    });
	        
        }
  
  
  
  
  function checkPw(){
  
  			
        	var pw = $('#input_pw').val(); 
        	var pw2 = $('#input_pw2').val();
        	
        	
	       
	        if(pw == pw2){
	                     $('.pw_ok').css("display","inline-block"); 
	                     $('.pw_notOk').css("display", "none");
	                 }else { 
	                     $('.pw_notOk').css("display","inline-block");
	                     $('.pw_ok').css("display", "none");
	                 }
	                           	
	        
        }
        
        
        
 function checkSpacebar(){
 
 	var kcode = event.keyCode;
 	if(kcode == 32) event.returnValue = false;
 	
 }
 
 


function checkNick(){
        	var nick = $('#input_nick').val(); //id값이 "id"인 입력란의 값을 저장
	        $.ajax({
	            url:'nickCheckController', //Controller에서 인식할 주소
	            type:'post', //POST 방식으로 전달
	            data:{nick:nick},
	            dataType : "text",
	            success:function(data){
	            	
	            
	            	 if(data != "true"){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
	                     $('.nick_ok').css("display","inline-block"); 
	                     $('.nick_already').css("display", "none");
	                 } else { 
	                     $('.nick_already').css("display","inline-block");
	                     $('.nick_ok').css("display", "none");
	                 }
	                 
	                 if(nick==""){
        		    $('.nick_ok').css("display","none"); 
	                $('.nick_already').css("display", "none");
        		}
	            	
	            	
	            	
	            	
	        }
	    });
	        
        }
        
 function showcert1(){
 
 			
 			$('.blind1').css("display","inline-block");
 			$('#addButton0').css("display","none"); 
 			$('.minButton0').css("display","inline-block");
 			
 			 

 
 }
 
  function disscert1(){
 
 			
 			$('.blind1').css("display","none");
 			$('#addButton0').css("display","inline-block"); 
 			$('.minButton0').css("display","none");
 			
 			 

 }
 
  function showcert2(){
 
 			
 			$('.blind2').css("display","inline-block");
 			$('#addButton1').css("display","none"); 
 			$('.minButton1').css("display","inline-block");
 			
 			 

 
 }
 
  function disscert2(){
 
 			
 			$('.blind2').css("display","none");
 			$('#addButton1').css("display","inline-block"); 
 			$('.minButton1').css("display","none");
 			
 			 

 }
 
   function showcert3(){
 
 			
 			$('.blind3').css("display","inline-block");
 			$('#addButton2').css("display","none"); 
 			$('.minButton2').css("display","inline-block");
 			
 			 

 
 }
 
  function disscert3(){
 
 			
 			$('.blind3').css("display","none");
 			$('#addButton2').css("display","inline-block"); 
 			$('.minButton2').css("display","none");
 			
 			 

 }
 
    function showcert4(){
 
 			
 			$('.blind4').css("display","inline-block");
 			$('#addButton3').css("display","none"); 
 			$('.minButton3').css("display","inline-block");
 			
 			 

 
 }
 
  function disscert4(){
 
 			
 			$('.blind4').css("display","none");
 			$('#addButton3').css("display","inline-block"); 
 			$('.minButton3').css("display","none");
 			
 			 

 }
 
 
 
 
 
 
 $('button#addButton0').click(function(e)
{
	e.preventDefault();   
});

 $('button#addButton1').click(function(e)
{
	e.preventDefault();   
});

 $('button#addButton2').click(function(e)
{
	e.preventDefault();   
});

 $('button#addButton3').click(function(e)
{
	e.preventDefault();   
});

 $('button.minButton0').click(function(e)
{
	e.preventDefault();   
});

 $('button.minButton1').click(function(e)
{
	e.preventDefault();   
});

 $('button.minButton2').click(function(e)
{
	e.preventDefault();   
});
 $('button.minButton3').click(function(e)
{
	e.preventDefault();   
});

 



