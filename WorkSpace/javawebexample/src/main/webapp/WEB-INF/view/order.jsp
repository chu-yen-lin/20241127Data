<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %> <!-- 核心庫 -->
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>預約社辦</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
		<link rel="stylesheet" href="/javaweb/css/buttons.css">
	</head>
	<body>
		<!-- menu bar include -->
		<%@ include file="/WEB-INF/view/menu.jspf" %>
		
		<!-- body content -->
		<div style="padding: 15px">
			<form class="pure-form" method="post" action="/javaweb/order">
				<fieldset>
					<legend>點選預約</legend>
					<table class="pure-table">
						<thead>
							<tr>
								<th>時間</th><th>校區</th><th>樂團代表</th><th>預計曲目數</th><th>使用時數</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
									<input type="hidden" name="productId" value="1" >
								</td>
								<td>三峽</td>
								<td>
									副社長chu
									<input type="hidden" name="unitPrice" value="5" >
								</td>
								<td>5</td>
								<td><input type="number" name="amount" style="width: 100px" value="0" min="0" max="50"></td>
							</tr>
							<tr>
								<td>
									2
									<input type="hidden" name="productId" value="2" >
								</td>
								<td>民生</td>
								<td>
									社長chen
									<input type="hidden" name="unitPrice" value="8" >
								</td>
								<td>8</td>
								<td><input type="number" name="amount" style="width: 100px" value="0" min="0" max="100"></td>
							</tr>
							<tr>
								<td>
									3
									<input type="hidden" name="productId" value="3" >
								</td>
								<td>MusicBox</td>
								<td>
									3000
									<input type="hidden" name="unitPrice" value="3000" >
								</td>
								<td>200</td>
								<td><input type="number" name="amount" style="width: 100px" value="0" min="0" max="200"></td>
							</tr>
					
						</tbody>
					</table>
					<p>
					<button type="reset" class="button-warning pure-button">Reset</button>
					<button type="submit" class="button-success pure-button">Submit</button>	  
				</fieldset>
			</form>
		</div>
		<p />
		
	</body>
</html>