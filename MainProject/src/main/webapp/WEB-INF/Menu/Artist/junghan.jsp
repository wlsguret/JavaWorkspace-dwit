<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <style>
.svt_mv_readytolove, .svt_mv_homerun, .svt_mv_fear{
    float:left;
}
.mvmorebtn{
    margin-top: 50px;
    float:right;
}
</style>-->
<main>
	<jsp:include page="/WEB-INF/Menu/Artist/artist_topmenu.jsp" />
	<div>
		<img alt="" src="/img/ArtistImg/junghan/junghan_artist last.jpg"
			class="artistMainImg">
		<h1 class="artist_bigtitle">윤정한</h1>
	</div>
	<div class="artist_content">
		<table class="artist_table">
			<tbody>
				<tr>
					<td class="artist_font">Profile</td>
					<td class="artist_profile_list">
						<div class="artist_name">
							<b style="color: black;">윤정한(SEVENTEEN)</b> &nbsp;&nbsp;&nbsp; 
							<small>가수</small>
						</div>
						<div class="artist_birth">
							<small style="font-weight: bolder;">출생</small>
							<small style="font-weight: bold; color: black;">1995.10.04</small>
						</div>
						<div class="artist_sns">
							<small style="font-weight: bolder;">사이트</small>
							&nbsp;&nbsp;&nbsp; 
							<small	style="font-weight: bold; color: black;"> 
								<a href="https://www.instagram.com/jeonghaniyoo_n/"><i class="fab fa-instagram"></i></a>
                                <a href="https://twitter.com/pledis_17"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.youtube.com/user/pledis17"><i class="fab fa-youtube"></i></a>
							</small>
						</div>
					</td>
				</tr>
				<tr>
					<td class = "artist_font">Works</td>
					<td style="padding:0 60px;">
						<div class = "artist_works">
							<b style="color:black">2021</b>
						</div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_rdytolove.jpg" alt=""><br>
							Ready to Love<small>&nbsp;[SEVENTEEN 8TH mini Album]</small><br>
							<small style="font-weight: lighter;">2021.06.18</small><br>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_notalone.jpg" alt=""><br>
							Not Alone<br>
							<small style="font-weight: lighter;">2021.06.18</small><br>
						</div>
						<br>
						<div class = "artist_works"></div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td style = "padding: 0 60px;">
						<div class = "artist_works"><br>
							<b style="color:black">2020</b>
						</div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_homerun.jpg" alt=""><br>
							HOME;RUN  <small> [SEVENTEEN Special Album '; [Semicolon]']</small><br>
							<small style="font-weight: lighter;">2020.10.19</small>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_24h.jpg" alt=""><br>
							24H  <small> [J-POP]</small><br>
							<small style="font-weight: lighter;">2020.08.23</small>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_leftandright.jpg" alt=""><br>
							Left & Right <small>[SEVENTEEN 7th Mini Album '헹가래']</small><br>
							<small style="font-weight: lighter;">2020.06.22</small>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_fallin.jpg" alt=""><br>
							Maiochiruhanabira <small>[Fallin' Flower]</small> <br>
							<small style="font-weight: lighter;">2020.03.30</small>
						</div>
						<br><br><br>
						<div class = "artist_works">
							<b style="color:black">2019</b>
						</div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/junghan/svt_fear.jpg" alt=""><br>
							독 : Fear <small>[SEVENTEEN 3RD ALBUM 'An Ode']</small><br>
							<small style="font-weight: lighter;">2019.09.16</small>
						</div>
						<br><br><br>
						<div style="padding-left: 200px;">
							<button class = "artist_work_more">MORE &nbsp;&nbsp;<small style="font-size: 4px;">▼</small></button>
						</div>    
						</td>                                                                                                    
					</tr>
					<tr>
						<td colspan="2" class = "artist_font">M/V 
						<button class = "mvmorebtn">more</button>
						</td>	
					</tr>
					<tr>
						<td colspan="2" class="artist_mvlist">
							<div class="svt_mv_readytolove">
								<img src="/img/ArtistImg/junghan/svt_mv_rtlove.png" class = "lovesickgirls"
								onclick="movie('https://www.youtube.com/embed/yCvSR4lSqTg');func1(0);">
								<b><small>Ready To Love</small></b><br>
								<small>SEVENTEEN | 2021.06.18</small>
							</div>
								<div class="svt_mv_homerun">
								<img src="/img/ArtistImg/junghan/svt_mv_homerun.png" class = "icecream" 
								onclick="movie('https://www.youtube.com/embed/UB4FzllQCyc');func1(1);">
								<b><small>HOME;RUN</small></b><br>
								<small>SEVENTEEN | 2020.10.19</small>
							</div>
							<div class="svt_mv_fear">
								<img src="/img/ArtistImg/junghan/svt_mv_fear.png" class = "hwlt"
								onclick="movie('https://www.youtube.com/embed/ap14O5-G7UA');func(5);">
								<b><small>How You Like That</small></b><br>
								<small>SEVENTEEN | 2019.09.16</small>
							</div>
						</td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td class="artist_font">Photo</td>
						<td class="artist_photo_img">
							<div class="artist_photo_img_down">
							<img src="/img/ArtistImg/junghan/junghan_img4.jpg" alt=""><br>
							<button class="artist_photo_down_btn">DOWNLOAD ↓</button>
						</div>
							<div class="artist_photo_img_down">
							<img src="/img/ArtistImg/junghan/junghan_img5.png" alt=""><br>
							<button class="artist_photo_down_btn">DOWNLOAD ↓</button>
						</div>
							<div class="artist_photo_img_down">
							<img src="/img/ArtistImg/junghan/junghan_img6.jpg" alt=""><br>
							<button class="artist_photo_down_btn">DOWNLOAD ↓</button>
						</div>
						<br>
						</td>
					</tr>
			</tbody>
		</table>
	</div>
</main>
