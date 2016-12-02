
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="../../inc/top.jsp"%>
<div class="content">
<div class="page_name">권한-메뉴 등록</div>
<!-- commandName 는 폼에 적용할 모델의 이름을 정의한다.    -->
<input type="hidden" id="auth_seq" value="${auth_seq}">
<table class="input_form">
<tbody>
	<tr>
		<td>
			<div>
				<select id="listMenu" multiple="multiple" size="10">
				<c:forEach var="item" items="${auth_menu_list}">
					<option value="${item.MENU_SEQ }">${item.MENU_LOCATION }</option>
				</c:forEach>
				</select>
			</div>		
		</td>
		<td>
			<div><input type="button" id="add" value=">>"><br><input id="remove" type="button" value="<<"></div>
		</td>
		<td>
			<div>
				<select id="objectMenu" multiple="multiple" size="10">
				<c:forEach var="item" items="${auth_object_menu}">
					<option value="${item.MENU_SEQ }">${item.MENU_NM }</option>
				</c:forEach>
				</select>
			</div>		
		</td>
	</tr>
</tbody>
<tfoot>
	<tr>
		<td colspan="3"><div><input type="button" id="saveAuthMenu" value="저장"> <input class="close" type="button" value="취소"></div></td>
	</tr>
</tfoot>
</table>
</div>
<script src="${jsPath}/routine/admin/auth/add_menu.js?ver=1.5"></script>

<%@ include file="../../inc/footer.jsp"%>
