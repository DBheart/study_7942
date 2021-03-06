<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../inc/top.jsp"%>
<div class="content">
	<div class="search_form">
		<form id="searchForm" action="${contextPath}/admin/menu/menu_list">
			<input type="hidden" name="currPg" id="currPg" value="0"/>
			<input type="hidden" name="rowSize" id="rowSize" value="10"/>
			<input type="hidden" name="fnName" id="fnName" value="move"/>	
			<span>검색어 </span>  <input type="text" id="search" name="search" value="${search}">
			<button>검색</button><input type="button" id="menuInsert" value="등록">
		</form>
	</div>
	<div>
	<table class="list">
		<colgroup>
			<col width="5%;" />
			<col width="15%;" />
			<col width="25%;" />
			<col width="20%;" />
			<col width="20%;" />
			<col width="15%;" />
		</colgroup>
		<thead>
			<tr>
				<th></th>
				<th>메뉴명</th>
				<th>메뉴 URL</th>
				<th>부모메뉴명</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${list}" varStatus="idx">
			<tr>
				<td>${item.rn}</td>
				<td>${item.menu_nm}</td>
				<td>${item.menu_url}</td>
				<td>${item.parent_menu_nm}</td>
				<td><button onclick="menu_update('${item.menu_seq}')">수정</button><button onclick="menu_delete('${item.menu_seq}')">삭제</button></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="paging" style="text-align: center;">
		${navi}
	</div>
	
	</div>
</div>
<script src="${jsPath}/routine/admin/menu/menu_list.js"></script>
<%@ include file="../../inc/footer.jsp"%>