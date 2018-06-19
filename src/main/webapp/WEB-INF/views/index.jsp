<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>GroovyWare - </title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<link rel="stylesheet" type="text/css" href="resources/common/css/FormDecorator.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/import.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/layout2.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/board.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/layout.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/reset.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/common.css">
	<link rel="stylesheet" type="text/css" href="resources/common/css/jquery-ui.css">
	<script src="resources/common/js/jquery-1.9.1.min.js"></script>
	<script src="resources/common/js/common.js"></script>
	<script src="resources/common/js/jquery-3.3.1.min.js"></script>
	<script src="resources/common/js/jquery-ui.min.js"></script>
</head>
<body>
	<!-- wrap -->
    <div id="wrap">
	<%@ include file="commons/header.jsp" %>
		<div id="container">
		<!--Contents-->
			<div id="contents">
			<div id="ctl00_RadSplitter1" class="telerik_rad_splitter" style="height: 400px; width: 1280px;">
			<table id="RAD_SPLITTER_ctl00_RadSplitter1" class="RadSplitter RadSplitter_Telerik" style="width:1px;height:1px;border-left-width:1px;border-top-width:1px;">
			<tbody>
			<tr>
			<td id="ctl00_RadPane2" class="rspPane rspFirstItem rspLastItem" style="border-right-width:1px;border-bottom-width:1px;">
			<div id="RAD_SPLITTER_PANE_CONTENT_ctl00_RadPane2" style="width: 1278px; height: 398px; overflow: auto;">       
		
		    <!-- mainWrap -->
		    <div id="mainWrap">
		        <div class="main_top">
		            <div class="main_top_docing">
		                <div class="main_top_docing_tit">
		                    <div class="txt">
		                        <img src="resources/images/main_dot_img1.gif" alt="">
		                      		  진행문서
		                    </div>
		                    <div class="more">
		                        <a href="/Groupware/Approval/DocumentNoApproval.aspx">
		                       <img src="resources/images/main_dot_more.gif" alt="more">
		                       </a>
		                    </div>
		                </div>
		                <div class="main_top_docing_box">
		                    <table>
		                        <tbody><tr>
		                            <th>
		                             <img src="/Groupware/images/common/main_dot_title1.gif" alt="">
		                           		     미결함
		                            </th>
		                            <td>
		                                <span id="ContentPlaceHolder1__approvalcount">0 <span style="color:#4c4c4c;">건</span>
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <th>
		                                <img src="/Groupware/images/common/main_dot_title1.gif" alt="">
		                               		 기안상신함
		                            </th>
		                            <td>
		                                <span id="ContentPlaceHolder1__documentcount">13 <span style="color:#4c4c4c;">건</span>
		                                </span>
		                            </td>
		                        </tr>
		                    </tbody>
		                    </table>
		                </div>
		            </div>         
		        </div>
		        
				<div class="main_body">
					<div class="main_left">
					<div class="main_body_left_tit">
					<div class="txt">
					<img src="resources/images/main_dot_img1.gif" alt="">
					 일정
					</div>
					<div class="more">
					<a href="/Groupware/Scheduler/SchedulerManagement.aspx">
					<img src="resources/images/main_dot_more.gif" alt="more"></a>
					</div>
					</div>
					<div class="main_body_left_calendar">
					<div id="ctl00_ContentPlaceHolder1_RadCalendar1" class="RadCalendar RadCalendar_Metro" style=" width: 208px; height: 176px;">
					<div class="rcTitlebar">
					</div>
					<div class="rcMain">	
					</div>	
					</div>
					</div>
					<div class="main_body_left_schdule" style=" height: 259px;">
					<div id="ctl00_ContentPlaceHolder1_RadTabStrip2" class="RadTabStrip RadTabStrip_ RadTabStripTop_ telerik_tab_pop" style="width:199px;">
					<div class="rtsLevel rtsLevel1">
					<ul class="rtsUL">
					<li class="rtsLI rtsFirst">
					<a class="rtsLink rtsSelected" href="#">
					<span class="rtsOut">
					<span class="rtsIn">
					<span class="rtsTxt">오늘일정</span>
					</span>
					</span>
					</a>
					</li>
					<li class="rtsLI rtsLast">
					<a class="rtsLink rtsAfter" href="#">
					<span class="rtsOut">
					<span class="rtsIn">
					<span class="rtsTxt">내일일정</span>
					</span>
					</span>
					</a>
					</li>
					</ul>
					</div>
					</div>                  
					</div>
				</div>
				
				<div class="main_right">
					<div class="main_right_sign">
	                   <div class="main_right_sign_title">
	                       <div class="layer">
	                           <div class="txt">
	                              <img src="resources/images/main_dot_img1.gif" alt="">
	                           		    전자결재
	                           </div>
	                       </div>
	                   </div>
	                   <div class="main_right_sign_more">
	                       <div class="layer">
	                           <span id="ctl00_ContentPlaceHolder1_btnMoveto" class="RadButton RadButton_ rbSkinnedButton more_btn" tabindex="0">
	                          <a href="/Groupware/Board/FreeBoardList.aspx">
							<img src="resources/images/main_dot_more.gif" alt="more">
							</a> 
	                           <input class="rbDecorated" type="submit" name="ctl00$ContentPlaceHolder1$btnMoveto" id="ctl00_ContentPlaceHolder1_btnMoveto_input" value="" tabindex="-1">
	                           </span>
	                       </div>
	                   </div>
	                  <div id="ctl00_ContentPlaceHolder1_RadTabStrip1" class="RadTabStrip RadTabStrip_ RadTabStripTop_ telerik_tab_pop">
						<div class="rtsLevel rtsLevel1">
							<ul class="rtsUL">
							<li class="rtsLI rtsFirst">
							<a class="rtsLink rtsSelected" href="#">
							<span class="rtsOut">
							<span class="rtsIn">
							<span class="rtsTxt">미결함</span>
							</span>
							</span>
							</a>
							</li>
							<li class="rtsLI">
							<a class="rtsLink rtsAfter" href="#">
							<span class="rtsOut">
							<span class="rtsIn">
							<span class="rtsTxt">기안 상신함</span>
							</span>
							</span>
							</a>
							</li>
							<li class="rtsLI rtsLast">
							<a class="rtsLink" href="#">
							<span class="rtsOut">
							<span class="rtsIn">
							<span class="rtsTxt">기안 완료함</span>
							</span>
							</span>
							</a>
							</li>
							</ul>
						</div>
					</div> 
					<div id="ctl00_ContentPlaceHolder1_RadGridApproval" class="RadGrid RadGrid_Telerik sign_board" tabindex="0">
					
					<div class="rgHeaderWrapper">
					<table class="rgMasterTable rgClipCells" id="ctl00_ContentPlaceHolder1_RadGridApproval_ctl00_Header" style="width:100%;table-layout:fixed;overflow:hidden;empty-cells:show;">
						<colgroup>
						<col style="width:20%">
						<col style="width:15%">
						<col style="width:15%">
						<col style="width:50%">
						</colgroup>
						<thead>
						<tr>
						<th scope="col" class="rgHeader" style="white-space:nowrap;">문서종류</th>
						<th scope="col" class="rgHeader" style="white-space:nowrap;">신청일</th>
						<th scope="col" class="rgHeader" style="white-space:nowrap;">작성자</th>
						<th scope="col" class="rgHeader" style="white-space:nowrap;">제목</th>
						</tr>
						</thead>
						<tbody style="display:none;">
						<tr>
						<td colspan="4">
						</td>
						</tr>
						</tbody>
					</table>
					</div>
					<div id="ctl00_ContentPlaceHolder1_RadGridApproval_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:190px;">
					
					<table class="rgMasterTable rgClipCells" id="ctl00_ContentPlaceHolder1_RadGridApproval_ctl00" style="width: 968px; table-layout: fixed; overflow: hidden; empty-cells: show;">
					<colgroup>
					<col style="width:20%">
					<col style="width:15%">
					<col style="width:15%">
					<col style="width:50%">
					</colgroup>
					<thead style="display:none;">
					<tr>
					<th scope="col"></th>
					</tr>
					</thead>
					<tbody>
					<tr class="rgNoRecords">
					<td colspan="4" style="text-align:left;">
					<div>
					</div>
					</td>
					</tr>
					</tbody>
					</table>
					</div>
					
					</div>
				</div>
				
				<div class="main_right_board">
					<div class="main_board_notice">
					<div class="main_board_tit">
					<div class="txt">
					<img src="resources/images/main_dot_img1.gif" alt="">
					    공지사항
					</div>
					<div class="more">
					<a href="/Groupware/Board/NoticeBoardList.aspx">
					<img src="resources/images/main_dot_more.gif" alt="more"></a>
					</div>
					</div>
					<div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_RadGridNotePanel" style="display: inline;">
					<div id="ctl00_ContentPlaceHolder1_RadGridNote" class="RadGrid RadGrid_Telerik board_table" tabindex="0">
					<div id="ctl00_ContentPlaceHolder1_RadGridNote_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:145px;">
					<table class="rgMasterTable rgClipCells" id="ctl00_ContentPlaceHolder1_RadGridNote_ctl00" style="width: 100%; table-layout: fixed; overflow: hidden; empty-cells: show;">
					<colgroup>
					<col style="width: 488px;">
					</colgroup>
					<tbody>
					<tr class="rgRow" id="ctl00_ContentPlaceHolder1_RadGridNote_ctl00__0" style="white-space:nowrap;">
					<td class="col_lf">
					<a href="#" onclick="openRadWindow4('23'); return false;">
					공지사항
					</a>
					</td>
					</tr>
					</tbody>
					</table>
					</div>
					</div>
					</div>
					</div>
				
					<div class="main_board_brd">
					<div class="main_board_tit">
					<div class="txt">
					<img src="resources/images/main_dot_img1.gif" alt="">
					   자유게시판
					</div>
					<div class="more">
					<a href="/Groupware/Board/FreeBoardList.aspx">
					<img src="resources/images/main_dot_more.gif" alt="more"></a>
					</div>
					</div>
					<div class="RadAjaxPanel" id="ctl00_ContentPlaceHolder1_ctl00_ContentPlaceHolder1_RadGridBoardPanel" style="display: inline;">
					<div id="ctl00_ContentPlaceHolder1_RadGridBoard" class="RadGrid RadGrid_Telerik board_table" tabindex="0">
					<div class="rgHeaderWrapper">
					</div>
					<div id="ctl00_ContentPlaceHolder1_RadGridBoard_GridData" class="rgDataDiv" style="overflow-x:auto;overflow-y:auto;width:100%;height:145px;">
					<table class="rgMasterTable rgClipCells" id="ctl00_ContentPlaceHolder1_RadGridBoard_ctl00" style="width: 100%; table-layout: fixed; overflow: hidden; empty-cells: show;">
					<colgroup>
					<col style="width: 488px;">
					</colgroup>
					<thead style="display:none;">
					<tr>
					<th scope="col">
					</th>
					</tr>
					</thead>
					<!-- 자유게시판 tbody -->
					<tbody>
					<tr class="rgRow" id="ctl00_ContentPlaceHolder1_RadGridBoard_ctl00__0" style="white-space:nowrap;">
					<td class="col_lf">
					<a href="#" onclick="openRadWindow5('37'); return false;">
					111
					 </a>
					</td>
					</tr>
					</tbody>
					<!-- //자유게시판 tbody -->
					</table>
					</div>
					</div>
					</div>
					</div>
				</div>
			</div>
			</div>
			<!-- //일정 -->
			</div>
			<!--//mainWrap-->
			</div>
			</td>
			</tr>
			</tbody>
			</table>
			</div>			
			</div>
			<!--//Contents-->
		</div>
		<!--//Container-->
	</div>
	<!-- //wrap -->
</body>
</html>