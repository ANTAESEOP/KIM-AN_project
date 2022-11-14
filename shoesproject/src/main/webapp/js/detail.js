detail()
let callComponent = 0;
let hideComponent = 0;
let hideNum = 0;
let productSellInfoSize = 0;
let productBuyInfoSize = 0;
let product_number = document.querySelector(".product_number").innerHTML

function detail() {
	$.ajax({
		url : "/shoesproject/product/detail",
		async: false,
		success : function (re) {
			let product = JSON.parse(re)
			console.log("product")
			console.log(product)
			html = `<h1>${product.pno}번 상품 디테일입니다.</h1>`
			let pimg = "/shoesproject/pupload/"+ product.pimg
			document.querySelector('.priceimg').src = pimg
			document.querySelector('.priceimg1').src = pimg
			
			document.querySelector('.product').src = pimg
			document.querySelector(".productname").innerHTML = product.pname
			document.querySelector(".productdate").innerHTML = product.preleaseday
			document.querySelector(".productcolor").innerHTML = product.pcolor
			document.querySelector(".productpbrand").innerHTML = product.pbrand
			document.querySelector(".product_number").innerHTML = product.pno
			document.querySelector(".product_engliname").innerHTML = product.pname
			document.querySelector(".product_koreaname").innerHTML = product.pcolor
			document.querySelector(".product_number1").innerHTML = product.pno
			document.querySelector(".product_engliname1").innerHTML = product.pname
			document.querySelector(".product_koreaname1").innerHTML = product.pcolor
		}
	})
}
function sellAddButton(num){ // 판매
	product_number = document.querySelector(".product_number").innerHTML
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	let pricelist = document.querySelector(".pricelist")
   	 hideNum = Number(hideComponent.innerHTML);
   	 let pno = product_number;
  	productSellInfoSize = document.querySelector(".productSellInfoSize")
   	productSellInfoSize.innerHTML = num;
	$.ajax({	
		url : "/shoesproject/product/detail",
		async: false,
		type :'post',
		data : {"hideNum" : hideNum , "type" : 3 ,"pno" : pno}, // hideNum은 size이다.
		success : re=>{
			
		if(re){		
			let json = JSON.parse(re)
			
			html =  '<tr>'+
				'<td>신발사이즈</td>'+
				'<td>가격</td>'+
				'<td>유저아이디</td>'+
			'</tr>';
			for(let i = 0; i<json.length; i++){
			
		    html += '<tr class="productlist">'
					    +'<td><button class="productlist" onclick="productlist('+json[i].spno+')">'+json[i].spsize+'</button></td>'
					    +'<td><button class="productlist" onclick="productlist('+json[i].spno+')">'+json[i].spprice+'</button></td>'
					    +'<td><button class="productlist" onclick="productlist('+json[i].spno+')">'+json[i].spbuyid+'</button></td>'
				    +'</tr>'
		    
		}
		pricelist.innerHTML = html;}
		else{
			html = ''
			hideComponent = document.querySelector("#size");
			hideNum = Number(hideComponent.innerHTML);
			let pno = product_number;
			$.ajax({
				url: "/shoesproject/product/detail",
				async: false,
				type: 'post',
				data: { "hideNum": hideNum, "type": 3, "pno": pno },
				success: re => {
					if (re) {
						let json = JSON.parse(re)
						for (let i = 0; i < json.length; i++) {
							html += '<button class="productlist" onclick="productlist(' + json[i].spno + ')">' +
								'<div>' + json[i].spsize + '</div>' +
								'<div>' + json[i].spprice + '</div>' +
								'<div>' + json[i].spbuyid + '</div>' +
								'</button>'
						}
						pricelist.innerHTML = html;
					}
					else {
						html = ''
					}
				}
			})
		}
}})}

/**-------------------------------판매입찰하기 */
function sellmain() {
	let html2 = ''
	let html = '희망가격 : <input type="text" class="selprice" placeholder="원단위로 입력해주세요.">'
	document.querySelector('.sellmainprice').innerHTML = html
	html2 = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>' +
		'<button type="button" class="btn btn-primary" onclick="selin()">sell</button>';
	document.querySelector('.modal-footer').innerHTML = html2
}
/*-----------------------------------------------------------------------------*/
function buyAddButton(num){ // 구매
	console.log(num);
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	product_number = document.querySelector(".product_number").innerHTML
	hideComponent = document.querySelector("#size")
	hideComponent.innerHTML = num;
	let pricelist1 = document.querySelector(".pricelist1")
	 hideComponent = document.querySelector("#size");
   	 hideNum = Number(hideComponent.innerHTML);
   	 let pno = product_number;
   	 productBuyInfoSize = document.querySelector(".productBuyInfoSize")
   	 productBuyInfoSize.innerHTML = num;
	$.ajax({	
		url : "/shoesproject/product/detail",
		async: false,
		type :'post',
		data : {"hideNum" : hideNum , "type" : 4 ,"pno" : pno},
		success : re=>{
			
		if(re){		
			let json = JSON.parse(re)
			console.log(json)
			let html =  '<tr>'+
							'<td>신발사이즈</td>'+
							'<td>가격</td>'+
							'<td>유저아이디</td>'+
						'</tr>';
			
			for(let i = 0; i<json.length; i++){
		    html += '<tr class="productlist">'
		    +'<td><button class="productlist" onclick="productbuylist('+json[i].spno+')">'+json[i].spsize+'</button></td>'
		    +'<td><button class="productlist" onclick="productbuylist('+json[i].spno+')">'+json[i].spprice+'</button></td>'
		    +'<td><button class="productlist" onclick="productbuylist('+json[i].spno+')">'+json[i].spsellid+'</button></td>'
		    +'</tr>'
		}
		pricelist1.innerHTML = html;}
		else{
			html = ''
			}
		}
	})
}
/**-------------------------------구매입찰하기 */
function buymain() {
	let html = ''
	let html2 = ''
	html = '희망가격 : <input type="text" class="selprice1" placeholder="원단위로 입력해주세요.">'
	document.querySelector('.buymainprice').innerHTML = html
	html2 = '<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>' +
		'<button type="button" class="btn btn-primary" onclick="selbuy()">buy</button>';
	document.querySelector('#modal-footer').innerHTML = html2
}
/**----------------------------------------------------- */
function selin() {
	let selprice = document.querySelector(".selprice").value
	hideComponent = document.querySelector("#size");
	hideNum = Number(hideComponent.innerHTML);
	let pno = Number(product_number);
	$.ajax({
		url: "/shoesproject/product/detail",
		async: false,
		type: "post",
		data: { "selprice": selprice, "hideNum": hideNum, "type": 1, "pno": pno },
		success: function(re) {
			if (re == "true") {
				alert("등록성공")
				window.location.reload()
			} else {
				alert("실패")
			}
		}
	})
}
function selbuy() {
	let selprice = document.querySelector(".selprice1").value
	hideComponent = document.querySelector("#size");
	hideNum = Number(hideComponent.innerHTML);
	let pno = Number(product_number)
	$.ajax({
		url: "/shoesproject/product/detail",
		async: false,
		type: "post",
		data: { "selprice": selprice, "hideNum": hideNum, "type": 2, "pno": pno },
		success: function(re) {
			if (re == "true") {
				alert("등록성공")
				window.location.reload()
			} else {
				alert("실패")
			}
		}
	})
}
/*------------------------------------판매 결제*----------------*/
function productlist(spno){
	let ok =  confirm("즉시판매하시겠습니까?")
	console.log(spno)
	if(ok==true){
		$.ajax({
			url : "/shoesproject/product/detail",
			async: false,
			type : "post",
			data : {"spno":spno ,"type" : 6},
			success : re=>{alert(re)
				window.location.reload()}
		})
	}
}
/*------------------------------------구매 결제*----------------*/

function productbuylist(spno){
	let ok =  confirm("즉시구매하시겠습니까?")
	if(ok==true){
		$.ajax({
			url : "/shoesproject/product/detail",
			async: false,
			type : "post",
			data : {"spno":spno ,"type" : 7},
			success : re=>{alert(re)}
		})
	}
}
let xValues; 
let yValues;
/*-------------------------------거래 리스트------------------------*/
suclistchart()
function suclistchart() {
	let pno = Number(product_number)
	if (product_number != null) {
		$.ajax({
			url: "/shoesproject/product/detail",
			async: false,
			type: "post",
			data: { "type": 5, "pno": pno },
			success: re => {
				let json = JSON.parse(re)
				xValues = [];
				yValues = [];
				for (let i = 0; i < json.length; i++) {
					xValues[i] = ""
					yValues[i] = json[i].spprice
					console.log(yValues)
				}
			}
		})
	}
}
suclist()
function suclist() {
	let slist = document.querySelector(".successlist")
	let html = '<tr> <th>사이즈</th> <th>가격</th> <th>시간</th> </tr>'
	let pno = Number(product_number)
	if (product_number != null) {
		$.ajax({
			url: "/shoesproject/product/detail",
			async: false,
			type: "post",
			data: { "type": 8, "pno": pno },
			success: re => {
				let json = JSON.parse(re)
				for (let i = 0; i < json.length; i++) {
					html += '<tr>' +
						'<th>' + json[i].spsize + '</th>' +
						'<th>' + json[i].spprice + '</th>' +
						'<th>' + json[i].spendday + '</th>' +
						'</tr>'
				}
				slist.innerHTML = html
			}
		})
	}
}
ChartJs();
function ChartJs(){
/*--------------------------------차트구역-----------------------*/


// Chart객체의 구조 
// new Chart("dom으로 가져올 id",{객체인데 그래프에 설정 하고싶은 것들을 넣어주는겁니다.} )
new Chart("myChart", {
  type: "line",
  data: {
    labels: xValues,
    //  라벨을 xValues라는 변수를 쓸거다.
    //datasets은 아마 그래프 css설정 인거 같아요. 
    datasets: [{
      data: yValues, // data에는 yValues를 넣을겁니다.
      fill: false, // 그래프와 x축을 적분처럼 다 색을 칠할건지 ==> 근데 이건 안하는게 이쁨 
      // 그래프 색은 빨간색이 좋을거 같아요.
      backgroundColor: "#3136ff",
      borderColor: "#3136ff",
      // 이게 꼭짓점 없애는 애다. 시작
      pointRadius: 3,
      lineTension : 0
      // 이게 꼭짓점 없애는 애다. 끝
    }]
  },
  // datasets를 이렇게 쓸거다.
  options: {
	// 그래프 위의 말 지우기 시작
    legend: {display: false},
	// 그래프 위의 말 지우기 끝
    scales: {
      // x축 설정 시작
    	xAxes: [{
			ticks:{
				fontSize : 10,fontFamily : 'Helvetica Neue',fontWeight: 600,fontColor : 'black'
			}
		}]
      // x축 설정 끝 
      // y축 설정 시작 
      ,yAxes: [{
    	  ticks: {min: 0, max:500000, fontSize : 10, fontFamily : 'Helvetica Neue',fontWeight: 600,fontColor : 'black', reverse: false ,beginAtZero: true}
      	  ,position: 'right'
      	  }]
    	
      // y축 설정 끝 
      // ==> 0에서 시작, 최대는 3만으로 설정, reverse(되짚는거 말하는거 같습니다. 안하는게 좋습니다.), y축 설명의 위치는 당연히 오른쪽 
    }
    ,animations: {
        tension: {
            duration: 1000,
            easing: 'linear',
            from: 1,
            to: 10,
            loop: true
          }
        }
    
  }
  // 옵션으로 이렇게 쓸거다.
});
}
// 드롭다운 닫기 
$(window).scroll(function () { 
	var scrollValue = $(document).scrollTop(); 
	console.log(scrollValue);
    if (scrollValue>0&&scrollValue<89.5){
		imgComponent = document.querySelector('.img_coponent')
		imgComponent.style.position = "static"; 	
		imgComponent.style.top = "none"; 
	}
    else if(scrollValue>89.5&&scrollValue < 760 ){
		imgComponent = document.querySelector('.img_coponent')
		imgComponent.style.position = "fixed";
		imgComponent.style.top = "10px"; 	
	}
	else if(scrollValue>760&&scrollValue < 2000){
		imgComponent = document.querySelector('.img_coponent')
		imgComponent.style.position = "relative";		
		imgComponent.style.top = "679px"; 
	}

})
