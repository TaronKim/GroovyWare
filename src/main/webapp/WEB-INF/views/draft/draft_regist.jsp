<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
	<style>
		td.img_none img{display:none;}
	</style>
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
					<h2 class="tit_bdy1">기안 상신함</h2>
					
					<!-- 상단검색 -->
					<form action="draft_regist.gvy" method="post" name="searchDraftFrm">
						<div class="search_box">
							<div class="search_brd">
								<table class="brd_write2">
									<colgroup>
										<col width="5%">
										<col width="20%">
										<col width="5%">
										<col width="20%">
									</colgroup>
									<tbody>
										<tr>
											<th>작성일</th>
											<td style="">
												<input type="text" name="draft_write_year" readonly="readonly" class="myDatePicker" style="width:100px;" />
												<!-- <span style="display: inline-block;padding: 5px;vertical-align:middle;">~</span>
												<input type="text" name="draft_write_year1" readonly="readonly" class="myDatePicker" style="width:100px;"/> -->
											</td>
											<th>제목</th>
											<td>
												<span class="telerik_bx">
													<span id="ctl00_ContentPlaceHolder1__employeename_wrapper" class="riSingle RadInput" style="width:160px;">
														<input id="draftSearch" name="draftSearch" size="20" type="text">
													</span>
												</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="search_btn">
								<span id="ctl00_ContentPlaceHolder1_btnSearch" class="RadButton RadButton_ rbSkinnedButton btn_src" idx="0" tabindex="0">
									<input class="rbDecorated" type="button" name="ctl00$ContentPlaceHolder1$btnSearch" id="btn_draft_search" value="검색" tabindex="-1">
								</span>
							</div>
						</div>
					</form>	
					<!-- //상단검색 -->
					
					<!-- 게시판 영역 -->
					<div id="emp_table_wrap">
						<div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_RadGridEmployeePanel" style="display: inline;">
							<form action="emp_select_del.gvy" method="post" name="selectDelFrm">
							<div id="ctl00_ContentPlaceHolder1_RadGridEmployee" class="RadGrid RadGrid_Telerik brd_list2" style="width:100%;" tabindex="0">
								<div class="rgHeaderWrapper">
									<div id="ctl00_ContentPlaceHolder1_RadGridEmployee_GridHeader" class="rgHeaderDiv" style="overflow: hidden;">
			
										<table class="rgMasterTable rgClipCells" id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00_Header" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
											<colgroup>
												<col style="width:5%">
												<col style="width:20%">
												<col style="width:30%">
												<col style="width:20%">
												<col style="width:20%">
												<col style="width:5%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><input id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00_ctl04_chklineSelectCheckBox" class="input_check check_all" type="checkbox" name=""></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;">문서번호</th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;">문서제목</th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;">작성자</th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;">기안일자</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;">첨부</th>
												</tr>
											</thead>
											<tbody style="display:none;">
												<tr>
													<td colspan="9"></td>
												</tr>
											</tbody>
										</table>
			 						</div>
			 					</div>
			 					
								<div id="ctl00_ContentPlaceHolder1_RadGridEmployee_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:480px;">
									<table class="rgMasterTable rgClipCells d_check" id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
										<colgroup>
											<col style="width:5%">
												<col style="width:20%">
												<col style="width:30%">
												<col style="width:20%">
												<col style="width:20%">
												<col style="width:5%">
										</colgroup>
										<thead style="display:none;">
											<tr>
												<th scope="col"></th>
											</tr>
										</thead>
										<tbody>
										<!-- 기안리스트 -->
										<c:if test="${requestScope.draft_list != null }">
										
										<c:forEach items="${requestScope.draft_list }" var="d_list">
										<tr class="rgRow" id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00__0" style="white-space:nowrap;">
												<td class="col_ct">
													<input id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00_ctl04_chklineSelectCheckBox" class="input_check" type="checkbox" name="checkDel" value="">
												</td>
												<td class="col_ct"><a href="#draftUpdate" class="btn_update" onclick="">${d_list.draft_code }</a></td>
												<td>${d_list.draft_title }</td>
												<td class="col_ct">${d_list.evo.e_name}</td>
												<td class="col_ct">${fn:substring(d_list.draft_year,0,10) }</td>
												<td class="col_ct">
													<c:if test="${d_list.draft_file_name != null && d_list.draft_ori_name != null}">
														<img src="resources/images/icon_file.gif" alt="첨부"/>
													</c:if>
												</td>
											</tr>
										</c:forEach>
										
										</c:if>
										<!-- //기안리스트 -->
										
										<c:if test="${requestScope.draft_list == null }">
											<tr class="rgRow" id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00__0" style="white-space:nowrap;">
												<td colspan="7" class="col_ct search_none">등록된 값이 없습니다.</td>
											</tr>
										</c:if>
										
										</tbody>
									</table>
								</div>
							</div>
							</form>
						</div>
		
						<div class="btn_btm">
							<ul class="btn_lft">
								<li>
									<span id="ctl00_ContentPlaceHolder1_btnPrint" class="RadButton RadButton_ rbSkinnedButton btn_ty2" tabindex="0">
										<input class="rbDecorated" type="button" name="ctl00$ContentPlaceHolder1$btnPrint" id="ctl00_ContentPlaceHolder1_btnPrint_input" value="선택삭제" tabindex="-1" onclick="selectDel()">
									</span>
								</li>
							</ul>
							<ul class="btn_rgt">
			                    <!-- <li>
			                    	<span id="ctl00_ContentPlaceHolder1_btnUploadExcel" class="RadButton RadButton_ rbSkinnedButton btn_ty2" tabindex="0">
			                    		<input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnUploadExcel" id="ctl00_ContentPlaceHolder1_btnUploadExcel_input" value="업로드" tabindex="-1">
			                    	</span>
			                    </li> -->
								<li>
									<span id="ctl00_ContentPlaceHolder1_btnInsert" class="RadButton RadButton_ rbSkinnedButton btn_ty3" tabindex="0" rwopener="true">
										<input class="rbDecorated btn_pop" type="button" id="ctl00_ContentPlaceHolder1_btnInsert_input" value="문서작성" tabindex="-1" onclick="javascript:location.href='draft_form.gvy'" />
									</span>
								</li>
							</ul>
						</div>
					</div>
					
					
					<!-- empUpdatePop -->
					<div id="empUpdate" class="common_popup type3">
						
						<div class="pop_head">
							<h2 class="tit">사원 수정</h2>
							<a href="#" class="this_pop_close d_close">닫기</a>
						</div>
						
						<div class="pop_wrap">
							<!-- pop_contents -->
							<div class="pop_contents">
								<form action="emp_insert.gvy" method="post" name="empRegistFrm" enctype="multipart/form-data">
									<input type="hidden" id="isCheck" name="isCheck" value="0">
									<!-- fieldset1 -->
									<fieldset class="fld_mg30 bx_emp_infor">
										<div class="thm">
											<p><img id="photo" style="height:120px;width:120px;"></p>
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
														<td>
															<span class="telerik_bx inp_btn">
																<span id="_employeeno_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="e_code" name="e_code" size="20" readonly="readonly" maxlength="5" type="text">
																</span>
															</span>
														</td>
														<th>사원명(*)</th>
														<td>
															<span class="telerik_bx">
																<span id="_employeename_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="e_name" name="e_name" size="20" maxlength="200" type="text">
																</span>
															</span>
														</td>
													</tr>
													<tr>
				                                        <th>급여구분(*)</th>
				                                        <td>
				                                            <div class="select_wrap">
				                                            	<select style="width:258px;" id="sal_type" name="sal_type">
				                                            		<option value="고정급">고정급</option>
				                                            		<option value="변동급">변동급</option>
				                                            	</select>
				                                            </div>
			                                      		</td>
														<th>주민등록번호(*)</th>
														<td>
															<span class="telerik_bx inp_jumin">
																<span id="_socialno01_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="s_num" name="s_num_ar" class="s_num1" size="20" maxlength="20" type="text" style="width:80px;">
																	
																</span> -
																<span id="_socialno02_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input name="s_num_ar" class="s_num2" size="20" maxlength="20" type="text" style="width:80px;">
																</span>
															</span>
														</td>
													</tr>		
													<tr>
				                                        <th>결혼여부</th>
														<td>
															<div class="select_wrap">
				                                            	<select style="width:258px;" name="marry_status">
				                                            		<option vlaue="기혼">기혼</option>
				                                            		<option value="미혼">미혼</option>
				                                            	</select>
				                                            </div>
														</td>
														<th>최종학교</th>
														<td>
															<span class="telerik_bx">
																<span id="_schoolname_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="school_name" name="school_name" size="20" type="text">
																</span>
															</span>
														</td>
													</tr>
													<tr>
				                                        <th>전공</th>
														<td>
															<span class="telerik_bx">
																<span id="_major_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="major" name="major" size="20" type="text">
																</span>
															</span>
														</td>
														<th>전화번호</th>
														<td>
															<span class="telerik_bx">
																<span id="_phoneno_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="e_phone" name="e_phone" size="20" type="text" value="">
																</span>
															</span>
														</td>
													</tr>
													<tr>
				                                        <th>핸드폰</th>
														<td>
															<span class="telerik_bx">
																<span id="_cellphoneno_wrapper" class="riSingle RadInput" style="width:160px;">
																	<input id="e_cellphone" name="e_cellphone" size="20" type="text">
																</span>
															</span>
														</td>
														<th>이메일</th>
														<td>
															<span class="telerik_bx">
																<div class="RadAjaxPanel" id="_emailPanel" style="display: inline;">
																	<span id="_email_wrapper" class="riSingle RadInput" style="width:160px;">
																		<input id="e_email" name="e_email_ar" size="20" type="text" style="width:100px;">
																		@
																		<input name="e_email_ar" size="20" type="text" style="width:100px;">
																	</span>
																</div>
															</span>
														</td>
													</tr>
													<tr>
														<th>주소</th>
														<td colspan="3">
															<span class="telerik_bx telerik_post">
																<span class="post_tit">우편번호</span>
																<span class="post_num">
																	<span id="_zipcode_wrapper" class="riSingle RadInput" style="width:160px;">
																		<input id="e_post" name="e_post" readonly="readonly" size="20" type="text" style="width:160px !important;">
																		<!-- <button type="button" class="ruButton ruBrowse" style="cursor:pointer;line-height:30px;">찾기</button> -->
																		<div class="ic_search_wrap">
																			<a href="#" class="btn_check" onclick="daumPostCode()">찾기</a>
																		</div>
																	</span>
																</span>
																<span class="post_add">
																	<span id="_address_wrapper" class="riSingle RadInput" style="width:160px;">
																		<input id="e_addr" name="e_addr" size="20" type="text">
																	</span>
																</span>
															</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</fieldset>
									<!-- //fieldset1 -->
									
									<!-- fieldset2 -->
									<fieldset>
										<table class="brd_write2">
											<colgroup>
												<col width="10%">
												<col width="22%">
												<col width="13%">
												<col width="22%">
												<col width="11%">
												<col width="22%">
											</colgroup>
											<tbody>
												<tr>
													<th>입사일(*)</th>
													<td>
														<input type="text" name="hire_date" class="myDatePicker hire_date"/>
													</td>	
													
													<th>부서</th>
													<td>
														<span class="telerik_bx inp_btn">
															<div class="RadAjaxPanel" id="_departmentcodePanel" style="width: 131px; padding-right: 36px; display: inline;">
																<div id="_departmentcode" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7">
																	<div class="racTokenList">
																		<input type="text" class="racInput radPreventDecorate" name="dept_name" id="dept_name" autocomplete="off" readonly="readonly">
																		<input type="hidden" id="dept_code" name="dept_code" value=""/>
																	</div>
																</div>
															</div>
															
															<div class="ic_search_wrap">
																<a href="#deptSearchPop" id="deptFind" class="ic_search d_open">찾기</a>
															</div>
														</span>
													</td>
													
													<th>직급</th>
													<td>
														<span class="telerik_bx inp_btn">
															<div class="RadAjaxPanel" id="_positionPanel" style="width: 131px; padding-right: 36px; display: inline;">
																<div id="_position" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7">
																	<div class="racTokenList">
																		<input class="racInput radPreventDecorate" name="pos_name" type="text" id="pos_name" autocomplete="off" readonly="readonly">
																		<input type="hidden" id="pos_code" name="pos_code" value=""/>
																	</div>
																</div>
															</div>
											
															<div class="ic_search_wrap">
																<a href="#positionSearch" id="positionFind" class="ic_search d_open">찾기</a>
															</div>
														</span>
													</td>
												</tr>
												
												<tr>
													<th>직책</th>
													<td>
														<span class="telerik_bx inp_btn">
															<div class="RadAjaxPanel" id="_jobtitlePanel" style="width: 132px; padding-right: 36px; display: inline;">
																<div id="_jobtitle" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7">
																	<div class="racTokenList">
																		<input class="racInput radPreventDecorate" name="duty_name" type="text" id="duty_name" autocomplete="off" readonly="readonly">
																		<input type="hidden" id="duty_code" name="duty_code" value=""/>
																	</div>
																</div>
															</div>
												
															<div class="ic_search_wrap">
																<a href="#dutySearchPop" id="dutyFind" class="ic_search d_open">찾기</a>
															</div>
														</span>
													</td>
													<th>은행명(급여)</th>
													<td>
														<span class="telerik_bx">
															<span id="_bankname_wrapper" class="riSingle RadInput" style="width:160px;">
																<input id="bank_name" name="bank_name" size="20" type="text">
															</span>
														</span>
													</td>
													<th>계좌(급여)</th>
													<td>
														<span class="telerik_bx">
															<span id="_bankaccount_wrapper" class="riSingle RadInput" style="width:160px;">
																<input id="account" name="account" size="20" type="text">
															</span>
														</span>
													</td>
												</tr>
												<tr>
													<th>예금주</th>
													<td>
														<span class="telerik_bx">
															<span id="_depositname_wrapper" class="riSingle RadInput" style="width:160px;">
																<input id="acc_name" name="acc_name" size="20" type="text">
															</span>
														</span>
													</td>
													<th>퇴사일자</th>
													<td>
														<input type="text" name="resign_date" class="myDatePicker"/>
													</td>
													
													<th>퇴사사유</th>
													<td>
														<span class="telerik_bx">
															<span id="_resignreason_wrapper" class="riSingle RadInput" style="width:160px;">
																<input id="resign_reason" name="resign_reason" size="20" type="text">
															</span>
														</span>
													</td>
												</tr>
												
												<tr>
													<th>사진</th>
													<td colspan="5">
														<div id="_photofiles" class="RadUpload RadUpload_">
															<ul id="_photofilesListContainer" class="ruInputs">
																<li>
																	<span class="ruFileWrap ruStyled mr">
																		<input type="file" name="upload2" id="_photofilesfile0" size="23" class="ruFileInput" style="width:625px;left:0;" onchange="photoName(this)" >
																		<input type="text" class="ruFakeInput" id="photoFileText" size="22">
																		<input type="button" value="찾아보기" class="ruButton ruBrowse">
																	</span>
																	<input type="button" id="_photofilesclear0" value="삭제" class="ruButton ruClear" name="ClearInput">
																</li>
															</ul>
														</div>
													</td>
												</tr>
												
												<tr>
													<th>첨부파일</th>
													<td colspan="5">
														<span class="telerik_bx">
															<div id="_files" class="RadUpload RadUpload_">
																<ul id="_filesListContainer" class="ruInputs">
																	<li>
																		<span class="ruFileWrap ruStyled mr">
																			<input type="file" name="upload" id="upload1" size="23" class="ruFileInput" style="width:625px;left:0;" onchange="fileName(this)" >
																			<input type="text" class="ruFakeInput" id="fileNameText" size="22">
																			<input type="button" value="찾아보기" class="ruButton ruBrowse">
																		</span>
																		<input type="button" id="_filesclear0" value="삭제" class="ruButton ruClear" name="ClearInput">
																	</li>
																</ul>
															</div>
															<!-- <div id="FileAttacherToolTip" style="display:none;position:absolute;">
											    				<span id="RadToolTip99">* docx,xlsx,pdf,pptx,hwp,xls만 등록이 가능합니다.<br>* 5MB 이하의 파일만 첨부 가능합니다.<br>* 파일명에 ~`!@#$%^&amp;*=+\|;:'&lt;,&gt;/? 는 들어갈 수 없습니다.</span>
																<input id="FileAttacherToolTip_ClientState" name="FileAttacherToolTip_ClientState" type="hidden" autocomplete="off">
															</div> -->
														</span>
													</td>
												</tr>
												<!-- <tr>
													<th>비고</th>
													<td colspan="5">
														<span class="telerik_bx">
															<span id="_memo_wrapper" class="riSingle RadInput" style="width:160px;">
																<textarea id="_memo" name="_memo" rows="2" cols="20" style="height:50px;" maxlength="300"></textarea>
																<input id="_memo_ClientState" name="_memo_ClientState" type="hidden" autocomplete="off" value="">
															</span>
														</span>
													</td>
												</tr> -->
											</tbody>
										</table>
									</fieldset>
									<!-- fieldset2 -->
								</form>
								
								
								<div class="btn_area">
									<button type="button" class="btn_style small" onclick="empUpdateMody()">수정</button>
									<button type="button" class="btn_style small d_close">닫기</button>
								</div>
							</div>
							<!-- //pop_contents -->
						</div>
					</div>
					<!-- //empUpdatePop -->
					
					
				</div>		
				<!-- //contents_bdy -->
			</div>    
			<!-- //content -->		
		</div>
	</div>
	<!-- //wrap -->
	
	<script type="text/javascript">
		$(function(){

			$('.myDatePicker').val($.datepicker.formatDate('yy-mm-dd', new Date()));


			$("#btn_draft_search").click(function(){
				
				
				document.searchDraftFrm.submit();
				
			});
		});

		//사원 선택삭제
		function selectDel(){
			if($("#emp_table_wrap input:checkbox").is(":checked") == false){
				alert("선택된 값이 없습니다.")
				return;
			}
			
			document.selectDelFrm.submit();
		}
		
	</script>
</body>
</html>