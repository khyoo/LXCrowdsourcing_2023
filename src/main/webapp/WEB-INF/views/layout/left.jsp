<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	<c:if test="${left ne 'eval'}">
		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboard">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">설문조사</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item active"><a class="nav-link" href="/dashboard">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider">
		
		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link btn_tutorial" href="/tutorial">
				<i class="fas fa-fw fa-chart-area"></i> <span>튜토리얼</span>
			</a></li>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link btn_newEval" href="/evaluation/g2">
		<!-- 
		<li class="nav-item"><a class="nav-link btn_newEval" href="#" onClick="javascript:showTutorialAlert();">
		 -->
				<i class="fas fa-fw fa-chart-area"></i> <span>새태스크 평가</span>
			</a></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link" href="/mypage">
				<i class="fas fa-fw fa-cog"></i> <span>마이페이지</span>
			</a></li>
	</c:if>

	<c:if test="${left eq 'eval'}">
		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center btn_root" href="#">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">설문조사</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item"><a class="nav-link btn_dash" href="#">
				<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link btn_tutorial" href="#">
				<i class="fas fa-fw fa-chart-area"></i> <span>튜토리얼</span>
			</a></li>
			
		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item active"><a class="nav-link btn_newEval" href="#">
				<i class="fas fa-fw fa-chart-area"></i> <span>새태스크 평가</span>
			</a></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link btn_mypage" href="#">
				<i class="fas fa-fw fa-cog"></i> <span>마이페이지</span>
			</a></li>
	</c:if>

	<c:if test="${workerInfo.level == 1}">
		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link" href="/admin/dashboard"> - <span>태스크 결과 목록</span>
		</a></li>

		<!-- Nav Item - Utilities Collapse Menu -->
		<li class="nav-item"><a class="nav-link" href="/admin/dashboard2"> - <span>전체 태스크 상태</span>
		</a></li>
		
		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link" href="/admin/userList"> - <span>워커 목록</span>
		</a></li>
	</c:if>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
<!-- End of Sidebar -->

<div class="modal fade" id="alertTutorial" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"> 알림 </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        튜토리얼을 먼저 수행해주세요!
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>        
      </div>
    </div>
  </div>
</div>

<script>

	function showTutorialAlert() {
		$('#alertTutorial').modal('show')
	}
</script>