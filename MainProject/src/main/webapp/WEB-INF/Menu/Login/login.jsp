<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main>
	<h1 class="menutitle">LOGIN</h1>
	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
	<div class="loginform">
		<form action="/logindo">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="email" id="email" placeholder="ID"
						style="padding: 5px;"></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="password" name="password" id="password"
						placeholder="PASSWORD" style="padding: 5px;"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="ok" value="LOGIN"></td>
				</tr>
				<tr>
					<td class="kor" colspan="2"><a href="/signup">signUp</a>find <a href="/find">ID</a>/<a
						href="/find">PASSWORD</a><a href="/logout">logout</a></td>
				</tr>
			</table>
		</form>
	</div>
</main>