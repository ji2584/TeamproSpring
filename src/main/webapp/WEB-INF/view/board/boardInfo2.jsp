<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
   /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }
        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
.example-div {
	width: 100%;
	margin: 0 auto;
	padding: 20px;
	color: black;
	font-weight: bold;
}

.text-details {
	margin: 0px 30px;
	text-align: center;
}

.text-container {
	width: 80%;
	margin: 0 auto;
	padding: 0px;
}

#remainingTime {
	background-color: #2A2A2A;
	font-size: 25px;
	border-radius: 10px;
	padding: 2px;
	width: 420px;
	text-align: center;
	margin: 10px;
	color: white;
	font-weight: bold;
}

#comment {
	width: 50%; /* 원하는 너비 설정 */
	height: 25px; /* 원하는 높이 설정 */
	resize: none; /* 크기 조절 비활성화 */
}

li {
	list-style-type: none; /* 점 없애기 */
}

.com {
	color: black; /* 원하는 텍스트 색상으로 설정 (예: black, red, #00ff00) */
	/* 기타 스타일 속성들을 원하는 대로 설정할 수 있습니다. */
}

  .cart button,#paymentButton {
        background-color: #2A2A2A; /* 버튼 배경색을 원하는 색상으로 지정 */
        color: white; /* 글자색을 흰색으로 지정 */
        /* padding: 0px 20px; 내부 여백을 조절하여 크기를 변경할 수 있습니다. */
        font-size: 15px; /* 글자 크기를 조절할 수 있습니다. */
        border: none; /* 테두리 제거 */
        cursor: pointer;
    }

    .cart button:hover,
#paymentButton:hover {
        background-color: #45a049; /* 마우스를 올렸을 때 버튼의 배경색 변경 */
    }
</style>

<script>

    // Ajax 호출하여 남은 시간 업데이트
    function updateRemainingTime(regdate) {
    	  var loggedInUserId = "${amem.id}";
          var boardBuyId = "${board.buyid}";

          if (!regdate) {
              $("#remainingTime").html("즉시구매 된 상품입니다.");
              $(".cart button").hide(); // 입찰 및 즉시구매 버튼 숨기기

              // 즉시구매된 상품이고 로그인한 사용자가 입찰자와 같은 경우 결제 버튼 표시
              if (loggedInUserId === boardBuyId) {
                  $("#paymentButton").show();
              } else {
                  $("#paymentButton").hide();
              }
              return;
          }
        var currentTime = new Date().getTime();
        var expirationTime = new Date(regdate).getTime() + (7 * 24 * 60 * 60 * 1000);

        var remainingTime = expirationTime - currentTime;
        if (remainingTime <= 0) {
            $("#remainingTime").text("시간이 만료된 상품입니다.");
            // 시간이 만료된 상품입니다. 메시지가 표시되었을 때 결제 버튼을 보이게 설정
            $("#paymentButton").show();
            $(".cart button").hide(); 
            return;
        }
        $(".cart button").show();
        var days = Math.floor(remainingTime / (1000 * 60 * 60 * 24));
        var hours = Math.floor((remainingTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((remainingTime % (1000 * 60)) / 1000);

        $("#remainingTime").text(days + "일 " + hours + "시간 " + minutes + "분 " + seconds + "초");
        // 남은 시간이 표시되는 경우 결제 버튼 감추기
        $("#paymentButton").hide();
    }

    // 페이지 로드 후 초기 업데이트
    $(document).ready(function () {
        updateRemainingTime("${board.regdate}");
    });

    // 일정 간격으로 업데이트
    setInterval(function () {
        updateRemainingTime("${board.regdate}");
    }, 1000); // 1초마다 업데이트
    
</script>

<script> 
		let count = ${count}
		function enterkey(pnum, userid) {
		   if(window.event.keyCode==13) {
		      commentPro(pnum, userid)
		   }
		}
		function commentPro(pnum, userid) {
		   count = count+1
		   let comment = document.querySelector("#comment").value
		   //alert(comment)
		   const xhttp = new XMLHttpRequest()
		   let url = "${pageContext.request.contextPath}/board/boardCommentPro?comment="
		         +comment+"&boardnum="+pnum+"&count="+count+"&userid="+userid
		   xhttp.open("GET",url,true)
		   xhttp.send()
		   xhttp.onreadystatechange = function() {      
		      if(this.readyState ==4 && this.status==200) {
		     
		      
		   let commentList = document.querySelector("#commentList")
		   commentList.innerHTML = this.responseText + "<br>" + commentList.innerHTML
		   location.reload(true);
		      }      
		}
		   document.querySelector("#comment").value=""
		   }
	
	
		</script>

</head>
<body>

	<div class="container">
		<div class="product" style="display: flex;">
			<div class="images">

				<img
					src="${pageContext.request.contextPath}/image/board/${board.file1}"
					width="420px" height="680px" alt="Product Image">
			</div>
			<div class="text-details" style="margin-left: 150px;">
				<div id="remainingTime"></div>
				<span style="color: black; font-weight: bold; font-size: 50px;">${board.pname}</span>
				<div style="text-align:left; padding-left:30px;">
					<span style="color: black; font-weight: bold; font-size: 20px;">즉시구매가:</span>
					<span style="color: black; font-weight: bold; font-size: 30px;">
						<fmt:formatNumber value="${board.prompt}" pattern="#,##0" />원
					</span><br> <span
						style="color: black; font-weight: bold; font-size: 20px;">시작경매가:</span>
					<span style="color: blue; font-weight: bold; font-size: 30px;">
						<fmt:formatNumber value="${board.price}" pattern="#,##0" />원
					</span><br> <span
						style="color: black; font-weight: bold; font-size: 20px;">입찰가:</span>
					<span style="color: red; font-weight: bold; font-size: 30px;">
						    <fmt:formatNumber value="${board.buy}" pattern="#,##0" />원
					</span><br> <span
						style="color: black; font-weight: bold; font-size: 20px;">입찰자:</span>
					<span style="color: black; font-weight: bold; font-size: 20px;">${board.buyid}
						님</span><br>
				</div>

				<p>
				
				<c:if test="${sessionScope.id!=null}">
				<form class="cart" method="post" enctype='multipart/form-data'>


					<button onclick="openPurchasePopup()">입찰하기</button>
					<button onclick="buyNow()">즉시구매</button>
					
				</form>
						
					<a href="${pageContext.request.contextPath}/board/checkout?num=${board.pnum}"><button id="paymentButton" >결제하기</button></a>
					</c:if>
<script>


    const paymentButton = document.getElementById("paymentButton");
    const boardBuyId = "${board.buyid}";
    const loggedInUserId = "${amem.id}";

    if (boardBuyId === loggedInUserId) {
      paymentButton.style.display = "block";
    }
  });

</script>


<script>
	function buyNow() {
	    if (confirm("즉시구매를 하시겠습니까?")) {
	        var pnum = ${board.pnum};
	        var userid = "${amem.id}";
	        var prompt= ${board.prompt};
	
	        $.ajax({
	            type: "POST",
	            url: "${pageContext.request.contextPath}/board/buyNowPro",
	            data: {
	                "pnum": pnum,
	                "userid": userid,
	                "prompt": prompt
	            },
	            success: function(response) {
	                // 성공 처리
	                alert(response);
	            },
	            error: function(error) {
	                console.error("Error during buyNowPro request:", error);
	            }
	        });
	    }
	}
</script>


			</div>
		</div>
		<!-- 구매(입찰) 버튼 클릭 시 이벤트 처리 -->
		<script>
function openPurchasePopup() {
    // 이전 입찰 또는 즉시구매가 가져오기
    var currentBid = ${board.buy};
    var startPrice = currentBid ? currentBid : ${board.price};
    var promptPrice = ${board.prompt};
    // 숫자를 3자리마다 쉼표로 포맷팅
    var formattedStartPrice = startPrice.toLocaleString();
    var formattedPromptPrice = promptPrice.toLocaleString();
    // 두 번째 입찰부터는 이전 입찰가를 기준으로 범위 설정
    var bidRangeStart = currentBid ? currentBid : ${board.price};
    var buyAmount = prompt("구매 또는 입찰하려는 금액을 입력하세요.\n" + formattedStartPrice + 
    		"~" + formattedPromptPrice + "사이의 금액을 입력하세요", "0");
    if (buyAmount !== null) {
        // 입력값이 숫자인지 확인
        if (!isNaN(buyAmount)) {
            // 입력값이 범위에 있는지 확인
            if (parseInt(buyAmount) >= parseInt(bidRangeStart) && parseInt(buyAmount) <= parseInt(promptPrice)) {
                // 올바른 범위에 속한 경우 서버로 전송
                window.location.href = "${pageContext.request.contextPath}/board/buyPro?pnum=${board.pnum}&buy=" 
                		+ buyAmount + "&buyid=${amem.id}";
            } else {
                alert("입력한 금액이 올바른 범위에 속하지 않습니다.");
            }
        } else {
            alert("숫자를 입력하세요.");
        }
    }
}
</script>



		<div class="example-div">
			<div class="">
				<div class="">
					<table>
						<colgroup>
							<col width="150px">
							<col width="340px">
							<col width="150px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th>작성자 ID</th>

								<td>${board.userid }님</td>
							</tr>
							<tr>
								<th>경매등록일시</th>
								<td><fmt:formatDate value="${board.idate}"
										pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /></td>
							</tr>
							<tr>
								<th>조회수</th>
								<td>${board.readcnt}</td>
							</tr>
							<tr>
								<th>제품상세</th>
								<td>${board.subject}</td>
							</tr>
							<tr>
								<th>상세내용</th> 
								<td>${board.content}</td>
							</tr>
							
						     
						    <tr>
						        <th>아이디 신고 횟수</th>
						        <td>${reportcount}</td>
						    </tr>
							
												
							<tr>
                        <th>입찰수</th>
                        <td>
                        <a class="btn btn-primary"  onclick="openModal('${board.pnum}')"
                              href="#"> ${maxbuy} 기록</a></td>
                     </tr>
							<tr>
								<c:if test="${sessionScope.id!=null}">
									<td colspan="2" class="text-right"><a
										class="btn btn-primary"
										href="${pageContext.request.contextPath}/board/boardUpdateForm?num=${board.pnum}">변경</a>
										<a class="btn btn-primary"
										href="${pageContext.request.contextPath}/board/boardDeleteForm?num=${board.pnum}">삭제</a>
										<a class="btn btn-primary"
										href="${pageContext.request.contextPath}/board/products">목록</a>
										<a class="btn btn-primary"
										href="${pageContext.request.contextPath}/admin/ReportForm?num=${board.pnum}">신고</a>
									</td>
								</c:if>

							</tr>
						</tbody>
					</table>
					<c:if test="${sessionScope.id==null}">
						<li><a
							href="${pageContext.request.contextPath}/member/loginForm"></a></li>
					</c:if>
				</div>
			</div>
		</div>
<!-- modal을 이용한거 -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close-btn" onclick="closeModal()">&times;</span>
        
        <table class="table table-bordered">
<thead>
      <tr>
        <th>일시</th>
        <th>입찰자</th>
        <th>입찰금액</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="ab" items="${ab}">   
      <tr>
        <td><fmt:formatDate value="${ab.buydate}"
										pattern="yyyy년 MM월 dd일 HH시 mm분 " /></td>
        <td>${ab.buyid}</td>
        <td><fmt:formatNumber value="${ab.buy}" pattern="#,##0" /></td>
      </tr>
      </c:forEach>  
    </tbody>
  </table>
        
    </div>
</div>
		<script>
		  // 모달 열기
	    function openModal() {
	        document.getElementById('myModal').style.display = 'block';
	    }

	    // 모달 닫기
	    function closeModal() {
	        document.getElementById('myModal').style.display = 'none';
	    }
	    //--end
	    
	    
	    

function checkInput(pnum) {
    var commentInput = document.getElementById("comment");
    var saveButton = document.getElementById("saveButton");

    // 값이 있을 때 버튼 활성화, 없을 때 비활성화
    if (commentInput.value.trim() !== "") {
        saveButton.removeAttribute("disabled");
    } else {
        saveButton.setAttribute("disabled", "disabled");
    }
}
function checkAndShowLoginForm() {
    if (${sessionScope.id == null}) {
        if (confirm("로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까?")) {
            window.location.href = "${pageContext.request.contextPath}/member/loginForm";
        } else {
            // 아무 동작 없이 확인 창이 닫힘
        }
    }
}
function reserv(ser, index) {
	   alert("")
	   fetch('${pageContext.request.contextPath}/board/reservComm?ser='+ser)
	   .then(response => response.text())
	    .then(data => {
	        // 서버에서 받은 데이터(data)를 사용하여 작업 수행
	        document.querySelector("#r"+index).innerHTML=data // 새로고침하지않아도 데이터가 업데이트가됨
	        alert(data);
	        
	    })
	    .catch(error => {
	        // 오류가 발생한 경우 처리
	        console.error('Fetch error:', error);
	    });
}
</script>
		<!-- 댓글영역 start -->
		<div class="example-div">
			<div class="">댓글</div>
			<span class="" id="id">작성자:${amem.id}</span> <input type="hidden"
				id="hiddenUserId" name="userid" value="${amem.id}">
			<div class="col-sm-10">
				<input type="text" class="form-control" id="comment"
					onclick="checkAndShowLoginForm()"
					onkeyup="checkInput('${board.pnum}')">
				<button class="btn btn-primary" id="saveButton"
					onclick="commentPro('${board.pnum}')" disabled>저장</button>
			</div>
			<div class="col-sm-1"></div>
		</div>
		<div class="example-div" id="commentList">
			<br>
			<c:set var="sercount" value="${count}" />
			<c:forEach var="c" items="${commentLi}">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-10">${sercount}번째
							댓글 <br>${c.userid}님 작성시간 ${c.regdate}
							<p>&nbsp; ${c.content}
							<p>
							<form
								action="${pageContext.request.contextPath}/board/commentDeleteForm"
								method="post">
								<input type="hidden" name="ser" value="${c.ser}">
								<button type="submit">삭제</button>
								
							</form>
							<button type="button" onclick="reserv('${c.ser}', '${status.index}')"  
                        >추천 [<span id="r${status.index}" >${c.upcnt}</span>]</button> 
						</div>
					</div>

				</div>
				<c:set var="sercount" value="${sercount - 1}" />
			</c:forEach>
		</div>




		<!-- 댓글영역 end-->

	</div>




</body>
</html>
