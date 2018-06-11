<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!--headerWrap-->
	<div id="headerWrap">
		<!--header-->
		<div id="header">
			<div class="logoarea">
				<h1 class="logo"><a href="#">GroovyWare</a></h1>                          
				<h1 id="_erp" class="tab1 tab_style">
					<a href="#">탭메뉴</a>
				</h1>
				<h1 id="_groupware" class="tab2 tab_style on">
					<a href="#">그룹웨어</a>
				</h1>
				<h1 id="_crm" class="tab3 tab_style">
					<a href="#">탭메뉴</a>
				</h1>
			</div>
			<div id="gnb">
				<dl class="infor">
					<dt>회사 명</dt>
					<dd><span class="infor_ic"><img id="_logophoto" src="resources/images/ic_company.png" height="24" width="24" /></span><a href="#" id="_companyname">인크레파스</a></dd>
					<dt>사용자 명</dt>
					<dd><span class="infor_ic"><img id="_userphoto" src="resources/images/thumb_default.png" height="24" width="24" /></span><a href="#" id="_username">마이페이지</a></dd>
				</dl>
				<ul class="util">
					<li><a href="#"><img src="resources/images/ic_logout.png" width="24" height="24" alt="로그아웃" title="로그아웃" /></a></li>
					<li><a href="#?topmenu=6&submenu=1"><img src="resources/images/ic_setting.png" width="24" height="24" alt="환경설정" title="환경설정"/></a></li>					
				</ul>
			</div>
		</div>
	</div>
	<!--//headerWrap-->

		<!--navWrap-->
		<div id="navWrap">
			<ul id="nav" class="cate6">
				<li>
					<span>전자결재</span>
					<ul>
						<li>
							<span>기안함</span>
							<ul>
								<li><a href="/Groupware/Approval/DocumentList.aspx?topmenu=1&submenu=1&current=1">기안 상신함</a></li>
								<li><a href="/Groupware/Approval/DocumentNoComplete.aspx?topmenu=1&submenu=1&current=2">임시 보관함</a></li>
								<li><a href="/Groupware/Approval/DocumentComplete.aspx?topmenu=1&submenu=1&current=3">기안 완료함</a></li>
							</ul>
						</li>
						<li>
							<span>결재함</span>
							<ul>
								<li><a href="/Groupware/Approval/DocumentNoApproval.aspx?topmenu=1&submenu=2&current=1">미결함</a></li>
								<li><a href="/Groupware/Approval/DocumentApproval.aspx?topmenu=1&submenu=2&current=2">기결함</a></li>
								<li><a href="/Groupware/Approval/DocumentReturn.aspx?topmenu=1&submenu=2&current=3">반려함</a></li>
							</ul>
						</li>
						<li><span><a href="/Groupware/Approval/DocumentReceived.aspx?topmenu=1&submenu=3&current=1">수신함</a></span></li>
					</ul>
				</li>
                <li>
                    <span>게시판</span>
                    <ul>
                        <li><span><a href="/Groupware/Board/NoticeBoardList.aspx?topmenu=2&submenu=1">공지사항</a></span></li>
                        <li><span><a href="/Groupware/Board/FreeBoardList.aspx?topmenu=2&submenu=2">부서게시판</a></span></li>                            
                    </ul>
                </li>
				<li>
					<span>일정관리</span>
					<ul>
						<li><span><a href="/Groupware/Scheduler/SchedulerManagement.aspx?topmenu=3&submenu=1&current=1">일정관리</a></span></li>                                    
					</ul>
				</li>
				<li>
					<span>인사관리</span>
					<ul>
						<li>
							<span>기초정보</span>
							<ul>
								<li><a href="javascript:location.href='position_regist.gvy'">직급 등록</a></li>
								<li><a href="javascript:location.href='duty_regist.gvy'">직책 등록</a></li>
							</ul>
						</li>
						<li>
							<span>사원정보</span>
							<ul>
								<li><a href="javascript:location.href='emp_regist.gvy'">사원 등록</a></li>
							</ul>
						</li>
						<li>
							<span>부서정보</span>
							<ul>
								<li><a href="javascript:location.href='dept_regist.gvy'">부서 등록</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li>
					<span>통근관리</span>
                    <ul>                                   
                        <li>
                            <span>출·퇴근 기록</span>
                            <ul>
                                <li><a href="/Groupware/TimeRecord/TimeEmployeeRecord.aspx?topmenu=5&submenu=3&current=1">개인별 출·퇴근 기록</a></li>
                            </ul>
                        </li>                                     
                        <li>
                            <span>출·퇴근 관리</span>
                            <ul>
                                <li><a href="/Groupware/TimeRecord/TimeRecordSetupList.aspx?topmenu=5&submenu=6&current=1">개인별 출·퇴근 설정</a></li>
                                <li><a href="/Groupware/TimeRecord/TimeRecordView.aspx?topmenu=5&submenu=6&current=2">출·퇴근 현황</a></li>
                                <li><a href="/Groupware/TimeRecord/TimeDelayView.aspx?topmenu=5&submenu=6&current=3">지각 현황</a></li>
                            </ul>
                        </li>
                    </ul>
				</li>
			</ul>
			<ul id="navSide">
				<li class="side1"><a href="/Groupware/Affair/GRegulationList.aspx">회사내규</a></li>
				<li class="side2"><a href="/Groupware/Affair/GFormTemplateList.aspx">서식모음</a></li>
			</ul>
		</div>
		<!--//navWrap-->