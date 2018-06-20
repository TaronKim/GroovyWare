<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GroovyWare - </title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<link rel="stylesheet" type="text/css" href="resources/common/css/import.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/board.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/layout.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/reset.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/common.css">		
	<script src="resources/common/js/jquery-3.3.1.min.js"></script>
	<script src="resources/common/js/common.js"></script>
	
	<!-- jQuery UI -->
	<script src="resources/common/js/jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/common/css/jquery-ui.css">
	<!-- //jQuery UI -->
</head>
<body>
	<!-- wrap -->
    <div id="wrap">
		<%@ include file="../commons/header.jsp" %>
		<div id="container">
			<%@ include file="../commons/lnb.jsp" %>
			<!-- content -->
			<div id="contents">
				<!-- contents_bdy -->
				<div class="contents_bdy">
					<h2 class="tit_bdy1">부서 등록</h2>
					
					<!-- pop_wrap -->	
					<div class="pop_wrap">
						<!-- pop_contents -->
						<form action="dept_insert.gvy" method="post" name="deptInsertFrm">
							<input type="hidden" id="isCheck" name="isCheck" value="0">
							<div class="pop_contents">
								<fieldset>
									<table class="brd_write2">	
										<colgroup>
											<col width="30%">
											<col width="70%">
										</colgroup>
										<tbody>
											<tr>
												<th>부서 코드(*)</th>
												<td>
													<span class="telerik_bx inp_btn">
														<span id="_departmentcode_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="dept_code" name="dept_code" size="20" maxlength="5" type="text"/>
														</span>
														<div class="RadAjaxPanel" id="btnCheckDepartmentPanel" style="display: inline;">
															<span id="btnCheckDepartment" class="RadButton RadButton_ rbSkinnedButton btn_txt" idx="0" tabindex="0">
																<input class="rbDecorated" type="button" name="checkDeptCode" id="checkDeptCode" value="중복여부" tabindex="-1">
															</span>
														</div> 
													</span>
												</td>
											</tr>
											<tr>
												<th>부서명(*)</th>
												<td>
													<span class="telerik_bx">
														<span id="_departmentname_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="dept_name" name="dept_name" size="20" maxlength="200" type="text"/>
														</span>
													</span>
												</td>
											</tr>
	                               			<!-- <tr>
	                                   			<th>사업부 코드</th>
	                                   			<td>
													<span class="telerik_bx inp_btn">
														<div class="RadAjaxPanel" id="_businesscodePanel" style="width: 390px; padding-right: 36px; display: inline;">
															<div id="_businesscode" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7">
																<div class="racTokenList">
																	<input class="racInput radPreventDecorate" name="_businesscode" type="text" id="_businesscode_Input" autocomplete="off" size="2" style="width: 10px;">
																	<span class="racLoadingIcon" style="display: none;"></span>
																</div>
																<input id="_businesscode_ClientState" name="_businesscode_ClientState" type="hidden" autocomplete="off" value="">
															</div>
														</div>
														<span id="_getbusinesscode" class="RadButton RadButton_ rbSkinnedButton btn_src" idx="0" tabindex="0" rwopener="true">
															<input class="rbDecorated" type="submit" name="_getbusinesscode" id="_getbusinesscode_input" value="Search" tabindex="-1">
															<input id="_getbusinesscode_ClientState" name="_getbusinesscode_ClientState" type="hidden" autocomplete="off">
														</span>
													</span>
	                                  			</td>
	                              			</tr> -->
										</tbody>
									</table>
								</fieldset>
							</div>
							<!-- //pop_contents -->
						</form>
						
						<!-- 등록버튼 -->
						<div class="btn_area">
							<button type="button" class="btn_style" onclick="deptInsert()">등록</button>
							<button type="button" class="btn_style" onclick="javascript:location.href='dept_regist.gvy'">목록</button>
						</div>
						<!-- //등록버튼 -->
						
						<div class="check_alert_fail alert_pop"><!-- on class추가시 display:block -->
							<div class="alert_tit">
								<strong>중복확인</strong>
							</div>
							<div class="check_alert_inner">	
								<div class="alert_con">
									<p>존재하는 부서코드가 있습니다.</p>
									<button type="button" class="btn_alert_confirm d_close_pop">확인</button>
								</div>
							</div>
						</div>
						
						<div class="check_alert_success alert_pop"><!-- on class추가시 display:block -->
							<div class="alert_tit">
								<strong>중복확인</strong>
							</div>
							<div class="check_alert_inner">	
								<div class="alert_con">
									<p>입력한 부서코드를 사용할 수 있습니다.</p>
									<button type="button" class="btn_alert_confirm d_close_pop">확인</button>
								</div>
							</div>
						</div>
					</div>
					<!-- //pop_wrap -->
				</div>
				<!-- //contents_bdy -->
			</div>    
			<!-- //content -->		
		</div>
	</div>
	<!-- //wrap -->
	
	<script type="text/javascript">
	

    window.onload = function(){
       <c:if test ="${sessionScope.mvo eq null}">
          window.location.href = "login.gvy";
       </c:if>
    };

	
		$(function(){
			
			//부서코드 중복여부 버튼 클릭시
			$("#checkDeptCode").click(function(){
				
				var dept_code = $("#dept_code");
				var dept_code_val = dept_code.val().toUpperCase().trim();
				var isCheck = document.getElementById("isCheck");
				
				if(dept_code_val.length < 1){
					alert("부서 코드를 입력후 중복여부를 확인해주세요.");
					return;
				}
				
				
				$.ajax({
					url:"checkDeptCode.gvy",
					type:"POST",
					data:"dept_code="+dept_code_val
				}).done(function(res){
					if(res.checkCode == true){
						$(".check_alert_fail").addClass("on");
						dept_code.val("");
						dept_code.focus();
					}else{
						$(".check_alert_success").addClass("on");
						isCheck.value = "1";
					}
				});
				
				
			});
			
		});	
	
		//부서코드,부서명 등록
		function deptInsert(){
			
			var dept_code = document.getElementById("dept_code");
			var dept_name = document.getElementById("dept_name");
			var isCheck = document.getElementById("isCheck");
			
			if(dept_code.value.trim().length < 1){
				alert("부서코드를 입력해주세요.");
				dept_code.focus();
				dept_code.value = "";
				
				return;
			}
			
			if(dept_name.value.trim().length < 1){
				alert("부서명을 입력해주세요.");
				dept_name.focus();
				dept_name.value = "";
				
				return;
			}
			
			if(isCheck.value == "0"){
				alert("중복여부를 확인해주세요.")
				return;
			}
			
			
			document.deptInsertFrm.submit();
			
		}
		
		
	</script>
</body>
</html>