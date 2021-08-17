<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
function move(artist){
	location.href='/detail?artist='+artist;
}
</script>
<main>

	<h1 class="menutitle">ARTIST</h1>

	<div class="artistList">
		<div class="artistImg"
			style="background: url(/img/ArtistImg/iu/IU.jpg) no-repeat;"
			onclick="move('iu')">
			<div class="text">
				<p>IU</p>
			</div>

		</div>

		<div class="artistImg"
			style="background: url(/img/ArtistImg/sohee/sohee.png) no-repeat;"
			onclick="move('sohee')">
			<div class="text">
				<p>SOHEE HAN</p>
			</div>
		</div>

		<div class="artistImg"
			style="background: url(/img/ArtistImg/junghan.jpg) no-repeat;"
			onclick="move('junghan')">
			<div class="text">
				<p>JUNGHAN</p>
			</div>
		</div>
		<div class="artistImg"
			style="background: url(/img/ArtistImg/blackpink.jpg) no-repeat;">
			<div class="text">
				<p>BLACKPINK</p>
			</div>

		</div>

		<div class="artistImg"
			style="background: url(/img/ArtistImg/blackpink.jpg) no-repeat;">
			<div class="text">
				<p>BLACKPINK</p>
			</div>
		</div>

		<div class="artistImg"
			style="background: url(/img/ArtistImg/vernon.png) no-repeat;">
			<div class="text">
				<p>BLACKPINK</p>
			</div>
		</div>
	</div>
</main>