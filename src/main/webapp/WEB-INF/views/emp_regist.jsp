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
	
</head>
<body>
	<!-- wrap -->
    <div id="wrap">
		<%@ include file="commons/header.jsp" %>
		<div id="container">
			<%@ include file="commons/lnb.jsp" %>
			<!-- content -->
			<div id="contents">
				<!-- contents_bdy -->
					<div class="contents_bdy">
					<h2 class="tit_bdy1">사원 등록</h2>
					
					<!-- 상단검색 -->
					<div class="search_box">
						<div class="search_brd src_ty1">
							<table class="brd_write2">
								<colgroup>
									<col width="25%">
									<col width="75%">
								</colgroup>
								<tbody>
									<tr>
										<th>사원명</th>
										<td>
											<span class="telerik_bx">
												<span id="ctl00_ContentPlaceHolder1__employeename_wrapper" class="riSingle RadInput" style="width:160px;"><input id="ctl00_ContentPlaceHolder1__employeename" name="ctl00$ContentPlaceHolder1$_employeename" size="20" type="text" value="" class=" "><input id="ctl00_ContentPlaceHolder1__employeename_ClientState" name="ctl00_ContentPlaceHolder1__employeename_ClientState" type="hidden" autocomplete="off" value="{&quot;enabled&quot;:true,&quot;emptyMessage&quot;:&quot;&quot;,&quot;validationText&quot;:&quot;&quot;,&quot;valueAsString&quot;:&quot;&quot;,&quot;lastSetTextBoxValue&quot;:&quot;&quot;}"></span>
											</span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="search_btn">
							<span id="ctl00_ContentPlaceHolder1_btnSearch" class="RadButton RadButton_ rbSkinnedButton btn_src" idx="0" tabindex="0">
								<input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnSearch" id="ctl00_ContentPlaceHolder1_btnSearch_input" value="검색" tabindex="-1">
								<input id="ctl00_ContentPlaceHolder1_btnSearch_ClientState" name="ctl00_ContentPlaceHolder1_btnSearch_ClientState" type="hidden" autocomplete="off">
							</span>
						</div>
					</div>
					<!-- //상단검색 -->
					
					<!-- 게시판 영역 -->
					<div>
						<div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_RadGridEmployeePanel" style="display: inline;">
							<div id="ctl00_ContentPlaceHolder1_RadGridEmployee" class="RadGrid RadGrid_Telerik brd_list2" style="width:100%;" tabindex="0">
								<div class="rgHeaderWrapper">
									<div id="ctl00_ContentPlaceHolder1_RadGridEmployee_GridHeader" class="rgHeaderDiv" style="overflow: hidden; margin-right: 16px;">
			
										<table class="rgMasterTable rgClipCells" id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00_Header" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
											<colgroup>
												<col style="width:3%">
												<col style="width:7%">
												<col style="width:7%">
												<col style="width:14%">
												<col style="width:10%">
												<col style="width:14%">
												<col style="width:10%">
												<col style="width:8%">
												<col style="width:27%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><input id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00_ctl04_chklineSelectCheckBox" class="input_check check_all" type="checkbox" name=""></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;">사번</th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'EmployeeName'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl00','')">성명</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'DepartmentName'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl01','')">부서</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'RankName'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl02','')">직급</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'SocialNo'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl03','')">주민등록번호</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'StartDate'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl04','')">입사일</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'Period'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl05','')">근속년수</a></th>
													<th scope="col" class="rgHeader" style="white-space:nowrap;"><a onclick="Telerik.Web.UI.Grid.Sort($find('ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00'), 'Memo'); return false;" title="Click here to sort" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$RadGridEmployee$ctl00$ctl02$ctl00$ctl06','')">비 고</a></th>
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
											<col style="width:3%">
											<col style="width:7%">
											<col style="width:7%">
											<col style="width:14%">
											<col style="width:10%">
											<col style="width:14%">
											<col style="width:10%">
											<col style="width:8%">
											<col style="width:27%">
										</colgroup>
										<thead style="display:none;">
											<tr>
												<th scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<!-- 사원등록 테이블 리스트 -->
											<tr class="rgRow" id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00__0" style="white-space:nowrap;">
												<td class="col_ct">
													<input id="ctl00_ContentPlaceHolder1_RadGridEmployee_ctl00_ctl04_chklineSelectCheckBox" class="input_check" type="checkbox" name="">
												</td>
												<td class="col_ct"><a href="#" onclick="">10101</a></td>
												<td class="col_ct">김정호</td>
												<td>웹개발팀</td>
												<td class="col_ct">사원</td>
												<td>123153151-1213151</td>
												<td class="col_ct">2018-05-01</td>
												<td class="col_rg">0.08</td><td>&nbsp;</td>
											</tr>
											<!-- 사원등록 테이블 리스트 -->
										</tbody>
									</table>
								</div>
							</div>
						</div>
		
						<div class="btn_btm">
							<ul class="btn_lft">
								<li></li>
								<li>
									<span id="ctl00_ContentPlaceHolder1_btnPrint" class="RadButton RadButton_ rbSkinnedButton btn_ty2" tabindex="0">
										<input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnPrint" id="ctl00_ContentPlaceHolder1_btnPrint_input" value="인쇄" tabindex="-1">
										<input id="ctl00_ContentPlaceHolder1_btnPrint_ClientState" name="ctl00_ContentPlaceHolder1_btnPrint_ClientState" type="hidden" autocomplete="off">
									</span>
								</li>
							</ul>
							<ul class="btn_rgt">
			                    <li>
			                    	<span id="ctl00_ContentPlaceHolder1_btnUploadExcel" class="RadButton RadButton_ rbSkinnedButton btn_ty2" tabindex="0">
			                    		<input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnUploadExcel" id="ctl00_ContentPlaceHolder1_btnUploadExcel_input" value="업로드" tabindex="-1">
			                    		<input id="ctl00_ContentPlaceHolder1_btnUploadExcel_ClientState" name="ctl00_ContentPlaceHolder1_btnUploadExcel_ClientState" type="hidden" autocomplete="off">
			                    	</span>
			                    </li>
								<li>
									<span id="ctl00_ContentPlaceHolder1_btnInsert" class="RadButton RadButton_ rbSkinnedButton btn_ty3" tabindex="0" rwopener="true">
										<input class="rbDecorated btn_pop" type="submit" name="ctl00$ContentPlaceHolder1$btnInsert" id="ctl00_ContentPlaceHolder1_btnInsert_input" value="신규등록" tabindex="-1">
										<input id="ctl00_ContentPlaceHolder1_btnInsert_ClientState" name="ctl00_ContentPlaceHolder1_btnInsert_ClientState" type="hidden" autocomplete="off">
									</span>
								</li>
							</ul>
						</div>
					</div>
					
					<div style="border:1px solid #d1cfc9; height:53px; background-color:#e0ded5;">		
						<div style="float:left; vertical-align:middle;padding-left:15px;">
							<div class="btn_btm1">
								<ul class="btn_lft" style="padding-top:10px">
									<li>
										<h2 class="tit_bdy2">총사원 : 
											<div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_TotalEmployeePanel" style="display: inline;">
												<span id="ContentPlaceHolder1_TotalEmployee" style="font-size:18px;">00</span>
											</div>명
										</h2>
									</li>							
								</ul>
							</div>
						</div>
					</div>
				</div>		
				<!-- //contents_bdy -->
			</div>    
			<!-- //content -->		
		</div>
	</div>
	<!-- //wrap -->
</body>
</html>