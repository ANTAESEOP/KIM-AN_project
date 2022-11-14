<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoesProject</title>
<!-- 부트스트랩 css -->	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<link href="../css/detailPage.css" rel="stylesheet">
</head>
<body>

	<%@include file="../main/mainbaner.jsp" %>
	
	<%if (lid == null) {response.sendRedirect("/shoesproject/view/login.jsp");}%>
	
	<div id="main">
		<section class="main_section">
		   	<div class="img_coponent"> <!--  여기가 시작 -->
				<img class="product" src="">
				<div class="sellNote">
					<div><span id="warnComponent" class="warntext">주의</span>판매 거래 주의사항</div>
					<div id="warnContent" class="warntext" >반드시 보유한 상품만 판매하세요.</div>
				</div>	
							<div class="product_imfo_main">
				<div class="product_imfo">상품정보</div>
				<table class="product_table">
					<tr>
						<th class="productinfoName">제품명</th>
						<th class="productinfoPbrand">브랜드</th>
						<th class="productinfoColor">색깔</th>
						<th class="productinfoDate">출시일</th>
					</tr>
					<tr>
						<td class="productname"></td>
						<td class="productpbrand"></td>
						<td class="productcolor"></td>
						<td class="productdate"></td>
					</tr>
				</table>
			</div>
		
				<!-- Modal 시작-->
				<!--판매하기 시작--------------------->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">shoesell</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
						  <div class="modal_main">
							<div class="maintitle"></div>
							<section class="sellborder">
								<div class="mainproduct">
									<img src="" class="priceimg">
									<div class="product_title">
										
										<div class="product_imfo_main modal_info_main">
											<div class="product_imfo">판매하기 상품정보</div>
												<table class="product_table" id="sell_product_table">
													<tr>
														<th class="productinfoName">제품번호</th>
														<th class="productinfoPbrand">제품명</th>
														<th class="productinfoColor">색깔</th>
														<th class="productinfoColor">선택한 신발사이즈</th>
													</tr>
													<tr>
														<td class="product_number"></td>
														<td class="product_engliname"></td>
														<td class="product_koreaname"></td>
														<td class="productSellInfoSize">판매할 신발사이즈</td>
													</tr>
												</table>
											</div>
									</div>
								</div>	
								<div id="size" style="display:none;"  >225</div>
								<div class="subproduct">
									<div id="225" class="product_size"	onclick="sellAddButton(225)"><div>225</div></div>
									<div id="230" class="product_size"	onclick="sellAddButton(230)"><div>230</div></div>
									<div id="235" class="product_size"	onclick="sellAddButton(235)"><div>235</div></div>
									<div id="240" class="product_size"	onclick="sellAddButton(240)"><div>240</div></div>
									<div id="245" class="product_size"	onclick="sellAddButton(245)"><div>245</div></div>
									<div id="250" class="product_size"	onclick="sellAddButton(250)"><div>250</div></div>
									<div id="255" class="product_size"	onclick="sellAddButton(255)"><div>255</div></div>
									<div id="260" class="product_size"	onclick="sellAddButton(260)"><div>260</div></div>
									<div id="265" class="product_size"	onclick="sellAddButton(265)"><div>265</div></div>
									<div id="270" class="product_size"	onclick="sellAddButton(270)"><div>270</div></div>
									<div id="275" class="product_size"	onclick="sellAddButton(275)"><div>275</div></div>
									<div id="280" class="product_size"	onclick="sellAddButton(280)"><div>280</div></div>
									<div id="285" class="product_size"	onclick="sellAddButton(285)"><div>285</div></div>
									<div id="290" class="product_size"	onclick="sellAddButton(290)"><div>290</div></div>
									<div id="295" class="product_size"	onclick="sellAddButton(295)"><div>295</div></div>
									<div id="300" class="product_size"	onclick="sellAddButton(300)"><div>300</div></div>
									<div id="305" class="product_size"	onclick="sellAddButton(305)"><div>305</div></div>
									<div id="310" class="product_size"	onclick="sellAddButton(310)"><div>310</div></div>
									<div id="315" class="product_size"	onclick="sellAddButton(315)"><div>315</div></div>
									<div id="320" class="product_size"	onclick="sellAddButton(320)"><div>320</div></div>
									<div id="325" class="product_size"	onclick="sellAddButton(325)"><div>325</div></div>
								</div>
									
									<div class="product_imfo">구매요청한 유저 리스트</div>
									<table class="pricelist">
										<tr>
											<td>신발사이즈</td>
											<td>가격</td>
											<td>유저아이디</td>
										</tr>
									</table>
									<button onclick="sellmain()" class="modal_sell">판매입찰하기</button>
							</section>
						   </div>
						<div class="sellmainprice"></div>
				      </div>
				      <div class="modal-footer"></div>
				    </div>
				  </div>
				</div>
				<!--판매하기 끝--------------------->
				<!--구매하기 시작--------------------->
				
				<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="exampleModalLabel">shoebuy</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				       <div class="modal_main">
							<div class="maintitle"></div>
							<section class="sellborder">
								<div class="mainproduct">
									<img src="" class="priceimg1">
									<div class="product_title">
										<div class="product_imfo_main modal_info_main">
											<div class="product_imfo">구매하기 상품정보</div>
												<table class="product_table" id="buy_product_table">
													<tr>
														<th class="productinfoName">제품번호</th>
														<th class="productinfoPbrand">제품명</th>
														<th class="productinfoColor">색깔</th>
														<th class="productinfoColor">선택한 신발사이즈</th>
													</tr>
													<tr>
														<td class="product_number1"></td>
														<td class="product_engliname1"></td>
														<td class="product_koreaname1"></td>
														<td class="productBuyInfoSize">구매할 신발사이즈</td>
													</tr>
												</table>
											</div>
									</div>
								</div>
								<div id="size" style="display:none;"  >225</div>
								<div class="subproduct">
									<div id="225" class="product_size"	onclick="buyAddButton(225)"><div>225</div></div>
									<div id="230" class="product_size"	onclick="buyAddButton(230)"><div>230</div></div>
									<div id="235" class="product_size"	onclick="buyAddButton(235)"><div>235</div></div>
									<div id="240" class="product_size"	onclick="buyAddButton(240)"><div>240</div></div>
									<div id="245" class="product_size"	onclick="buyAddButton(245)"><div>245</div></div>
									<div id="250" class="product_size"	onclick="buyAddButton(250)"><div>250</div></div>
									<div id="255" class="product_size"	onclick="buyAddButton(255)"><div>255</div></div>
									<div id="260" class="product_size"	onclick="buyAddButton(260)"><div>260</div></div>
									<div id="265" class="product_size"	onclick="buyAddButton(265)"><div>265</div></div>
									<div id="270" class="product_size"	onclick="buyAddButton(270)"><div>270</div></div>
									<div id="275" class="product_size"	onclick="buyAddButton(275)"><div>275</div></div>
									<div id="280" class="product_size"	onclick="buyAddButton(280)"><div>280</div></div>
									<div id="285" class="product_size"	onclick="buyAddButton(285)"><div>285</div></div>
									<div id="290" class="product_size"	onclick="buyAddButton(290)"><div>290</div></div>
									<div id="295" class="product_size"	onclick="buyAddButton(295)"><div>295</div></div>
									<div id="300" class="product_size"	onclick="buyAddButton(300)"><div>300</div></div>
									<div id="305" class="product_size"	onclick="buyAddButton(305)"><div>305</div></div>
									<div id="310" class="product_size"	onclick="buyAddButton(310)"><div>310</div></div>
									<div id="315" class="product_size"	onclick="buyAddButton(315)"><div>315</div></div>
									<div id="320" class="product_size"	onclick="buyAddButton(320)"><div>320</div></div>
									<div id="325" class="product_size"	onclick="buyAddButton(325)"><div>325</div></div>
								</div>
									<div class="product_imfo">판매요청한 유저 리스트</div>
									<table class="pricelist1">
										<tr>
											<td>신발사이즈</td>
											<td>가격</td>
											<td>유저아이디</td>
										</tr>
									</table>
									<button onclick="buymain()" class="modal_buy">구매입찰하기</button>
							</section>
						</div>
				      </div>
				      <div class="buymainprice"></div>
				      <div class="modal-footer" id="modal-footer"></div>
				      
				    </div>
				  </div>
				</div>
		   	</div><!--  여기가 끝 -->
				<!--구매하기 끝--------------------->
		</section>
		<section class="content_coponent">
			<!--  그래프 css 설정은 여기서 하는겁니다. 시작 -->
			<canvas id="myChart" style="width:100%;max-width:1000px;"></canvas>
			<!--  그래프 css 설정은 여기서 하는겁니다. 끝 -->
			<table class="successlist">	</table>
			<!--  구매하기, 판매하기 버튼 시작 -->
			<button type="button" class="btn btn-primary btn-lg" id="btn_sell" data-bs-toggle="modal" data-bs-target="#exampleModal1" >
				 구매하기
			</button>
			<button type="button" class="btn btn-primary btn-lg" id="btn_buy" data-bs-toggle="modal" data-bs-target="#exampleModal" >
				판매하기
			</button>
			<!--  구매하기, 판매하기 버튼 끝 -->
			<div class="product_imfo_sub">
				<div class="product_deliver">배송정보</div>
				<div class="product_whiteSpace">
					<img src="/shoesproject/main/img/deliver.png" class="deliver_img">
					<div class="deliver_info">
						<div class="product_deliver_nomal">일반배송 3,000원</div>
						<div class="product_deliver_nomal_detail">검수 후 배송 ・ 5-7일 내 도착 예정</div>					
					</div>
				</div>
				<div class="product_whiteSpace">
					<img src="/shoesproject/main/img/factory.png" class="deliver_img">
					<div class="deliver_info">
						<div class="product_deliver_nomal">창고보관 첫 30일 무료</div>
						<div class="product_deliver_nomal_detail">배송 없이 창고에 보관 ・ 빠르게 판매 가능</div>					
					</div>
				</div>
			</div>
			<div class="product_deliver">구매 전 꼭 확인해주세요!</div>
				<div class="product_imfo_sub">
					<div class="product_whiteSpace">
						<img src="/shoesproject/main/img/정품보증.svg" class="deliver_img">
						<div class="deliver_info">
							<div class="product_deliver_nomal">100% 정품 보증</div>
							<div class="product_deliver_nomal_detail">Shoes에서 검수한 상품이 정품이 아닐 경우, 구매가의 1.5배를 보상합니다.</div>					
						</div>
				</div>
				<div class="product_whiteSpace">
					<img src="/shoesproject/main/img/엄격한 다중 검수.svg" class="deliver_img">
					<div class="deliver_info">
						<div class="product_deliver_nomal">엄격한 다중 검수</div>
						<div class="product_deliver_nomal_detail">모든 상품은 검수센터에 도착한 후, 상품별 전문가 그룹의 체계적인 시스템을 거쳐 검수를 진행합니다.</div>					
					</div>
				</div>
				<div class="product_whiteSpace">
					<img src="/shoesproject/main/img/정품인증.svg" class="deliver_img">
					<div class="deliver_info">
						<div class="product_deliver_nomal">정품 인증 패키지</div>
						<div class="product_deliver_nomal_detail">검수에 합격한 경우에 한하여 Shoes의 정품 인증 패키지가 포함된 상품이 배송됩니다.</div>					
					</div>
				</div>
				<div class="product_whiteSpace_info">
					Shoes는 통신판매 중개자로서 통신판매의 당사자가 아닙니다. 
					본 상품은 개별판매자가 등록한 상품으로 상품, 상품정보, 거래에 관한 의무와 책임은 각 판매자에게 있습니다. 
					단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 Shoes에 있습니다.
				</div>
			</div>
		</section>
	</div>
	<!-- 셀럽 이미지 슬라이드 시작 -->
	<section class="product_img_slade">
	<div class="product_img_content">셀렙 이미지</div>
		<div class="selloveimg">
			
		</div>
	</section>
	<!--셀럽 이미지 슬라이드 끝 -->
	<!-- 푸터 시작 -->
	<footer>
        <div id="footerURL">
           <a class="gitLink" href="https://github.com/ANTAESEOP/KIM-AN_project">GitHub주소</a> |
           <a class="gitLink" href="https://www.figma.com/file/8Kxyjx0AdCmfHTwTl1ShGz/Untitled?node-id=4%3A2">Figma주소</a><br>           
           <a class="gitLink" href="https://github.com/kimkyoungju">김경주</a> | 
           <a class="gitLink" href="https://github.com/ANTAESEOP">안태섭</a> | 
           <a class="gitLink" href="https://github.com/Hinsang">인상</a> |
           <a class="gitLink" href="https://github.com/kanghyungyu3614">강현규</a> 
         </div>			
	</footer>
	<!-- 푸터 끝  -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
	<!-- 참고 사이트 ==> https://www.chartjs.org/docs/latest/charts/line.html  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="../js/detail.js"></script>
	<script type="text/javascript" src="../boardjs/selloveload.js"></script>

</body>
</html>
