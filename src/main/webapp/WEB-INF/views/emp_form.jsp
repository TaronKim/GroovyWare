<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GroovyWare - </title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/import.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/board.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/layout.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/reset.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/common.css">		
	<script src="<%=request.getContextPath() %>/common/js/jquery-3.3.1.min.js"></script>
	<script src="<%=request.getContextPath() %>/common/js/common.js"></script>
	
	<!-- jQuery UI -->
	<script src="<%=request.getContextPath() %>/common/js/jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/jquery-ui.css">
	
	<script src="<%=request.getContextPath() %>/common/js/jquery.timepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/common/css/jquery.timepicker.min.css">
	<!-- //jQuery UI -->
</head>
<body>
	<!-- wrap -->
    <div id="wrap">
		<%@ include file="header.jsp" %>
		<div id="container">
			<%@ include file="lnb.jsp" %>
			<!-- content -->
			<div id="contents">
				<!-- contents_bdy -->
				<div class="contents_bdy">
					<h2 class="tit_bdy1">사원 등록</h2>
					
					<!-- pop_wrap -->	
					<div class="pop_wrap">
						<!-- pop_contents -->
						<div class="pop_contents">
							<!-- fieldset1 -->
							<fieldset class="fld_mg30 bx_emp_infor">
								<div class="thm">
									<p><img id="_photo" src="" style="height:120px;width:120px;"></p>
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
															<input id="_employeeno" name="_employeeno" size="20" maxlength="5" type="text" value="">
														</span>
														<div class="ic_search_wrap">
															<a href="#" class="btn_check">중복여부</a>
														</div>
													</span>
												</td>
												<th>사원명(*)</th>
												<td>
													<span class="telerik_bx">
														<span id="_employeename_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_employeename" name="_employeename" size="20" maxlength="200" type="text" value="">
															<input id="_employeename_ClientState" name="_employeename_ClientState" type="hidden" autocomplete="off" value="">
														</span>
														<span id="RequiredFieldValidator4" style="display:none;"></span>
													</span>
												</td>
											</tr>
											<tr>
		                                        <th>급여구분(*)</th>
		                                        <td>
		                                            <span class="telerik_bx inp_btn">
														<div id="_paychecktype" class="RadComboBox RadComboBox_" style="width:100%;white-space:normal;">
															<table summary="combobox" style="border-width:0;border-collapse:collapse;width:100%" class="">
																<tbody>
																	<tr class="rcbReadOnly">
																		<td class="rcbInputCell rcbInputCellLeft" style="width:100%;">
																			<input name="_paychecktype" type="text" class="rcbInput radPreventDecorate rcbEmptyMessage" id="_paychecktype_Input" value="선택" readonly="readonly" autocomplete="off">
																		</td>
																		<td class="rcbArrowCell rcbArrowCellRight"><a id="_paychecktype_Arrow" style="overflow: hidden;display: block;position: relative;outline: none;">select</a></td>
																	</tr>
																</tbody>
															</table>
															<div class="rcbSlide" style="z-index:6000;">
																<div id="_paychecktype_DropDown" class="RadComboBoxDropDown RadComboBoxDropDown_ " style="display:none;">
																	<div class="rcbScroll rcbWidth" style="width:100%;">
																		<ul class="rcbList" style="list-style:none;margin:0;padding:0;zoom:1;">
																			<li class="rcbItem">고정급</li><li class="rcbItem">변동급</li>
																		</ul>
																	</div>
																</div>
															</div>
															<input id="_paychecktype_ClientState" name="_paychecktype_ClientState" type="hidden" autocomplete="off">
														</div>
														<span id="RequiredFieldValidator1" style="display:none;"></span>
													</span>
	                                      			</td>
												<th>주민등록번호(*)</th>
												<td>
													<span class="telerik_bx inp_jumin">
														<span id="_socialno01_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_socialno01" name="_socialno01" size="20" maxlength="20" type="text" value="">
															<input id="_socialno01_ClientState" name="_socialno01_ClientState" type="hidden" autocomplete="off" value="">
														</span> -
														<span id="_socialno02_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_socialno02" name="_socialno02" size="20" maxlength="20" type="text" value="">
															<input id="_socialno02_ClientState" name="_socialno02_ClientState" type="hidden" autocomplete="off" value="">
														</span>
		
														<span id="RequiredFieldValidator8" style="display:none;"></span>
														<span id="RequiredFieldValidator9" style="display:none;"></span>
													</span>
												</td>
											</tr>		
											<tr>
		                                        <th>결혼여부</th>
												<td>
													<span class="telerik_bx">
														<div id="_marriage" class="RadComboBox RadComboBox_" style="width:160px;white-space:normal;">
															<table summary="combobox" style="border-width:0;border-collapse:collapse;width:100%">
																<tbody>
																	<tr class="rcbReadOnly">
																		<td class="rcbInputCell rcbInputCellLeft" style="width:100%;">
																			<input name="_marriage" type="text" class="rcbInput radPreventDecorate" id="_marriage_Input" value="기혼" readonly="readonly" autocomplete="off">
																		</td>
																		<td class="rcbArrowCell rcbArrowCellRight"><a id="_marriage_Arrow" style="overflow: hidden;display: block;position: relative;outline: none;">select</a></td>
																	</tr>
																</tbody>
															</table>
															<div class="rcbSlide" style="z-index:6000;">
																<div id="_marriage_DropDown" class="RadComboBoxDropDown RadComboBoxDropDown_ " style="display:none;">
																	<div class="rcbScroll rcbWidth" style="width:100%;">
																		<ul class="rcbList" style="list-style:none;margin:0;padding:0;zoom:1;">
																			<li class="rcbItem">기혼</li>
																			<li class="rcbItem">미혼</li>
																		</ul>
																	</div>
																</div>
															</div>
															<input id="_marriage_ClientState" name="_marriage_ClientState" type="hidden" autocomplete="off">
														</div>
													</span>
												</td>
												<th>최종학교</th>
												<td>
													<span class="telerik_bx">
														<span id="_schoolname_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_schoolname" name="_schoolname" size="20" type="text" value="">
															<input id="_schoolname_ClientState" name="_schoolname_ClientState" type="hidden" autocomplete="off" value="">
														</span>
													</span>
												</td>
											</tr>
											<tr>
		                                        <th>전공</th>
												<td>
													<span class="telerik_bx">
														<span id="_major_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_major" name="_major" size="20" type="text" value="">
															<input id="_major_ClientState" name="_major_ClientState" type="hidden" autocomplete="off" value="">
														</span>
													</span>
												</td>
												<th>전화번호</th>
												<td>
													<span class="telerik_bx">
														<span id="_phoneno_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_phoneno" name="_phoneno" size="20" type="text" value="">
															<input id="_phoneno_ClientState" name="_phoneno_ClientState" type="hidden" autocomplete="off" value="">
														</span>
													</span>
												</td>
											</tr>
											<tr>
		                                        <th>핸드폰</th>
												<td>
													<span class="telerik_bx">
														<span id="_cellphoneno_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_cellphoneno" name="_cellphoneno" size="20" type="text" value="">
															<input id="_cellphoneno_ClientState" name="_cellphoneno_ClientState" type="hidden" autocomplete="off" value="">
														</span>
													</span>
												</td>
												<th>이메일</th>
												<td>
													<span class="telerik_bx">
														<div class="RadAjaxPanel" id="_emailPanel" style="display: inline;">
															<span id="_email_wrapper" class="riSingle RadInput" style="width:160px;">
																<input id="_email" name="_email" size="20" type="text" value="">
																<input id="_email_ClientState" name="_email_ClientState" type="hidden" autocomplete="off" value="">
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
																<input id="_zipcode" name="_zipcode" size="20" type="text" style="width:160px !important;">
																<button type="button" class="ruButton ruBrowse" style="cursor:pointer;line-height:30px;">찾기</button>
																<div class="ic_search_wrap">
																	<a href="#" class="btn_check">찾기</a>
																</div>
															</span>
														</span>
														<span class="post_add">
															<span id="_address_wrapper" class="riSingle RadInput" style="width:160px;">
																<input id="_address" name="_address" size="20" type="text" value="">
																<input id="_address_ClientState" name="_address_ClientState" type="hidden" autocomplete="off" value="">
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
												<input type="text" class="myDatePicker"/>
											</td>	
											
											<th>부서</th>
											<td>
												<span class="telerik_bx inp_btn">
													<div class="RadAjaxPanel" id="_departmentcodePanel" style="width: 131px; padding-right: 36px; display: inline;">
														<div id="_departmentcode" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7">
															<div class="racTokenList">
																<input class="racInput radPreventDecorate" name="_departmentcode" type="text" id="_departmentcode_Input" autocomplete="off" size="2">
																<span class="racLoadingIcon" style="display: none;"></span>
															</div>
															<input id="_departmentcode_ClientState" name="_departmentcode_ClientState" type="hidden" autocomplete="off">
														</div>
													</div>
													
													<div class="ic_search_wrap">
														<a href="#deptSearch" class="ic_search d_open">찾기</a>
													</div>
												</span>
											</td>
											
											<th>직급</th>
											<td>
												<span class="telerik_bx inp_btn">
													<div class="RadAjaxPanel" id="_positionPanel" style="width: 131px; padding-right: 36px; display: inline;">
														<div id="_position" class="RadAutoCompleteBox RadAutoCompleteBox_Windows7">
															<div class="racTokenList">
																<input class="racInput radPreventDecorate" name="_position" type="text" id="_position_Input" autocomplete="off" size="2">
																<span class="racLoadingIcon" style="display: none;"></span>
															</div>
															<input id="_position_ClientState" name="_position_ClientState" type="hidden" autocomplete="off">
														</div>
													</div>
									
													<div class="ic_search_wrap">
														<a href="#positionSearch" class="ic_search d_open">찾기</a>
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
																<input class="racInput radPreventDecorate" name="_jobtitle" type="text" id="_jobtitle_Input" autocomplete="off" size="2">
																<span class="racLoadingIcon" style="display: none;"></span>
															</div>
															<input id="_jobtitle_ClientState" name="_jobtitle_ClientState" type="hidden" autocomplete="off">
														</div>
													</div>
										
													<div class="ic_search_wrap">
														<a href="#dutySearch" class="ic_search d_open">찾기</a>
													</div>
												</span>
											</td>
											<th>은행명(급여)</th>
											<td>
												<span class="telerik_bx">
													<span id="_bankname_wrapper" class="riSingle RadInput" style="width:160px;">
														<input id="_bankname" name="_bankname" size="20" type="text" value="">
														<input id="_bankname_ClientState" name="_bankname_ClientState" type="hidden" autocomplete="off" value="">
													</span>
												</span>
											</td>
											<th>계좌(급여)</th>
											<td>
												<span class="telerik_bx">
													<span id="_bankaccount_wrapper" class="riSingle RadInput" style="width:160px;">
														<input id="_bankaccount" name="_bankaccount" size="20" type="text" value="">
														<input id="_bankaccount_ClientState" name="_bankaccount_ClientState" type="hidden" autocomplete="off" value="{&quot;enabled&quot;:true,&quot;emptyMessage&quot;:&quot;&quot;,&quot;validationText&quot;:&quot;&quot;,&quot;valueAsString&quot;:&quot;&quot;,&quot;lastSetTextBoxValue&quot;:&quot;&quot;}">
													</span>
												</span>
											</td>
										</tr>
										<tr>
											<th>예금주</th>
											<td>
												<span class="telerik_bx">
													<span id="_depositname_wrapper" class="riSingle RadInput" style="width:160px;">
														<input id="_depositname" name="_depositname" size="20" type="text" value="">
														<input id="_depositname_ClientState" name="_depositname_ClientState" type="hidden" autocomplete="off" value="">
													</span>
												</span>
											</td>
											<th>퇴사일자</th>
											<td>
												<input type="text" class="myDatePicker"/>
											</td>
											
											<th>퇴사사유</th>
											<td>
												<span class="telerik_bx">
													<span id="_resignreason_wrapper" class="riSingle RadInput" style="width:160px;">
														<input id="_resignreason" name="_resignreason" size="20" type="text" value="">
														<input id="_resignreason_ClientState" name="_resignreason_ClientState" type="hidden" autocomplete="off" value="">
													</span>
												</span>
											</td>
										</tr>
										
										<tr>
											<th>사진</th>
											<td colspan="5">
												<div id="_photofiles" class="RadUpload RadUpload_">
													<input id="_photofiles_ClientState" name="_photofiles_ClientState" type="hidden" autocomplete="off">
													<ul id="_photofilesListContainer" class="ruInputs">
														<li>
															<span class="ruFileWrap ruStyled">
																<input type="file" name="_photofilesfile0" id="_photofilesfile0" size="23" class="ruFileInput" style="width: 666px;">
																<label for="_photofilesfile0" style="display: none;">label</label>
																<input type="text" class="ruFakeInput" id="_photofilesTextBox0" size="22">
																<label for="_photofilesTextBox0" style="display: none;">label</label>
																<input type="button" value="찾아보기" class="ruButton ruBrowse">
															</span>
															<input type="button" id="_photofilesclear0" value="삭제" class="ruButton ruClear" name="ClearInput">
														</li>
													</ul>
												</div>
												<div id="RadToolTip1" style="display:none;position:absolute;">
								   					<span id="RadToolTip9">* jpeg,jpg,gif,png만 등록이 가능합니다.<br>* 5MB 이하의 파일만 첨부 가능합니다.<br>* 파일명에 ~`!@#$%^&amp;*=+\|;:'&lt;,&gt;/? 는 들어갈 수 없습니다.</span>
													<input id="RadToolTip1_ClientState" name="RadToolTip1_ClientState" type="hidden" autocomplete="off">
												</div>
											</td>
										</tr>
										
										<tr>
											<th>첨부파일</th>
											<td colspan="5">
												<span class="telerik_bx">
													<div id="_files" class="RadUpload RadUpload_">
														<input id="_files_ClientState" name="_files_ClientState" type="hidden" autocomplete="off">
														<ul id="_filesListContainer" class="ruInputs">
															<li>
																<span class="ruFileWrap ruStyled">
																	<input type="file" name="_filesfile0" id="_filesfile0" size="23" class="ruFileInput" style="width: 666px;">
																	<label for="_filesfile0" style="display: none;">label</label>
																	<input type="text" class="ruFakeInput" id="_filesTextBox0" size="22">
																	<label for="_filesTextBox0" style="display: none;">label</label>
																	<input type="button" value="찾아보기" class="ruButton ruBrowse">
																</span>
																<input type="button" id="_filesclear0" value="삭제" class="ruButton ruClear" name="ClearInput">
															</li>
														</ul>
													</div>
													<div id="FileAttacherToolTip" style="display:none;position:absolute;">
									    				<span id="RadToolTip99">* docx,xlsx,pdf,pptx,hwp,xls만 등록이 가능합니다.<br>* 5MB 이하의 파일만 첨부 가능합니다.<br>* 파일명에 ~`!@#$%^&amp;*=+\|;:'&lt;,&gt;/? 는 들어갈 수 없습니다.</span>
														<input id="FileAttacherToolTip_ClientState" name="FileAttacherToolTip_ClientState" type="hidden" autocomplete="off">
													</div>
												</span>
											</td>
										</tr>
										<tr>
											<th>비고</th>
											<td colspan="5">
												<span class="telerik_bx">
													<span id="_memo_wrapper" class="riSingle RadInput" style="width:160px;">
														<textarea id="_memo" name="_memo" rows="2" cols="20" style="height:50px;" maxlength="300"></textarea>
														<input id="_memo_ClientState" name="_memo_ClientState" type="hidden" autocomplete="off" value="">
													</span>
												</span>
											</td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<!-- fieldset2 -->
						</div>
						<!-- //pop_contents -->
						
						<!-- 등록버튼 -->
						<div class="btn_area">
							<button type="button" class="btn_style">등록</button>
						</div>
						<!-- //등록버튼 -->
						
					</div>
					<!-- //pop_wrap -->
					
					<!-- deptPop -->
					<div id="deptSearch" class="common_popup">
						<!-- pop_contents -->
						<div class="pop_contents">
							<!-- 상단검색 -->
							<div class="pop_search_box">
								<div class="search_brd">
									<table class="brd_write2">
										<colgroup>
											<col width="32%">
											<col width="68%">
										</colgroup>
										<tbody>
											<tr>
												<th><span id="_title">부서명</span></th>
												<td>
													<span class="telerik_bx">
														<span id="_searchword_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_searchword" name="_searchword" size="20" type="text" value="">
															<input id="_searchword_ClientState" name="_searchword_ClientState" type="hidden" autocomplete="off" value="">
														</span>
														<input type="hidden" name="_job" id="_job" value="TLE">
													</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="search_btn">
									<span id="btnSearch" class="RadButton RadButton_ rbSkinnedButton" tabindex="0">
										<input class="rbDecorated" type="submit" name="btnSearch" id="btnSearch_input" value="검색" tabindex="-1">
										<input id="btnSearch_ClientState" name="btnSearch_ClientState" type="hidden" autocomplete="off">
									</span>
								</div>
							</div>
							<!-- //상단검색 -->
					
							<!-- 내용 -->
							<div class="pop_atc">
								<div class="RadAjaxPanel" id="RadGridListPanel" style="display: inline;">
									<div id="RadGridList" class="RadGrid RadGrid_Telerik brd_list_sml" style="width:100%;" tabindex="0">

										<div class="rgHeaderWrapper">
											<div id="RadGridList_GridHeader" class="rgHeaderDiv" style="overflow:hidden;">

												<table class="rgMasterTable rgClipCells" id="RadGridList_ctl00_Header" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
													<colgroup>
														<col style="width:10%"/>
														<col style="width:25%"/>
														<col />
													</colgroup>
													<thead>
														<tr>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">&nbsp;</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;display:none;">코드</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">코드</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;display:none;">코드명</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">코드명</th>
														</tr>
													</thead>
												</table>
 											</div>
 										</div>
										<div id="RadGridList_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:217px;">
										
											<table class="rgMasterTable rgClipCells" id="RadGridList_ctl00" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
												<colgroup>
													<col style="width:10%"/>
													<col style="width:25%"/>
													<col />
												</colgroup>
												<tbody>
													<tr>
														<td class="check_area"><input type="checkbox" class="check"/></td>
														<td>t001</td>
														<td>asdasdasdsad</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>	
							</div>
							<!-- //내용 -->
							
							<div class="btn_area">
								<button type="button" class="btn_style small d_close">닫기</button>
							</div>
							
						</div>
						<!-- //pop_contents -->
					</div>
					<!-- //deptPop -->
					
					<!-- positionPop -->
					<div id="positionSearch" class="common_popup">
						<!-- pop_contents -->
						<div class="pop_contents">
							<!-- 상단검색 -->
							<div class="pop_search_box">
								<div class="search_brd">
									<table class="brd_write2">
										<colgroup>
											<col width="32%">
											<col width="68%">
										</colgroup>
										<tbody>
											<tr>
												<th><span id="_title">직급명</span></th>
												<td>
													<span class="telerik_bx">
														<span id="_searchword_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_searchword" name="_searchword" size="20" type="text" value="">
															<input id="_searchword_ClientState" name="_searchword_ClientState" type="hidden" autocomplete="off" value="">
														</span>
														<input type="hidden" name="_job" id="_job" value="TLE">
													</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="search_btn">
									<span id="btnSearch" class="RadButton RadButton_ rbSkinnedButton" tabindex="0">
										<input class="rbDecorated" type="submit" name="btnSearch" id="btnSearch_input" value="검색" tabindex="-1">
										<input id="btnSearch_ClientState" name="btnSearch_ClientState" type="hidden" autocomplete="off">
									</span>
								</div>
							</div>
							<!-- //상단검색 -->
					
							<!-- 내용 -->
							<div class="pop_atc">
								<div class="RadAjaxPanel" id="RadGridListPanel" style="display: inline;">
									<div id="RadGridList" class="RadGrid RadGrid_Telerik brd_list_sml" style="width:100%;" tabindex="0">

										<div class="rgHeaderWrapper">
											<div id="RadGridList_GridHeader" class="rgHeaderDiv" style="overflow:hidden;">

												<table class="rgMasterTable rgClipCells" id="RadGridList_ctl00_Header" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
													<colgroup>
														<col style="width:10%"/>
														<col style="width:25%"/>
														<col />
													</colgroup>
													<thead>
														<tr>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">&nbsp;</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;display:none;">코드</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">코드</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;display:none;">코드명</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">코드명</th>
														</tr>
													</thead>
												</table>
 											</div>
 										</div>
										<div id="RadGridList_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:217px;">
										
											<table class="rgMasterTable rgClipCells" id="RadGridList_ctl00" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
												<colgroup>
													<col style="width:10%"/>
													<col style="width:25%"/>
													<col />
												</colgroup>
												<tbody>
													<tr>
														<td class="check_area"><input type="checkbox" class="check"/></td>
														<td>t001</td>
														<td>asdasdasdsad</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>	
							</div>
							<!-- //내용 -->
							
							<div class="btn_area">
								<button type="button" class="btn_style small d_close">닫기</button>
							</div>
							
						</div>
						<!-- //pop_contents -->
					</div>
					<!-- //positionPop -->
					
					<!-- dutyPop -->
					<div id="dutySearch" class="common_popup">
						<!-- pop_contents -->
						<div class="pop_contents">
							<!-- 상단검색 -->
							<div class="pop_search_box">
								<div class="search_brd">
									<table class="brd_write2">
										<colgroup>
											<col width="32%">
											<col width="68%">
										</colgroup>
										<tbody>
											<tr>
												<th><span id="_title">직책명</span></th>
												<td>
													<span class="telerik_bx">
														<span id="_searchword_wrapper" class="riSingle RadInput" style="width:160px;">
															<input id="_searchword" name="_searchword" size="20" type="text" value="">
															<input id="_searchword_ClientState" name="_searchword_ClientState" type="hidden" autocomplete="off" value="">
														</span>
														<input type="hidden" name="_job" id="_job" value="TLE">
													</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="search_btn">
									<span id="btnSearch" class="RadButton RadButton_ rbSkinnedButton" tabindex="0">
										<input class="rbDecorated" type="submit" name="btnSearch" id="btnSearch_input" value="검색" tabindex="-1">
										<input id="btnSearch_ClientState" name="btnSearch_ClientState" type="hidden" autocomplete="off">
									</span>
								</div>
							</div>
							<!-- //상단검색 -->
					
							<!-- 내용 -->
							<div class="pop_atc">
								<div class="RadAjaxPanel" id="RadGridListPanel" style="display: inline;">
									<div id="RadGridList" class="RadGrid RadGrid_Telerik brd_list_sml" style="width:100%;" tabindex="0">

										<div class="rgHeaderWrapper">
											<div id="RadGridList_GridHeader" class="rgHeaderDiv" style="overflow:hidden;">

												<table class="rgMasterTable rgClipCells" id="RadGridList_ctl00_Header" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
													<colgroup>
														<col style="width:10%"/>
														<col style="width:25%"/>
														<col />
													</colgroup>
													<thead>
														<tr>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">&nbsp;</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;display:none;">코드</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">코드</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;display:none;">코드명</th>
															<th scope="col" class="rgHeader" style="white-space:nowrap;">코드명</th>
														</tr>
													</thead>
												</table>
 											</div>
 										</div>
										<div id="RadGridList_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:217px;">
										
											<table class="rgMasterTable rgClipCells" id="RadGridList_ctl00" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
												<colgroup>
													<col style="width:10%"/>
													<col style="width:25%"/>
													<col />
												</colgroup>
												<tbody>
													<tr>
														<td class="check_area"><input type="checkbox" class="check"/></td>
														<td>t001</td>
														<td>asdasdasdsad</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>	
							</div>
							<!-- //내용 -->
							
							<div class="btn_area">
								<button type="button" class="btn_style small d_close">닫기</button>
							</div>
							
						</div>
						<!-- //pop_contents -->
					</div>
					<!-- //dutyPop -->
					
					<!-- 중복여부 -->
					<div class="common_popup">
						
					</div>
					<!-- //중복여부 -->
					
				</div>
				<!-- //contents_bdy -->
			</div>    
			<!-- //content -->		
		</div>
	</div>
	<!-- //wrap -->
	
	<script type="text/javascript">
		
	</script>
</body>
</html>