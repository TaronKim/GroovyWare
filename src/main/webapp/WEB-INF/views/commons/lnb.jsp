<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<div id="snbWrap" style="height: 896px;">
				<!--레프트 메뉴-->
				<ul id="snb">
                	<li class="">
						<span>전자결재</span>
						<ul style="display: none;">
							<li>
								<span>기안함</span>
                                   <ul style="display: block;">
                                       <li class="on"><a href="/Groupware/Approval/DocumentList.aspx?topmenu=1&amp;submenu=1&amp;current=1">기안 상신함</a></li>
                                       <li><a href="/Groupware/Approval/DocumentNoComplete.aspx?topmenu=1&amp;submenu=1&amp;current=2">임시 보관함</a></li>
                                       <li><a href="/Groupware/Approval/DocumentComplete.aspx?topmenu=1&amp;submenu=1&amp;current=3">기안 완료함</a></li>
                                   </ul>
							</li>
							<li>
								<span>결재함</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Approval/DocumentNoApproval.aspx?topmenu=1&amp;submenu=2&amp;current=1">미결함</a></li>
                                       <li><a href="/Groupware/Approval/DocumentApproval.aspx?topmenu=1&amp;submenu=2&amp;current=2">기결함</a></li>
                                       <li><a href="/Groupware/Approval/DocumentReturn.aspx?topmenu=1&amp;submenu=2&amp;current=3">반려함</a></li>
                                   </ul>
							</li>
							<li><span><a href="/Groupware/Approval/DocumentReceived.aspx?topmenu=1&amp;submenu=3&amp;current=1">수신함</a></span></li>
						</ul>
					</li>
					<li>
						<span>게시판</span>
						<ul style="display: none;">
							<li><span><a href="/Groupware/Board/NoticeBoardList.aspx?topmenu=2&amp;submenu=1">공지사항</a></span></li>
							<li><span><a href="/Groupware/Board/FreeBoardList.aspx?topmenu=2&amp;submenu=2">자유게시판</a></span></li>              
						</ul>
					</li>
					<li>
						<span>일정관리</span>
							<ul style="display: none;">
								<li><span><a href="/Groupware/Scheduler/SchedulerManagement.aspx?topmenu=3&amp;submenu=1&amp;current=1">일정관리</a></span></li>                                    
							</ul>
					</li>
					<li>
						<span>총무지원</span>
						<ul style="display: none;">
							<li>
								<span>내규/서식관리</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Affair/GRegulationList.aspx?topmenu=4&amp;submenu=1&amp;current=1">회사내규 관리</a></li>
                                       <li><a href="/Groupware/Affair/GFormTemplateList.aspx?topmenu=4&amp;submenu=1&amp;current=2">서식관리</a></li>
                                   </ul>
                               </li>
                              	<li>
								<span><a href="/Groupware/Affair/GRentAssetList.aspx?topmenu=4&amp;submenu=2&amp;current=1">자산 임차 관리</a></span>
							</li>
							<li>
								<span>자산 사용 대장</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Affair/GFixedAssetList.aspx?topmenu=4&amp;submenu=3&amp;current=1">관리자산 등록</a></li>
                                       <li><a href="/Groupware/Affair/GFixedAssetUsageList.aspx?topmenu=4&amp;submenu=3&amp;current=2">사용 내역 등록</a></li>
                                       <li><a href="/Groupware/Affair/GViewFixedAssetUsage.aspx?topmenu=4&amp;submenu=3&amp;current=3">사용 내역 조회</a></li>
                                   </ul>
                               </li>
							<li>
								<span><a href="/Groupware/Affair/VehicleList.aspx?topmenu=4&amp;submenu=4">차량 등록 관리</a></span>
							</li>
                               <li>
                                   <span>차량 운행 관리</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Affair/VehicleArrangeList.aspx?topmenu=4&amp;submenu=5&amp;current=1">차량배차 신청</a></li>
                                       <li><a href="/Groupware/Affair/VehicleArrangeConfirm.aspx?topmenu=4&amp;submenu=5&amp;current=2">차량배차 승인</a></li>
                                       <li><a href="/Groupware/Affair/VehicleOperationList.aspx?topmenu=4&amp;submenu=5&amp;current=3">차량운영일지 관리</a></li>
                                       <li><a href="/Groupware/Affair/VehicleCostList.aspx?topmenu=4&amp;submenu=5&amp;current=4">차량유지비 지출</a></li>
                                       <li><a href="/Groupware/Affair/VehicleCostView.aspx?topmenu=4&amp;submenu=5&amp;current=5">차량유지비 조회</a></li>
                                   </ul>
                               </li>
                               <li>
                                   <span>출장관리</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Affair/BusinessTripList.aspx?topmenu=4&amp;submenu=6&amp;current=1">출장비 신청</a></li>
                                       <li><a href="/Groupware/Affair/BusinessTripSettleList.aspx?topmenu=4&amp;submenu=6&amp;current=2">출장비 정산</a></li>
                                   </ul>
                               </li>
                               <li>
                                   <span>구매신청 업무</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Affair/CondolenceList.aspx?topmenu=4&amp;submenu=7&amp;current=1">경조소모품</a></li>
                                       <li><a href="/Groupware/Affair/BusinessCardList.aspx?topmenu=4&amp;submenu=7&amp;current=2">명함</a></li>
                                       <li><a href="/Groupware/Affair/ServiceUniformList.aspx?topmenu=4&amp;submenu=7&amp;current=3">근무복</a></li>
                                       <li><a href="/Groupware/Affair/CompanyIDCardList.aspx?topmenu=4&amp;submenu=7&amp;current=4">사원증</a></li>
                                       <li><a href="/Groupware/Affair/IDSupplyList.aspx?topmenu=4&amp;submenu=7&amp;current=5">인쇄/전산소모품</a></li>
                                       <li><a href="/Groupware/Affair/OfficeSupplyList.aspx?topmenu=4&amp;submenu=7&amp;current=6">사무용품/비품</a></li>
                                       <li><a href="/Groupware/Affair/SubscriptionList.aspx?topmenu=4&amp;submenu=7&amp;current=7">신문/정기간행/도서</a></li>
                                   </ul>
                               </li>
                               <li>
                                   <span>구매승인 업무</span>
                                   <ul style="display: none;">
                                       <li><a href="/Groupware/Affair/CondolenceConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=1">경조소모품</a></li>
                                       <li><a href="/Groupware/Affair/BusinessCardConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=2">명함</a></li>
                                       <li><a href="/Groupware/Affair/ServiceUniformConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=3">근무복</a></li>
                                       <li><a href="/Groupware/Affair/CompanyIDCardConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=4">사원증</a></li>
                                       <li><a href="/Groupware/Affair/ITSupplyConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=5">인쇄/전산소모품</a></li>
                                       <li><a href="/Groupware/Affair/OfficeSupplyConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=6">사무용품/비품</a></li>
                                       <li><a href="/Groupware/Affair/SubscriptionConfirm.aspx?topmenu=4&amp;submenu=8&amp;current=7">신문/정기간행/도서</a></li>
                                   </ul>
                               </li>
						</ul>
					</li>
					<li>
	                    <span>인사지원</span>
	                    <ul style="display: none;">
	                        <li><span><a href="/Groupware/Resource/SalaryView.aspx?topmenu=5&amp;submenu=1&amp;current=1">급여명세 조회</a></span></li>                                    
	                        <li><span><a href="/Groupware/Resource/VacationView.aspx?topmenu=5&amp;submenu=2&amp;current=1">년월차/휴가 조회</a></span></li>
	                        <li>
	                            <span>출·퇴근 기록</span>
	                            <ul style="display: none;">
	                                <li><a href="/Groupware/TimeRecord/TimeEmployeeRecord.aspx?topmenu=5&amp;submenu=3&amp;current=1">개인별 출·퇴근 기록</a></li>
	                                <li><a href="/Groupware/TimeRecord/TimeDepartmentRecord.aspx?topmenu=5&amp;submenu=3&amp;current=2">부서 출·퇴근 조회</a></li>
	                            </ul>
	                        </li>     
	                        <li>
	                            <span>신청 업무</span>
	                            <ul style="display: none;">
	                                <li><a href="/Groupware/Resource/VacationRequestList.aspx?topmenu=5&amp;submenu=4&amp;current=1">휴가/경조사</a></li>
	                                <li><a href="/Groupware/Resource/BenefitRequestList.aspx?topmenu=5&amp;submenu=4&amp;current=2">복리후생</a></li>
	                                <li><a href="/Groupware/Resource/CertificateRequestList.aspx?topmenu=5&amp;submenu=4&amp;current=3">증명서</a></li>
	                            </ul>
	                        </li>
	                        <li>
	                            <span>승인 업무</span>
	                            <ul style="display: none;">
	                                <li><a href="/Groupware/Resource/VacationConfirm.aspx?topmenu=5&amp;submenu=5&amp;current=1">휴가/경조사</a></li>
	                                <li><a href="/Groupware/Resource/BenefitConfirm.aspx?topmenu=5&amp;submenu=5&amp;current=2">복리후생</a></li>
	                                <li><a href="/Groupware/Resource/CertificateConfirm.aspx?topmenu=5&amp;submenu=5&amp;current=3">증명서</a></li>
	                                <li><a href="/Groupware/Resource/ViewBenefitUsage.aspx?topmenu=5&amp;submenu=5&amp;current=4">복리후생비 사용 조회</a></li>
	                            </ul>
	                        </li>
	                        <li>
	                            <span>출·퇴근 관리</span>
	                            <ul style="display: none;">
	                                <li><a href="/Groupware/TimeRecord/TimeRecordSetupList.aspx?topmenu=5&amp;submenu=6&amp;current=1">개인별 출·퇴근 설정</a></li>
	                                <li><a href="/Groupware/TimeRecord/TimeRecordView.aspx?topmenu=5&amp;submenu=6&amp;current=2">출·퇴근 현황</a></li>
	                                <li><a href="/Groupware/TimeRecord/TimeDelayView.aspx?topmenu=5&amp;submenu=6&amp;current=3">지각 현황</a></li>
	                            </ul>
	                        </li>
	                    </ul>
					</li>
                    <li>
                        <span>환경설정</span>
                        <ul style="display: none;">
                            <li><span><a href="/Groupware/Configuration/UserAccessList.aspx?topmenu=6&amp;submenu=1">권한설정</a></span></li>      
                        </ul>
                    </li>
				</ul>
				<!--//레프트 메뉴-->
			</div>