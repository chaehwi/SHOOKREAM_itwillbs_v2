<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
<style type="text/css">
#floatMenu {
	position: fixed;
	width: 100px;
	height: 200px;
	right: 0px;
	top: 10px;
	background-color: #606060;
	color: #fff;
	margin:100px 0 150px;
	
}
</style>
</head>    

<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar" >

  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide" onclick="location.href='./'" style="cursor: pointer; font-family: 'Bebas Neue', cursive; font-size: 45px;"><b>SHOOKREAM</b></h3>
  </div>
  
  <!-- 검색창 -->
  	
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0" action="keyword.ma">

      <div class="input-group">
          <input class="form-control" type="text" name="keyword" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
          <button class="btn btn-primary" id="btnNavbarSearch" type="submit" ><i class="fa fa-search"></i></button>
      </div>
  </form>
  
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
  
    <a href="Best.ma" class="w3-bar-item w3-button">Best</a>
    <a href="New.ma" class="w3-bar-item w3-button">New</a>
    <a href="Sale.ma" class="w3-bar-item w3-button">Sale</a>
    <hr>
    <a onclick="myAccFunc()"  href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      브랜드 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="BrandCG.ma?cg=나이키" class="w3-bar-item w3-button">나이키 &nbsp;<i class="fa fa-caret-right w3-margin-right"></i></a>
      <a href="BrandCG.ma?cg=뉴발란스" class="w3-bar-item w3-button">뉴발란스 &nbsp;<i class="fa fa-caret-right w3-margin-right"></i></a>
      <a href="BrandCG.ma?cg=컨버스" class="w3-bar-item w3-button">컨버스 &nbsp;<i class="fa fa-caret-right w3-margin-right"></i></a>
      <a href="BrandCG.ma?cg=아디다스" class="w3-bar-item w3-button">아디다스 &nbsp;<i class="fa fa-caret-right w3-margin-right"></i></a>
      <a href="BrandCG.ma?cg=반스" class="w3-bar-item w3-button">반스 &nbsp;<i class="fa fa-caret-right w3-margin-right"></i></a>
    </div>
    <hr>
    <a onclick="myAccFunc1()" class="w3-button w3-block w3-white w3-left-align" id="customerBtn">
      고객센터 <i class="fa fa-caret-down"></i>
    </a>
    <div id=cusAcc class="w3-bar-block w3-hide w3-padding-large w3-medium">
	   	<a href="BoardList.bo" class="w3-bar-item w3-button">공지사항</a>
	   	<a href="FAQList.bo" class="w3-bar-item w3-button">자주묻는 질문</a>
   	</div>
  </div>
  
<%--     <input type="button" class ="reportbtn" value="신고하기" onclick="location.href='./ReportFormAction.me?member_idx=${member_idx}&member_id=${sessionScope.sId }'"> --%>
<!--   <div id = "gotopbtn"  style="cursor:pointer; height:50px ; " class="back-to-top d-flex align-items-center justify-content-center active" onclick="window.scrollTo(0,0);">TOP</div>  -->

<!--  <div style="height:300px; margin-right:100px;" id="floatMenu" > -->
 

<!--  <h5>최근 본 상품</h5> -->
<!--   </div> -->
<!-- </nav> -->
<!-- 세션 최근 본 상품 뿌리기 -->
 <div style="height:300px; margin-right:100px;" id="floatMenu" >
 <h5>최근 본 상품</h5>
<%-- ${fn:split(image.image_main_file,'/')[0]} --%>
${fn:split(imageList[0].image_main_file,'/')[0]}
${fn:split(imageList[1].image_main_file,'/')[0]}
${fn:split(imageList[2].image_main_file,'/')[0]}
<img src="${path}/resources/upload/${product.image_main_file }" class="img-thumbnail" onError="this.onerror=null; this.src='resources/images/noImg.JPG';" alt="..." style="width:100px; height:100px;">

</div>


 </nav>