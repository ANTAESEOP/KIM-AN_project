<%@page import="model.dao.memberdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoesProject</title>
<link href="../css/mainhome.css" rel="stylesheet">
</head>
<body>
	<%@ include file="mainbaner.jsp" %>
	<!-- 로그인을 안했을때 시작 -->
	 <%if(lid==null){%> 
	<div id= main>
		<section class="brand">
			<div class="brand_content">이달의 인기 브랜드</div> 
				<div class="month_popular_brand">
				<div>1.Nike&nbsp;&nbsp;&nbsp;</div>
				<div>2.밀레&nbsp;&nbsp;&nbsp;</div>
				<div>3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</div>
				<div>4.Adidas&nbsp;&nbsp;&nbsp;</div>
				<div>5등:NEPA&nbsp;&nbsp;&nbsp;</div>
				<div>6등:NEW BALANCE&nbsp;&nbsp;&nbsp;</div>
				<div>7등:클락스&nbsp;&nbsp;&nbsp;</div>
		<!-- 여기서부터 햄버거 드롭다운 바 시작 -->
		<a href="#" class="menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>
		<div class="menu_open">
			<ul>
				<li class="dept1">
					<a href="#">1~10순위</a>
					<ul>
						<li class="dept2">
							<a href="#">1.Nike&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">2.밀레&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">4.Adidas&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">5.NEPA&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">6.NEW BALANCE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">7.클락스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">8.킹가루스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">9.돔바&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">10.가데&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">11~20순위</a>
					<ul>
						<li class="dept2">
							<a href="#">11.매드풋&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">12.루릭&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">13.스코노&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">14.스프리스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">15.어그&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">16.반스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">17.더헌드레드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">18.유비크&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">19.이메리카&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">20.이에스&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">21~30순위</a>
					<ul>
						<li class="dept2">
							<a href="#">21.에트니스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">22.SPX&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">23.포니&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">24.프레드메리&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">25.라코스테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">26.프리데릭데테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">27.비토이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">28.듀드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">29.레디아이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">30.BSQT&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">31~40순위</a>
					<ul>
												<li class="dept2">
							<a href="#">31.사운트&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">32.트루릴리젼&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">33.베어파우&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">34.버켄스탁&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">35.사쿤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">36.디젤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">37.스걸리즘&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">38.무다&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">39.쯔보&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">40.도나카란뉴욕&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				
			</ul>
		</div>
		<!-- 여기서부터 햄버거 드롭다운 바 끝 -->
		</div>
		</section>
		
		<!-- 로그인 컴포넌트 시작 -->
		<section class="login_modal">
			<div class="login_content">로그인</div>
			
			<input id="lid" class="id_input inputsize" type="text" placeholder="아이디를 입력해주세요."> 
			
			<input id="lpw" class="passoword_input inputsize" type="password" placeholder="비밀번호를 입력해주세요."> 
			
			<div class="alertp"></div>
			
			<button onclick="login()" class="login_button" type="button">로그인하기</button>
			<div class="signup_find">
				<div><a href="../view/signup.jsp">회원가입</a> |</div>
				<div>&nbsp;<a href="../view/find.jsp">아이디찾기</a> |</div>
				<div>&nbsp;<a href="../view/findpw.jsp">비밀번호찾기</a></div>
			</div> 
			</section>
			<!--  로그인 컴포넌트 끝 -->
			
			<!-- 오늘의 브랜드 베스트 시작 -->
		<section class="category">
			<div class="category_content">오늘의 브랜드 베스트 </div>
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide1" id="slide01" checked>
				<input type="radio" name="slide1" id="slide02">
				<input type="radio" name="slide1" id="slide03">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide03" class="left"></label>
							<label for="slide02" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide01" class="left"></label>
							<label for="slide03" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide02" class="left"></label>
							<label for="slide01" class="right"></label>
						</div>
					</div>
				</div>
				<div class="admin_category_sldie_content">
					<div>인기 럭셔리</div>
					<div>럭키드로우</div>
					<div>정가아래</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide2" id="slide04" checked>
				<input type="radio" name="slide2" id="slide05">
				<input type="radio" name="slide2" id="slide06">
				<div class="slidewrap">
					<ul class="slidelist">
												<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide06" class="left"></label>
							<label for="slide05" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide04" class="left"></label>
							<label for="slide06" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide05" class="left"></label>
							<label for="slide04" class="right"></label>
						</div>
					</div>
					<div class="admin_category_sldie_content">
						<div>브랜드관 오픈</div>
						<div>집꾸미기</div>
						<div>남성 추천</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
		</section>
		<!-- 오늘의 브랜드 베스트 끝-->
			
	<!-- 로그인을 안했을때 끝 -->
	<!-- admin으로 로그인했을때 시작 -->
		<%}else if(lid.equals("admin")){%>
	
		
	<div id= main>  <!-- 메인에서 얘러뜨는거 원래 그런겁니다.  -->
		<section class="member_brand">
			<div class="brand_content">이달의 인기 브랜드</div> 
			<div class="admin_month_popular_brand">
				<div>1.Nike&nbsp;&nbsp;&nbsp;</div>
				<div>2.밀레&nbsp;&nbsp;&nbsp;</div>
				<div>3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</div>
				<div>4.Adidas&nbsp;&nbsp;&nbsp;</div>
				<div>5등:NEPA&nbsp;&nbsp;&nbsp;</div>
				<div>6등:NEW BALANCE&nbsp;&nbsp;&nbsp;</div>
				<div>7등:클락스&nbsp;&nbsp;&nbsp;</div>
		<!-- 여기서부터 햄버거 드롭다운 바 시작 -->
		<a href="#" class="admin_menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>

		<div class="admin_menu_open">
			<ul>
				<li class="dept1">
					<a href="#">1~10순위</a>
					<ul>
						<li class="dept2">
							<a href="#">1.Nike&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">2.밀레&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">4.Adidas&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">5.NEPA&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">6.NEW BALANCE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">7.클락스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">8.킹가루스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">9.돔바&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">10.가데&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">11~20순위</a>
					<ul>
						<li class="dept2">
							<a href="#">11.매드풋&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">12.루릭&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">13.스코노&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">14.스프리스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">15.어그&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">16.반스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">17.더헌드레드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">18.유비크&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">19.이메리카&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">20.이에스&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">21~30순위</a>
					<ul>
						<li class="dept2">
							<a href="#">21.에트니스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">22.SPX&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">23.포니&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">24.프레드메리&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">25.라코스테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">26.프리데릭데테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">27.비토이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">28.듀드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">29.레디아이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">30.BSQT&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">31~40순위</a>
					<ul>
												<li class="dept2">
							<a href="#">31.사운트&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">32.트루릴리젼&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">33.베어파우&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">34.버켄스탁&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">35.사쿤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">36.디젤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">37.스걸리즘&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">38.무다&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">39.쯔보&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">40.도나카란뉴욕&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				
			</ul>
		</div>
		<!-- 여기서부터 햄버거 드롭다운 바 끝 -->
			</div>	
			</section>
		<!-- 오늘의 브랜드 베스트 시작 -->
		<section class="admin_category">
			<div class="admin_category_content">오늘의 브랜드 베스트 </div>
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide1" id="slide01" checked>
				<input type="radio" name="slide1" id="slide02">
				<input type="radio" name="slide1" id="slide03">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide03" class="left"></label>
							<label for="slide02" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide01" class="left"></label>
							<label for="slide03" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide02" class="left"></label>
							<label for="slide01" class="right"></label>
						</div>
					</div>
				</div>
				<div class="admin_category_sldie_content">
					<div>인기 럭셔리</div>
					<div>럭키드로우</div>
					<div>정가아래</div>
					<div>셀럽픽</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide2" id="slide04" checked>
				<input type="radio" name="slide2" id="slide05">
				<input type="radio" name="slide2" id="slide06">
				<div class="slidewrap">
					<ul class="slidelist">
												<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide06" class="left"></label>
							<label for="slide05" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide04" class="left"></label>
							<label for="slide06" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide05" class="left"></label>
							<label for="slide04" class="right"></label>
						</div>
					</div>
					<div class="admin_category_sldie_content">
						<div>브랜드관 오픈</div>
						<div>집꾸미기</div>
						<div>남성 추천</div>
						<div>여성 추천</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			
		</section>
		<!-- 오늘의 브랜드 베스트 끝-->	
			
			
			
		<!-- admin 으로 로그인했을때 끝 -->
		<!-- member가 로그인에 성공했을떄 시작 -->	
		<%}else{%>
	<!-- ----------------------------------------------------------------------------- -->

	
	
	
	
	<!-- ----------------------------------------------------------------------------- -->
	
	
	
	<div id= main>
		<section class="member_brand">
			<div class="brand_content">이달의 인기 브랜드</div> 
			<div class="member_month_popular_brand">
				<div>1.Nike&nbsp;&nbsp;&nbsp;</div>
				<div>2.밀레&nbsp;&nbsp;&nbsp;</div>
				<div>3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</div>
				<div>4.Adidas&nbsp;&nbsp;&nbsp;</div>
				<div>5등:NEPA&nbsp;&nbsp;&nbsp;</div>
				<div>6등:NEW BALANCE&nbsp;&nbsp;&nbsp;</div>
				<div>7등:클락스&nbsp;&nbsp;&nbsp;</div>
		<!-- 여기서부터 햄버거 드롭다운 바 시작 -->
		<a href="#" class="member_menu_bar">
			<span></span>
			<span></span>
			<span></span>
		</a>

		<div class="member_menu_open">
			<ul>
				<li class="dept1">
					<a href="#">1~10순위</a>
					<ul>
						<li class="dept2">
							<a href="#">1.Nike&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">2.밀레&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">3.THE NORTH FACE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">4.Adidas&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">5.NEPA&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">6.NEW BALANCE&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">7.클락스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">8.킹가루스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">9.돔바&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">10.가데&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">11~20순위</a>
					<ul>
						<li class="dept2">
							<a href="#">11.매드풋&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">12.루릭&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">13.스코노&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">14.스프리스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">15.어그&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">16.반스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">17.더헌드레드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">18.유비크&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">19.이메리카&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">20.이에스&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">21~30순위</a>
					<ul>
						<li class="dept2">
							<a href="#">21.에트니스&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">22.SPX&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">23.포니&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">24.프레드메리&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">25.라코스테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">26.프리데릭데테&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">27.비토이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">28.듀드&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">29.레디아이&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">30.BSQT&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				<li class="dept1">
					<a href="#">31~40순위</a>
					<ul>
												<li class="dept2">
							<a href="#">31.사운트&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">32.트루릴리젼&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">33.베어파우&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">34.버켄스탁&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">35.사쿤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">36.디젤&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">37.스걸리즘&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">38.무다&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">39.쯔보&nbsp;&nbsp;&nbsp;</a>
						</li>
						<li class="dept2">
							<a href="#">40.도나카란뉴욕&nbsp;&nbsp;&nbsp;</a>
						</li>
					</ul>
				</li>
				
			</ul>
		</div>
		<!-- 여기서부터 햄버거 드롭다운 바 끝 -->
		</div>				
			
		</section>
		
		<!-- 오늘의 브랜드 베스트 시작 -->
		<section class="member_category">
			<div class="member_category_content">오늘의 브랜드 베스트 </div>
			
		<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide1" id="slide01" checked>
				<input type="radio" name="slide1" id="slide02">
				<input type="radio" name="slide1" id="slide03">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/1.jpg">
								<img src="./img/brand/2.jpg">
								<img src="./img/brand/3.jpg">
								<img src="./img/brand/4.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide03" class="left"></label>
							<label for="slide02" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide01" class="left"></label>
							<label for="slide03" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide02" class="left"></label>
							<label for="slide01" class="right"></label>
						</div>
					</div>
				</div>
				<div class="admin_category_sldie_content">
					<div>인기 럭셔리</div>
					<div>럭키드로우</div>
					<div>정가아래</div>
					<div>셀럽픽</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			
			
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide2" id="slide04" checked>
				<input type="radio" name="slide2" id="slide05">
				<input type="radio" name="slide2" id="slide06">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
						<li>
							<a>
								<img src="./img/brand/5.jpg">
								<img src="./img/brand/6.jpg">
								<img src="./img/brand/7.jpg">
								<img src="./img/brand/8.jpg">
							</a>
						</li>
					</ul>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide06" class="left"></label>
							<label for="slide05" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide04" class="left"></label>
							<label for="slide06" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide05" class="left"></label>
							<label for="slide04" class="right"></label>
						</div>
					</div>
					<div class="admin_category_sldie_content">
						<div>브랜드관 오픈</div>
						<div>집꾸미기</div>
						<div>남성 추천</div>
						<div>여성 추천</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
			

			
			
		</section>
		<!-- 오늘의 브랜드 베스트 끝-->
		
		<%}%>
		<!-- member가 로그인에 성공했을떄 끝 -->	
	<!-- 로그인 컴포넌트 끝 -->
		
				<!-- 메인 이미지 슬라이드 시작 -->
		<section class="main_img_slade">
			<!-- 슬라이드 시작 -->
			<div class="section">
				<input type="radio" name="slide3" id="slide10"checked>
				<input type="radio" name="slide3" id="slide11">
				<input type="radio" name="slide3" id="slide12">
				<div class="slidewrap">
					<ul class="slidelist">
						<li>
							<a>
								<img class="slidelist_img" src="./img/main2.webp">
							</a>
						</li>
						<li>
							<a>
								<img class="slidelist_img" src="./img/main1.jpg">
							</a>
						</li>
						<li>
							<a>
								<img class="slidelist_img" src="./img/mainig1.jpg">
							</a>
						</li>
					</ul>
					
					<div class="list" style="display: flex; flex-wrap: wrap;">
						
					</div>
			
					<div class="slide-control">
						<div class="control01">
							<label for="slide12" class="left"></label>
							<label for="slide11" class="right"></label>
						</div>
						<div class="control02">
							<label for="slide10" class="left"></label>
							<label for="slide12" class="right"></label>
						</div>
						<div class="control03">
							<label for="slide11" class="left"></label>
							<label for="slide10" class="right"></label>
						</div>
					</div>
				</div>
			</div>	
			<!-- 슬라이드 끝 -->
		
		</section>
		<!-- 메인 이미지 슬라이드 끝 -->
		<section class="main_img_slade" id="popular_product">
		<div class="product_img_content">BEST CATEGORY</div>
		<!-- 인기제품 안에 내용들 시작 -->
		<div class="main_popular_product">
			
		
		</div>
		<!-- 인기제품 안에 내용들 끝 -->
		</section>
		
			<!-- 슬라이드 끝 -->
		
		<!-- 제품 이미지 슬라이드 끝 -->
		
		<!-- 셀럽 이미지 슬라이드 시작 -->
		<div class="product_img_content">Style Picks</div>
		
		<section class="product_img_slade">
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
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript" src="../js/main.js"></script>
		<script type="text/javascript" src="../js/login.js"></script>
		<script type="text/javascript" src="../js/request.js"></script>
		<script type="text/javascript" src="../js/dropdown.js"></script>
		<script type="text/javascript" src="../boardjs/selloveload.js"></script>
		
		
	</div>
</div>

</div>


</body>
</html>
