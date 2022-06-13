<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="shopping/shopp.js"></script>
<title>쇼핑몰 회원관리</title>
<style type="text/css">
	*{margin: 0; padding: 0;}
	ul,li{list-style: none;}
	a{ text-decoration: none;}
	
	header{ background-color: blue; margin: 0 auto; width: 1100px; height: 100px; color: white; font-size: 20px; }
	header h1{ text-align: center; padding: 20px;}
	nav{ background-color: #87ceeb; margin: 0 auto; width: 1100px; height: 60px; color: white; font-size: 20px; }
	nav ul li{ float: left; margin: 15px; padding: 0 20px 0 0; }
	section{ background-color: #e6e6fa; margin: 0 auto; width: 1100px; height: 600px; }
	section h3{ text-align: center; padding: 30px;}
	section table{ text-align: center; margin: 0 auto;}
	.t1{ padding: 0 10px 0 10px;}
	.t2{ padding: 0 30px 0 30px;}
	.t3{ padding: 0 50px 0 50px;}
	footer{ background-color: blue; margin: 0 auto; width: 1100px; height: 60px; color: white; }
	footer p{ text-align: center; padding: 20px; }
</style>
</head>
<body>
<form action="shopmember.do" method="post" name="frm">
	<header><h1>쇼핑몰 회원관리 ver 1.0</h1></header>
	<nav>
		<ul>
			<li><a href="shop.do">회원등록</a></li>
			<li><a href="shopmember.do">회원목록 조회/수정</a></li>
			<li><a href="shopsale.do">회원매출조회</a></li>
			<li><a href="index.do">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h3>회원매출조회/수정</h3>
		<table border="1">
			<tr>
				<th class="t1">회원번호</th>
				<th class="t1">회원성명</th>
				<th class="t2">전화번호</th>
				<th class="t3">주소</th>
				<th class="t2">가입일자</th>
				<th class="t2">고객등급</th>
				<th class="t2">거주지역</th>
			</tr>
			<tr>
				<td class="t1"><a href="shopupdate.do">100001</a></td>
				<td class="t1">김행복</td>
				<td class="t2">010-1111-2222</td>
				<td class="t3">서울 동대문구 휘경동</td>
				<td class="t2">2015-12-02</td>
				<td class="t2">VIP</td>
				<td class="t2">01</td>
			</tr>
			<tr>
				<td class="t1"><a href="shopupdate.do">100002</a></td>
				<td class="t1">이축복</td>
				<td class="t2">010-1111-3333</td>
				<td class="t3">서울 동대문구 휘경동</td>
				<td class="t2">2015-12-06</td>
				<td class="t2">일반</td>
				<td class="t2">01</td>
			</tr>
			<tr>
				<td class="t1"><a href="shopupdate.do">100003</a></td>
				<td class="t1">장믿음</td>
				<td class="t2">010-1111-4444</td>
				<td class="t3">울릉군 울릉읍 독도1리</td>
				<td class="t2">2015-10-01</td>
				<td class="t2">일반</td>
				<td class="t2">30</td>
			</tr>
			<tr>
				<td class="t1"><a href="shopupdate.do">100004</a></td>
				<td class="t1">최사랑</td>
				<td class="t2">010-1111-5555</td>
				<td class="t3">울릉군 울릉읍 독도2리</td>
				<td class="t2">2015-11-13</td>
				<td class="t2">VIP</td>
				<td class="t2">30</td>
			</tr>
			<tr>
				<td class="t1"><a href="shopupdate.do">100005</a></td>
				<td class="t1">진평화</td>
				<td class="t2">010-1111-6666</td>
				<td class="t3">제주도 제주시 외나무골</td>
				<td class="t2">2015-12-25</td>
				<td class="t2">일반</td>
				<td class="t2">60</td>
			</tr>
			<tr>
				<td class="t1"><a href="shopupdate.do">100006</a></td>
				<td class="t1">차공단</td>
				<td class="t2">010-1111-7777</td>
				<td class="t3">제주도 제주시 감나무골</td>
				<td class="t2">2015-12-11</td>
				<td class="t2">직원</td>
				<td class="t2">60</td>
			</tr>

		</table>
		
	</section>
	<footer>
		<p>HRDKOREA Copyrightⓒ2016 All rights reseved. Human Resources Development Service of Korea.</p>
	</footer>
	
	</form>
</body>
</html>