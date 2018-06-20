<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GroovyWare -</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<link rel="stylesheet" type="text/css"
	href="resources/common/css/import.css">
<link rel="stylesheet" type="text/css"
	href="resources/common/css/board.css">
<link rel="stylesheet" type="text/css"
	href="resources/common/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="resources/common/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="resources/common/css/common.css">
<link rel="stylesheet" type="text/css"
	href="resources/common/css/jquery-ui.css">
<style type="text/css">
.search_box .search_btn .RadButton {
	bottom: 24px;
}
</style>
<script src="resources/common/js/jquery-3.3.1.min.js"></script>
<script src="resources/common/js/common.js"></script>
<script src="resources/common/js/jquery-ui.min.js"></script>
</head>
<body>
	<!-- wrap -->
	<div id="wrap">
		<%@ include file="../commons/header.jsp"%>
		<div id="container">
			<%@ include file="../commons/lnb.jsp"%>
			<!-- content -->
			<div id="contents">
				<!-- contents_bdy -->
				<!--본문-->
				<div class="contents_bdy">
					<h2 class="tit_bdy1">반려함</h2>
					<!--상단검색-->
					<div class="search_box">
						<div class="search_brd src_ty4">
							<table class="brd_write2">
								<colgroup>
									<col width="7%" />
									<col width="32%" />
									<col width="7%" />
									<col width="32%" />
									<col width="*" />
								</colgroup>
								<tr>
									<th>작성일</th>
									<td><span class="telerik_bx">
											<div id="ctl00_ContentPlaceHolder1__fromdate_wrapper"
												class="RadPicker RadPicker_Windows7"
												style="display: inline-block; width: 160px;">
												<table cellspacing="0" class="rcTable rcSingle"
													summary="Table holding date picker control for selection of dates."
													style="width: 100%;">
													<caption style="display: none;">RadDatePicker</caption>
													<thead style="display: none;">
														<tr>
															<th scope="col">RadDatePicker</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="rcInputCell" style="width: 100%;"><span
																id="ctl00_ContentPlaceHolder1__fromdate_dateInput_wrapper"
																class="riSingle RadInput RadInput_Windows7"
																style="display: block; width: 100%;"> <input
																	id="ctl00_ContentPlaceHolder1__fromdate_dateInput"
																	name="ctl00$ContentPlaceHolder1$_fromdate$dateInput"
																	class="riTextBox riEnabled" value="" type="text" />
															</span></td>
															<td><a title="Open the calendar popup." href="#"
																id="ctl00_ContentPlaceHolder1__fromdate_popupButton"
																class="rcCalPopup">Open the calendar popup.</a></td>
														</tr>
													</tbody>
												</table>
											</div> ∼
											<div id="ctl00_ContentPlaceHolder1__todate_wrapper"
												class="RadPicker RadPicker_Windows7"
												style="display: inline-block; width: 160px;">
												<table cellspacing="0" class="rcTable rcSingle"
													summary="Table holding date picker control for selection of dates."
													style="width: 100%;">
													<caption style="display: none;">RadDatePicker</caption>
													<thead style="display: none;">
														<tr>
															<th scope="col">RadDatePicker</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="rcInputCell" style="width: 100%;"><span
																id="ctl00_ContentPlaceHolder1__todate_dateInput_wrapper"
																class="riSingle RadInput RadInput_Windows7"
																style="display: block; width: 100%;"><input
																	id="ctl00_ContentPlaceHolder1__todate_dateInput"
																	name="ctl00$ContentPlaceHolder1$_todate$dateInput"
																	class="riTextBox riEnabled" value="" type="text" /></span></td>
															<td><a title="Open the calendar popup." href="#"
																id="ctl00_ContentPlaceHolder1__todate_popupButton"
																class="rcCalPopup">Open the calendar popup.</a></td>
														</tr>
													</tbody>
												</table>
											</div>
									</span></td>
									<th>제목</th>
									<td><span class="telerik_bx"> <span
											id="ctl00_ContentPlaceHolder1__title_wrapper"
											class="riSingle RadInput" style="width: 160px;"><input
												id="ctl00_ContentPlaceHolder1__title"
												name="ctl00$ContentPlaceHolder1$_title" size="20"
												type="text" value="" /><input
												id="ctl00_ContentPlaceHolder1__title_ClientState"
												name="ctl00_ContentPlaceHolder1__title_ClientState"
												type="hidden" /></span>
									</span></td>

								</tr>
							</table>
						</div>
						<div class="search_btn">
							<span id="ctl00_ContentPlaceHolder1_btnsearch"
								class="RadButton RadButton_ rbSkinnedButton"><input
								class="rbDecorated" type="submit"
								name="ctl00$ContentPlaceHolder1$btnsearch_input"
								id="ctl00_ContentPlaceHolder1_btnsearch_input" value="검색" /><input
								id="ctl00_ContentPlaceHolder1_btnsearch_ClientState"
								name="ctl00_ContentPlaceHolder1_btnsearch_ClientState"
								type="hidden" /></span>
						</div>
					</div>
					<!--//상단 검색-->

					<!-- //상세검색 -->
					<div class="pos_qus">
						<!--그리드 영역-->
						<div>
							<div class="RadAjaxPanel"
								id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_RadGridDocumentPanel">
								<div id="ctl00_ContentPlaceHolder1_RadGridDocument"
									class="RadGrid RadGrid_Telerik brd_list2" style="width: 100%;">

									<div class="rgHeaderWrapper">
										<div id="ctl00_ContentPlaceHolder1_RadGridDocument_GridHeader"
											class="rgHeaderDiv" style="overflow: hidden;">

											<table class="rgMasterTable rgClipCells"
												id="ctl00_ContentPlaceHolder1_RadGridDocument_ctl00_Header"
												style="width: 100%; table-layout: fixed; overflow: hidden; empty-cells: show;">
												<colgroup>
													<col style="width: 15%" />
													<col style="width: 20%" />
													<col style="width: 12%" />
													<col style="width: 40%" />
													<col style="width: *" />
												</colgroup>
												<thead>
													<tr>
														<th scope="col" class="rgHeader"
															style="white-space: nowrap;">문서번호</th>
														<th scope="col" class="rgHeader"
															style="white-space: nowrap;">신청일</th>
														<th scope="col" class="rgHeader"
															style="white-space: nowrap;">작성자</th>
														<th scope="col" class="rgHeader"
															style="white-space: nowrap;">제목</th>
														<th scope="col" class="rgHeader"
															style="white-space: nowrap;">첨부</th>
													</tr>
												</thead>
												<tbody style="display: none;">
													<tr>
														<td colspan="5"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div id="ctl00_ContentPlaceHolder1_RadGridDocument_GridData"
										class="rgDataDiv"
										style="overflow-x: auto; overflow-y: auto; width: 100%; height: 500px;">

										<table class="rgMasterTable rgClipCells"
											id="ctl00_ContentPlaceHolder1_RadGridDocument_ctl00"
											style="width: 100%; table-layout: fixed; overflow: hidden; empty-cells: show;">
											<colgroup>
												<col style="width: 15%" />
												<col style="width: 20%" />
												<col style="width: 12%" />
												<col style="width: 40%" />
												<col style="width: *" />
											</colgroup>
											<thead style="display: none;">
												<tr>
													<th scope="col"></th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${requestScope.a_list ne null }">
													<c:forEach items="${requestScope.a_list }" var="avo">
														<tr class="rgRow" style="white-space: nowrap;">
															<td class="col_ct"><a href="#view_draft"
																class="btn_update"
																onclick="viewDraft('${avo.dvo.draft_code}') ">
																	${avo.dvo.draft_code } <input type="hidden"
																	name="approval_idx" value="${avo.approval_idx}">
															</a></td>
															<td class="col_ct">${fn:substring(avo.dvo.draft_year,0,10) }</td>
															<td class="col_lf">${avo.dvo.evo.e_name}<input
																type="hidden" name="e_code"
																value="${avo.dvo.evo.e_code}"></td>
															<td class="col_lf">${avo.dvo.draft_title }</td>

															<td class="col_ct"><c:if
																	test="${avo.dvo.draft_file_name ne null }">
																	<img
																		id="ctl00_ContentPlaceHolder1_RadGridDocument_ctl00_ctl04_img"
																		title="Chrysanthemum.jpg"
																		src="../../images/common/icon_file.gif" />
																</c:if></td>
														</tr>

													</c:forEach>
												</c:if>
												<c:if test="${requestScope.a_list eq null }">
													<tr class="rgNoRecords">
														<td colspan="5" style="text-align: left;"><div></div></td>
													</tr>
												</c:if>
											</tbody>

										</table>
									</div>
									<input
										id="ctl00_ContentPlaceHolder1_RadGridDocument_ClientState"
										name="ctl00_ContentPlaceHolder1_RadGridDocument_ClientState"
										type="hidden" />
								</div>

							</div>
						</div>
						<!--//그리드 영역-->
					</div>
					<!--//상세 검색-->

					<!-- empUpdatePop -->
					<div id="view_draft" class="common_popup type3">

						<div class="pop_head">
							<h2 class="tit">사원 수정</h2>
							<a href="#" class="this_pop_close d_close">닫기</a>
						</div>

						<div class="pop_wrap">
							<!-- pop_contents -->
							<div class="pop_contents">
								<form action="" method="post" name="frm"
									enctype="multipart/form-data">
									<input type="hidden" id="isCheck" name="isCheck" value="0">
									<!-- fieldset1 -->
									<fieldset class="fld_mg30 bx_emp_infor">
										<div class="thm">
											<p>
												<img id="photo" style="height: 120px; width: 120px;">
											</p>
										</div>

										<div class="infor">
											<table class="brd_write2">
												<colgroup>
													<col width="14%">
													<col width="35%">
													<col width="16%">
													<col width="35%">
												</colgroup>
												<tbody>
													<tr>
														<th>사원번호(*)</th>
														<td><span class="telerik_bx inp_btn"> <span
																id="_employeeno_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="e_code"
																	name="e_code" size="20" readonly="readonly"
																	maxlength="5" type="text">
															</span>
														</span></td>
														<th>사원명(*)</th>
														<td><span class="telerik_bx"> <span
																id="_employeename_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="e_name"
																	name="e_name" size="20" maxlength="200" type="text">
															</span>
														</span></td>
													</tr>
													<tr>
														<th>급여구분(*)</th>
														<td>
															<div class="select_wrap">
																<select style="width: 258px;" id="sal_type"
																	name="sal_type">
																	<option value="고정급">고정급</option>
																	<option value="변동급">변동급</option>
																</select>
															</div>
														</td>
														<th>주민등록번호(*)</th>
														<td><span class="telerik_bx inp_jumin"> <span
																id="_socialno01_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="s_num"
																	name="s_num_ar" class="s_num1" size="20" maxlength="20"
																	type="text" style="width: 80px;">

															</span> - <span id="_socialno02_wrapper"
																class="riSingle RadInput" style="width: 160px;">
																	<input name="s_num_ar" class="s_num2" size="20"
																	maxlength="20" type="text" style="width: 80px;">
															</span>
														</span></td>
													</tr>
													<tr>
														<th>결혼여부</th>
														<td>
															<div class="select_wrap">
																<select style="width: 258px;" name="marry_status">
																	<option vlaue="기혼">기혼</option>
																	<option value="미혼">미혼</option>
																</select>
															</div>
														</td>
														<th>최종학교</th>
														<td><span class="telerik_bx"> <span
																id="_schoolname_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="school_name"
																	name="school_name" size="20" type="text">
															</span>
														</span></td>
													</tr>
													<tr>
														<th>전공</th>
														<td><span class="telerik_bx"> <span
																id="_major_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="major"
																	name="major" size="20" type="text">
															</span>
														</span></td>
														<th>전화번호</th>
														<td><span class="telerik_bx"> <span
																id="_phoneno_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="e_phone"
																	name="e_phone" size="20" type="text" value="">
															</span>
														</span></td>
													</tr>
													<tr>
														<th>핸드폰</th>
														<td><span class="telerik_bx"> <span
																id="_cellphoneno_wrapper" class="riSingle RadInput"
																style="width: 160px;"> <input id="e_cellphone"
																	name="e_cellphone" size="20" type="text">
															</span>
														</span></td>
														<th>이메일</th>
														<td><span class="telerik_bx">
																<div class="RadAjaxPanel" id="_emailPanel"
																	style="display: inline;">
																	<span id="_email_wrapper" class="riSingle RadInput"
																		style="width: 160px;"> <input id="e_email"
																		name="e_email_ar" size="20" type="text"
																		style="width: 100px;"> @ <input
																		name="e_email_ar" size="20" type="text"
																		style="width: 100px;">
																	</span>
																</div>
														</span></td>
													</tr>
													<tr>
														<th>주소</th>
														<td colspan="3"><span class="telerik_bx telerik_post">
																<span class="post_tit">우편번호</span> <span
																class="post_num"> <span id="_zipcode_wrapper"
																	class="riSingle RadInput" style="width: 160px;">
																		<input id="e_post" name="e_post" readonly="readonly"
																		size="20" type="text" style="width: 160px !important;">
																		<!-- <button type="button" class="ruButton ruBrowse" style="cursor:pointer;line-height:30px;">찾기</button> -->
																		<div class="ic_search_wrap">
																			<a href="#" class="btn_check"
																				onclick="daumPostCode()">찾기</a>
																		</div>
																</span>
															</span> <span class="post_add"> <span
																	id="_address_wrapper" class="riSingle RadInput"
																	style="width: 160px;"> <input id="e_addr"
																		name="e_addr" size="20" type="text">
																</span>
															</span>
														</span></td>
													</tr>
												</tbody>
											</table>
										</div>
									</fieldset>
									<!-- //fieldset1 -->

								</form>

  
								<div class="btn_area">
									<button type="button" class="btn_style small"
										onclick="reApproval()">재결재</button>
									<button type="button" class="btn_style small"
										onclick="delApproval()">삭제</button>
								</div>
							</div>
							<!-- //pop_contents -->
						</div>
					</div>
					<!-- //empUpdatePop -->
				</div>
				<!--//본문-->
				<!-- //contents_bdy -->
			</div>
			<!-- //content -->
		</div>
		<!-- //wrap -->
		<script type="text/javascript">
			function delApproval(){
				document.frm.action = "delApproval.gvy";
				document.frm.submit();
			}
			function reApproval(){
				document.frm.action = "reApproval.gvy";
				document.frm.submit();
			}
		</script>
</body>
</html>