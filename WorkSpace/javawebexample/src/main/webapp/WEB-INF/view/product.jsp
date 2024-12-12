<%@ page import="javaweb.model.dto.UserDto"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %> <!-- 核心庫 -->
<%@ taglib uri="jakarta.tags.fmt" prefix="f" %> <!-- 格式化庫 -->
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
		<link rel="stylesheet" href="/javaweb/css/buttons.css">
	</head>
	<body>
		<!-- menu bar include -->
		<%@ include file="/WEB-INF/view/menu.jspf" %>
		
		<!-- body content -->
		<div style="padding: 15px">
			<form class="pure-form" method="post" action="/javaweb/user/add">
				<fieldset>
					<legend>ntpu hmc</legend>
					for demo 	  
				</fieldset>
			</form>
			<p />
			<div class="pure-form">
				<fieldset>
					<legend>HMC CLOUD</legend>
					<table class="pure-table pure-table-bordered">
						<thead>
							<tr>
								<th>社辦</th><th>可約時間</th><th>租金負擔</th><th>人數</th>
							</tr>
						</thead>
						<c:forEach var="productDto" items="${ productDtos }">
							<tr>
								<td align="center">${ productDto.productId }</td>
								<td>${ productDto.productName}</td>
								<td align="right">
									<f:formatNumber value="${ productDto.price }"  maxFractionDigits="0" />
								</td>
								<td align="right">
									<f:formatNumber value="${ productDto.stockQuantity }" />
								</td>
							</tr>
						</c:forEach>
					</table>
				</fieldset>
			</div>
		</div>
	</body>
</html>