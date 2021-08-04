<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main>
	<section>
		<form action="/videoInsert" enctype="multipart/form-data" method="post">
		    <input type="file" name="file1"><p>
		    <input type="file" name="file2"><p>
		    <input type="submit" value="파일업로드">
		</form>
	</section>
</main>