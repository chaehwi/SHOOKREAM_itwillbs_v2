<%-- <%@page import="vo.MemberBean"%> --%>
<%-- <%@page import="dao.MemberDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<title>회원 수정 </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<style type="text/css">
#sform {
          display: inline-block;
          text-align: center;
        }
</style>
<style>
.w3-sidebar a {font-family: "Noto Sans KR", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Noto Sans KR", sans-serif;}
</style>
</head>
<body class="w3-content" style="max-width:95% ">

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
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
<!--   <div class="w3-hide-large" style="margin-top:83px"></div> -->
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">SHOOKREAM</p>
    <p class="w3-right">
      <i class="fa fa-shopping-cart w3-margin-right"></i>
      <i class="fa fa-search"></i>
    </p>
</header>

  
  <!-- Footer -->
  <!-- 로그인 화면 폼 -->
  <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
    <div id = "sform">
        <h4>회원 정보</h4>
        <p>Questions? Go ahead.</p>
        <form action="MemberModifyPro.me" method="post" name="fr">
          <table>
          <tr>
          <td width="300px"><input class="w3-input w3-border" type="text" placeholder="name" name="name" value = "${member.member_name }" required></td>
          </tr>
          <tr>
          <td width="300px"><input class="w3-input w3-border" type="text" placeholder="id" name="id" value = "${member.member_id }" required></td>
          </tr>
          <tr> <!-- 기존 패스워드 -->
          <td width="300px"><input class="w3-input w3-border" type="text" placeholder="pass" name="oldpass" value = "${member.member_pass }" required></td>
          </tr>
          <tr> <!-- 새 패스워드 -->
          <td width="300px"><input class="w3-input w3-border" type="password"  name="newpass1" placeholder="신규 비밀번호(변경시에만 입력)" onkeyup="checkPasswd(this.value)"><span id="checkPasswdResult"></span></td>
          		
          </tr>
          <tr> <!-- 새 패스워드 확인 -->
          <td width="300px"><input class="w3-input w3-border" type="password"  name="newpass2" placeholder="새 비밀번호 확인(변경시에만 입력)"  onkeyup="checkConfirmPasswd(this.value)"><span id="checkConfirmPasswdResult"></span></td>
          		
          </tr>
          <tr>
          <td width="300px"><input class="w3-input w3-border" type="text" placeholder="address" name="address" value = "${member.member_address }" required></td>
          </tr>
          <tr>
          <td width="300px"><input class="w3-input w3-border" type="text" placeholder="email" name="email" value = "${member.member_email }" required></td>
          </tr>
          <tr>
          <td width="300px"><input class="w3-input w3-border" type="text" placeholder="phone" name="phone" value = "${member.member_phone }" required></td>
          </tr>
          <tr>
          <td><button type="submit" class="w3-button w3-block w3-black">수정</button></td>
          </tr>
        </table>
        </form>
    </div>
  </footer>
 </div>	
  <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></div>
<!-- 로그인 화면 폼 -->
  <!-- End page content -->


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

<!-- 비밀번호 수정 -->
<script type="text/javascript">

	// 비밀번호확인 -기존 비밀번호와 같은지 체크하기
	function checkConfirmPasswd(confirmPasswd) {
		let newpass1 = document.fr.newpass1.value;
		let spanCheckConfirmPasswdResult = document.getElementById("checkConfirmPasswdResult");
		// 두 패스워드 일치 여부 판별
		if(newpass1 == confirmPasswd) {
			spanCheckConfirmPasswdResult.innerHTML = "패스워드 일치";
			spanCheckConfirmPasswdResult.style.color = "BLUE";    		
		} else {
			spanCheckConfirmPasswdResult.innerHTML = "패스워드 불일치";
			spanCheckConfirmPasswdResult.style.color = "RED";    	
		}
	}

</script>
<!-- End Channel Plugin -->
</body>
</html>
