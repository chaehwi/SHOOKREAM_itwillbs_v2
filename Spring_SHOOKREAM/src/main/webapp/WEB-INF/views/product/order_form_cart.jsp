<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>주문 / 결제</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- font 굵기 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
<!-- icon CDN -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!-- 네이버아이디로그인 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- 구글 아이디 로그인 -->
<meta name="google-signin-client_id" content="1047574308186-h6ehte2k4901kjn1u3g5vnonbf2g56on.apps.googleusercontent.com">
<!-- 쿠폰 확인 -->
<script type="text/javascript">
// 쿠폰 보러가기 클릭 함수
function CouponCheck() {
	
	let url = "CouponListForm.po";
	let name = "Coupon List";
	let attr = "width=900, height=600, top=200, left=510"

	window.open(url, name, attr);
}
function total_discount_cal() {
	
}

</script>
<style type="text/css">
#sform {
          display: inline-block;
          text-align: center;
        }
.td_cart{
	font-size: 18px;
	text-align: center;
	vertical-align : middle;
	height: 50px;
}

.th_cart{
	font-size: 20px;
	text-align: center;
	background-color: #DCEBFF;
	height: 60px;
	vertical-align: middle;
}t-align: center;
}
</style>
<style type="text/css">
#table {	
	margin-top: 150px
   	text-align: center;
}
</style>
<style>
    .paging {
        text-align: center;
    }
    .paging a {
        /*
        display: inline-block 인라인 요소의 특징과 블록 요소의 특징을 모두 갖는다
        크기를 가질 수 있으며 텍스트 정렬도 적용받는다
        */
        display: inline-block;
        
        font-weight: bold;
        text-decoration: none;
        padding: 5px 8px;
        border: 1px solid #ccc;
       	color: #000; 
/*         background-color: #F5F5DC; */
    }
    /* 현재 페이징에 select 클래스를 적용한다*/
    .paging a.select {
/*         color: #fff; */
/*         background-color: #FFA7A7; */
    }
    #delivery_table td {
		vertical-align : middle;
	}	
	}
	table th {
		vertical-align : middle;
		width: 200px;
	}	
	
/* 	td { */
/* 	vertical-align : baseline; */
/* 	} */
    </style>

<style>
/* .w3-sidebar a {font-family: "Roboto", sans-serif} */
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Noto Sans KR", sans-serif;} 
</style>

<style>
    
    .footer {
    	padding: 50px;
    }
    
    .top_circle {
    	 
	    border-radius: 50%;
	    
	    width: 100px;
	    height: 100px;
	    margin: 0px 7px;
/* 	    padding-bottom: 24%; */
	    
	    position: relative;
    }
    
    .top_circle_h {
    	 position : absolute;
    	 top: 20%;
	    left : 19%;
	    bottom :30%;
	    
	    font-size: 18px;
	    text-align: center;
	    font-weight: bold;
    }
    
    #order_circle {
    	background-color: #d2d2d2;
    }
    #cart_circle {
    	background-color: #d2d2d2;
    	
    }
    #com_circle {
    	background-color: #DCEBFF;
    }
    
  .cb {
    font-size: 23px;
    }
    
    #no_cart {
    	padding: 50px 0px;
    }
    #form_area{
	  height: auto;
	  min-height: 100%;
	  padding-bottom: 300px;
	}
 </style>
</head>
<body class="w3-content" style="max-width:95%">
<!-- Sidebar/menu -->
<jsp:include page="../inc/side.jsp"/>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide">SHOOKREAM</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px;margin-top: 20px;margin-right: 17px;">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  	
  <!-- Top header -->
 <div style="float: right;">
 <jsp:include page="../inc/top.jsp"/>
</div>

  <header class="w3-container w3-xlarge" style="padding: 80px 50px;  z-index: -1">
    <p class="w3-left" style="font-size: 37px">
    <i class="fa-solid fa-bag-shopping" ></i>
<!--     <i class="fa-solid fa-cart-shopping"></i> -->
    &nbsp;주문 / 결제</p>
<!--     <div class="w3-right out-div"> -->
	    <div class="top_circle w3-right" id="order_circle"><h3 class="top_circle_h"><b class="cb">03</b><br>주문완료</h3></div>
	    <div class="top_circle w3-right" id="com_circle"><h3 class="top_circle_h"><b class="cb">02</b><br>주문/결제</h3></div>
	    <div class="top_circle w3-right" id="cart_circle"><h3 class="top_circle_h"><b class="cb">01</b><br>장바구니</h3></div>
<!--     <i id="cart_circle" class="fa-solid fa-circle"></i> -->
<!--     </div> -->
</header>
   <hr size="25px">
<!-- 상품 정보 -->
<form action="" style="padding: padding: 40px; margin-top:20px; font-weight: bold; ">
  <table class="table" style="height: 50px;">
  <thead>
	    <tr>
	      <th scope="col" colspan="8" style="font-size: x-large;">주문상품</th>
	    </tr>
  </thead>
  <tbody>
    <tr class="table-primary">
      <th scope="col" class ="th_cart" colspan="2">상품명</th>
<!--       <th scope="col">상품명</th> -->	
      <th scope="col"  class ="th_cart">상품금액</th>
      <th scope="col"  class ="th_cart">할인금액</th>
      <th scope="col"  class ="th_cart">주문금액</th>
      <th scope="col"  class ="th_cart">수량</th>
      <th scope="col"  class ="th_cart">배송정보</th>
    </tr>
  	<!-- 카트 리스트가 없을 때 처리 -->
    <c:if test="${cart_order_total_price le 0 }">
			<tr>
				<td colspan="8" style="text-align: center"><h3 >구매 할 상품이 없습니다.</h3></td>
			</tr>
		</c:if>
	<!-- 카트 리스트가 없을 때 처리 -->
	<c:if test="${cart_order_total_price gt 0}">
    <c:forEach var="cart" items="${cartOrderList }" varStatus="status">
    <input type="hidden" value="${cart.product_idx }" name="cart_paroduct_idx" class="cart_paroduct_idx">
    <input type="hidden" value="${cart.member_idx }" name="cart_member_idx">
    <input type="hidden" value="${cart.cart_order_price }" name="cart_order_price">
    <input type="hidden" value="${cart.cart_count }" name="cart_count">
    <input type="hidden" value="${cart.cart_size }" name="cart_size">
    <input type="hidden" value="${cart.cart_color }" name="cart_color">
    <input type="hidden" value="${cart.cart_product_name }" name="cart_product_name">
    <input type="hidden" value="${cart.cart_idx }" name="cart_idx">
    <tr>
	 <td><a href="ProductInfoForm.po?product_idx=${cart.product_idx }"><img src="upload/${cart.cart_product_image }"  alt="없음!" class="img-thumbnail" width="150" height="150" ></a></td>
      <td class ="td_cart">${cart.cart_product_name }<br><span style="color: #91949A;">색상 : ${cart.cart_color }</span></td>
	  <td class ="td_cart" id="cart_price"><fmt:formatNumber value="${cart.cart_price }" pattern="#,###원"></fmt:formatNumber></td>
      <td class ="td_cart" id="cart_discount_price"><fmt:formatNumber value="${cart.cart_price * (cart.cart_discount / 100)}" pattern="#,###원"></fmt:formatNumber></td>
      <td class ="td_cart" id="cart_order_price" ><fmt:formatNumber value="${cart.cart_order_price}" pattern="#,###원"></fmt:formatNumber></td> 
      <td class ="td_cart">
     	${cart.cart_count }개
      </td>
      <td class ="td_cart">무료배송</td>
    </tr>
    </c:forEach>
    </c:if>
  </tbody>
</table>
</form>
<!-- 배송 정보 -->
<table class="table" id="delivery_table" style="border-collapse: separate; border-spacing: 0 13px; font-size: 18px">
	  <thead>
	    <tr>
	      <th scope="col" colspan="8" style="font-size: x-large;">배송 정보</th>
	    </tr>
	  </thead>
	  <tbody>
	   <tr>
	    	<th colspan="2">
	    		주문 하시는 분
	    	</th>
	    	<td colspan="6">
	    		주문자이름<br>
	    		xxxxx@xxxx.com<br>
	    		010-1111-1111<br>
	    	</td>
	   </tr>
	   <tr>
		<th colspan="2">배송지 선택</th>
		<td colspan="6" style="margin-left:500px;">
			<input type="radio" value="" name=""> 기본배송지
			<input type="radio" value="새로운 배송지" name=""> 새로운 배송지
		</td>
	   </tr>
	   <tr>
	    <th colspan="2">배송지명</th>
	   	<td colspan="6" style="text-align: left;">집</td>
	   </tr>
	   
	   <tr>
	   <th colspan="2">받으시는 분</th>   
	   <td>박영진<br>
	 	   전화번호 : 000-0000-0000/휴대폰 번호 : 000-0000-0000 <br>
	       주소: 주소들어가기<br>
	   </td>
	   </tr>
	   <tr>
	   	<th colspan="2">배송 메세지</th>
	   	<td>
	   		<select class="form-select" style="width: 300px">
	   			<option>부재시 문 앞에 놓아주세요</option>
	   			<option>경비실에 ㄱㄱ </option>
	   			<option>전화 부탁 드립니다</option>
	   			<option>소화전에 넣어 주세요</option>
	   		</select>
	   	 </td>
	   </tr>
	   <tr>
	   	<th colspan="2">총 배송비</th>
	   	<td colspan="6">0원 </td>
	   </tr>
	  </tbody>
	</table>
	
<!-- 할인 정보 및 총 결제가격 표시	 -->

<!-- 배송 정보 -->
<table class="table" id="delivery_table" style="border-collapse: separate; border-spacing: 0 13px; font-size: 18px">
  	  <input type="hidden" id="coupon_idx" >
	  <thead>
	    <tr>
	      <th scope="col" colspan="6" style="font-size: x-large;">할인 금액</th>
	    </tr>
	  </thead>
	  <tbody>
	   <tr>
		<th colspan="2">즉시 할인금액</th>
		<td><input type="text" class="form-control" readonly="readonly" value="<fmt:formatNumber value='${cart_total_price-cart_order_total_price }'></fmt:formatNumber>" style="width: 100px; display: inline-block; text-align: right; font-size: 18px ">원 할인 
	   	</td>
	   </tr>
	   <tr>
		<th colspan="2">상품 할인쿠폰</th>
		<td><input type="text" class="form-control" id="priceValue" readonly="readonly" value="0" style="width: 100px; display: inline-block; text-align: right; font-size: 18px">원 할인 
	   	<button type="button" class="btn btn-outline-danger" onclick="CouponCheck()">쿠폰함</button>
	   	</td>
	   </tr>
	   </tbody>
 </table>
   
	 
	 <!-- 결제금액 영역 -->
		<div class="container px-4 text-center" id="totalResult" style="margin-top: 30px; font-size: 25px;">
		  <div class="row gx-5" >
		    <div class="col">
				<div class="p-3 border bg-light" style="font-size: 25px; ">
					<span style="margin-right: 12px">상품 금액</span> 
					<span style="font-size: 27px;">
						<fmt:formatNumber pattern="#,###" value="${cart_total_price }"></fmt:formatNumber>
					</span>
					<span style="font-size: 27px; margin-right: 25px;">원</span>
					
					<span class="material-symbols-outlined" style="margin-right: 30px; font-size: 25px">do_not_disturb_on</span>	
									
					<span style="margin-right: 12px">할인 금액</span> 
					<span style="font-size: 27px;" id="discount_area">
						<fmt:formatNumber pattern="#,###" value="${cart_total_price-cart_order_total_price }"></fmt:formatNumber>
					</span>
					<span style="font-size: 27px; margin-right: 25px;">원</span>
					
					<span class="material-symbols-outlined" style="margin-right: 30px; font-size: 25px">equal</span>
					
					<span style="margin-right: 12px">총 결제금액</span> 
					<span style="font-size: 27px; color: blue;" id="order_total_area">
						<fmt:formatNumber pattern="#,###" value="${cart_order_total_price }"></fmt:formatNumber>
					</span>
					<span style="font-size: 27px; margin-right: 25px;">원</span>
					
					<br>
		      	<input type="button" id="order_button" class="btn btn-primary btn-lg" onclick="iamport()" value="결제" style="margin-top: 30px; width: 100px" >
		      	<input type="hidden" id="order_discount_price" value="${cart_total_price-cart_order_total_price }">
		      	<input type="hidden" id="order_total_price" value="${cart_order_total_price }">
		      	
				</div>	    
		    </div>
		  </div>
	    </div>
	    
<!-- </footer> -->
 <footer>
  	<jsp:include page="../inc/footer.jsp"/>
  </footer> 



<!-- Newsletter Modal -->
<div id="newsletter" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
      <h2 class="w3-wide">NEWSLETTER</h2>
      <p>Join our mailing list to receive updates on new arrivals and special offers.</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
      <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
    </div>
  </div>
</div>


<!-- ------------------------------------------------------------------------------------------------------------>
<!-- 자바스크립트 부분 -->

<script>
// Accordion 
function myAccFunc() {
  var x = document.getElementById("demoAcc");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

function myAccFunc1() {
	  var x = document.getElementById("cusAcc");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}
</script>
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "552ea0bb-d4a5-4c70-8ba7-463b7682c434"
  });
</script>

<script type="text/javascript">
//----------------------장바구니 체크박스 선택 여부에 따라 카트 금액 증가, 감소 작업 -------------------------
function removeCheck(cb) {
// 	alert(cb.id);
// 	let cartCheckBox = cb.id.replace("cartCheckBox", ""); // id값의 index값을 가져옴
	let cart_idx = cb.value; // id값의 index값을 가져옴
// 	alert(cart_idx);
	
	//체크박스 상태 판별(true이면 체크된 상태, false이면 체크가 풀린 상태)
	let ischeck = cb.checked;
	
	//check가 true일 때
	if(ischeck == true){
		$.ajax({
			type: "get",
			url: "CartPlusPro.ca",
			data: {
				cart_idx: cart_idx
			},
			dataType: "html",
			success: function() {
				 $("#totalResult").load(window.location.href + " #totalResult");
			}
		});
	//check가 false일 때
	}else if(ischeck == false){
		$.ajax({
			type: "get",
			url: "CartMinusPro.ca",
			data: {
				cart_idx: cart_idx
			},
			dataType: "html",
			success: function() {
				 $("#totalResult").load(window.location.href + " #totalResult");
			}
		});
	}
	
};
	
</script>
<script type="text/javascript">

// 체크된 cart_idx 값을 넘기는 작업
function goOrder() {
		var check = $('input[name=cartCheckBox]:checked');
		let chk_arr = new Array();
		$('input[name=cartCheckBox]:checked').each(function(i) {
			chk_arr.push($(this).val());
		});
// 	
		//체크된 상품 개수만큼 반복
		for(var i =0; i<chk_arr.length; i++){
                 alert("배열값 = "+ chk_arr);
			
		}
		location.href = "CartOrderDetailProAtion.ca?cart_idx=" + chk_arr + "&member_idx=" + ${sessionScope.member_idx};
}



// $(document).ready(function(){
// 	let listArr = new Array();
//     let list = $("input[name='cartCheckBox']:checked");
    
//     for(var i = 0; i < list.length; i++){
//         if(list[i].checked){
//            listArr.push(list[i].value);
//            alert("배열값 = "+ listArr);
//         }
//      }
// }); 
</script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript">
function iamport(){
	//----주문 외 몇건 처리---- 
	
	let list_count = "";
	if("${cartOrderList.size()}" == '1'){
		list_count = "${cartOrderList[0].cart_product_name}";
	//----주문 외 몇건 처리 ---- 
	}else {
		list_count ="${cartOrderList[0].cart_product_name} 외"+" ${cartOrderList.size()-1}건";
	}
	//----member_idx 배열에 담기----	
	let member_idx_arr = new Array();
	$('input[name="cart_member_idx"]').each(function(i) {
		member_idx_arr.push($(this).val());
	});
	//----member_idx끝----
	
	//----product_idx 배열에 담기----	
	let product_idx_arr = new Array();
	$('input[name="cart_paroduct_idx"]').each(function(i) {
		product_idx_arr.push($(this).val());
	});
	
	//----order_price 배열에 담기----------
	let cart_order_price_arr = new Array();
	$('input[name="cart_order_price"]').each(function(i) {
		cart_order_price_arr.push($(this).val());
	});
	//----order_price 끝----------
	
	//----cart_count 배열에 담기----------
	let cart_count_arr = new Array();
	$('input[name="cart_count"]').each(function(i) {
		cart_count_arr.push($(this).val());
	});
	//----cart_count 끝----------
	
	//----cart_count 배열에 담기----------
	let cart_size_arr = new Array();
	$('input[name="cart_size"]').each(function(i) {
		cart_size_arr.push($(this).val());
	});
	//----cart_count 끝----------
	
	//----cart_color 배열에 담기----------
	let cart_color_arr = new Array();
	$('input[name="cart_color"]').each(function(i) {
		cart_color_arr.push($(this).val());
	});
	//----cart_count 끝----------
	
	//----cart_color 배열에 담기----------
	let cart_product_name_arr = new Array();
	$('input[name="cart_product_name"]').each(function(i) {
		cart_product_name_arr.push($(this).val());
	});
	//----cart_color 끝----------
	
	//----cart_idx 배열에 담기----------
	let cart_idx_arr = new Array();
	$('input[name="cart_idx"]').each(function(i) {
		cart_idx_arr.push($(this).val());
	});
	//----cart_idx 끝----------
	var price = document.getElementById("order_total_price").value;
	alert(price);
	//getter
    IMP.init('imp77718215');
//     var money = $('input[name="cp_item"]:checked').val();
//     console.log(money);
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method : 'card',
        merchant_uid: "order_no_"+ new Date().getTime(), // 상점에서 관리하는 주문 번호를 전달
        name : list_count,
        amount : "100",
        buyer_email : 'iamport@siot.do',
        buyer_name : '${sessionScope.sId}',
        buyer_tel : '010-1234-5678',
        buyer_addr : '서울특별시 강남구 삼성동',
        buyer_postcode : '123-456',
    }, function(rsp) { // callback 로직
    	console.log(rsp);
	    if ( rsp.success ) {
	    	var msg = '결제가 완료되었습니다.';
	    	$.ajax({
				type: "GET",
				url: "CartOrderDetailPro.ca",
				data : {
					"member_idxArr":member_idx_arr,
					"product_idxArr":product_idx_arr,
					"cart_order_priceArr":cart_order_price_arr,
					"cart_countArr":cart_count_arr,
					"cart_sizeArr":cart_size_arr,
					"cart_colorArr":cart_color_arr,
					"cart_product_nameArr":cart_product_name_arr,
					"cart_idxArr":cart_idx_arr
				},
			})
			.done(function(whlist) { // 요청 성공 시
				alert(msg);
				var id = '${sessionScope.sId}';
				location.href="./ProductOrderList.po?id="+id+"&member_idx="+${sessionScope.member_idx}+"&pageNum="+1;
			})
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
// 	         msg += '에러내용 : ' + rsp.error_msg;
// 	         window.history.back();
	    }
    });
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
