<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script>
function movie(src){
    document.getElementById("mainMV").src = src;
}
function func1(title,artist,date){
	document.getElementById("mv_tit").innerHTML = title;
	document.getElementById("mv_cont").innerHTML = artist+" | "+date;
}
</script>
<main>    
	<h1 class = "menutitle">VIDEO</h1>
	
    <section class = "mv">
        <div class = "mv_list">
            <iframe id="mainMV" class = "iu_celebrity" width="560" height="315" src="https://www.youtube.com/embed/0-q1KafFCLU" 
            autoplay=1&mute=1 title="YouTube video player" frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
            gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div id = "cele_cont">

            <h3 id = "mv_tit">CELEBRITY</h3>
            <small id = "mv_cont">IU | 2021.01.27</small>
        </div>
        <!--여기에 밑줄-->
        <div>
            <p class = "mvlist">M/V LIST</p>
            <%-- <table class = "mvtable" style="padding-right: -80px;">
                <tr>
		            <c:forEach var="video" items="${mvlist }">
					<td>
						<!-- img태그의 src 경로는 .matadata에서 가져오는거다 -->
						<img alt="${video.title }" src="/img/mvtitleImg/${video.imgFile }"
						onclick="movie('${video.url}'); func1('${video.title}','${video.artist}','${video.formatDate}');">
						<b><small>${video.title }</small></b><br>
                         <small>${video.artist } | ${video.formatDate }</small>
					</td>
					</c:forEach>
                </tr>
            </table> --%>
            
            
		            <c:forEach var="video" items="${mvlist }">
			
						<!-- img태그의 src 경로는 .matadata에서 가져오는거다 -->
						<img alt="${video.title }" src="/img/mvtitleImg/${video.imgFile }"
						onclick="movie('${video.url}'); func1('${video.title}','${video.artist}','${video.formatDate}');">
						<b><small>${video.title }</small></b><br>
                         <small>${video.artist } | ${video.formatDate }</small>
			
					</c:forEach>

            <button onclick="location.href='/videoAdd'">추가</button><button>수정</button><button>삭제</button>
    	</div>
    </section>
</main>