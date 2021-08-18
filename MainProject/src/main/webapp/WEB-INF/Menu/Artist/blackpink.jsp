<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main>
	<jsp:include page="/WEB-INF/Menu/Artist/artist_topmenu.jsp" />
	<div>
		<img alt="" src="/img/ArtistImg/blackpink/blackpink_artist.png"
			class="artistMainImg">
		<h1 class="artist_bigtitle">BLACKPINK</h1>
	</div>
	<div class="artist_content">
		<table class="artist_table">
			<tbody>
				<tr>
					<td class="artist_font">Profile</td>
					<td class="artist_profile_list">
						<div class="artist_name">
							<b style="color: black;">BLACKPINK</b> (지수, 제니, 로제, 리사) &nbsp;&nbsp;&nbsp; 
							<small>가수</small>
						</div>
						<div class="artist_birth">
							<small style="font-weight: bolder;">출생</small>
							<small style="font-weight: bold; color: black;"> 
								&nbsp;&nbsp;&nbsp;&nbsp;지수 - 1995.01.03 <br>
                                &emsp;&emsp;&emsp;&nbsp;제니 - 1996.01.16 <br>
                                &emsp;&emsp;&emsp;&nbsp;로제 - 1997.02.11 <br>
                                &emsp;&emsp;&emsp;&nbsp;리사 - 1997.03.27</small>
						</div>
						<div class="artist_sns">
							<small style="font-weight: bolder;">사이트</small>
							&nbsp;&nbsp;&nbsp; 
							<small	style="font-weight: bold; color: black;"> 
								<a href="https://www.instagram.com/blackpinkofficial/"><i class="fab fa-instagram"></i></a>
                                <a href="https://twitter.com/ygofficialblink"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.youtube.com/channel/UCOmHUn--16B90oW2L6FRR3A"><i class="fab fa-youtube"></i></a>
							</small>
						</div>
					</td>
				</tr>
				<tr>
					<td class="artist_font">Works</td>
					<td style="padding: 0 60px;">
						<div class="artist_works">
							<b style="color: black">2021</b>
						</div>
						<div class="artist_works_list">
							<img src="/img/ArtistImg/blackpink/blackpink_uneverknow.jpg" alt=""><br>
							You Never Know<small>&nbsp;[Japan Ver.]</small><br>
							<small style="font-weight: lighter;">2021.08.03</small><br>
						</div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td style="padding: 0 60px;">
						<div class = "artist_works"><br>
							<b style="color:black">2020</b>
						</div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/blackpink/blackpink_thealbum.jpg" alt=""><br>
							THE ALBUM  <small> [Lovesick Girls]</small><br>
							<small style="font-weight: lighter;">2020.10.02</small>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/blackpink/blackpink_icecream.jpg" alt=""><br>
							Ice Cream  <small> [with Selena Gomez]</small><br>
							<small style="font-weight: lighter;">2020.08.28</small>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/blackpink/blackpink_hwlt.jpg" alt=""><br>
							How You Like That <br>
							<small style="font-weight: lighter;">2020.06.26</small>
						</div>
						<br>
						<div class = "artist_works"></div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/blackpink/blackpink_sourcandy.jpg" alt=""><br>
							Sour Candy <small>[with Lady GaGa]</small> <br>
							<small style="font-weight: lighter;">2020.05.27</small>
						</div>
						<br><br><br>
						<div class = "artist_works">
							<b style="color:black">2019</b>
						</div>
						<div class = "artist_works_list">
							<img src="/img/ArtistImg/blackpink/blackpink_ktl.jpg" alt=""><br>
							Kill This Love<br>
							<small style="font-weight: lighter;">2019.04.05</small>
						</div>
						<br><br><br>
						<div style="padding-left: 200px;">
							<button class = "artist_work_more">MORE &nbsp;&nbsp;<small style="font-size: 4px;">▼</small></button>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="artist_font">M/V</td>
				</tr>
				<tr>
					<td colspan="2" class="artist_mvlist">
						<div class="bp_mv_lovesickgirls">
							<img src="/img/ArtistImg/blackpink/blackpink lovesick girls.png" class = "lovesickgirls"
							onclick="movie('https://www.youtube.com/embed/dyRsYk0LyA8');func1(0);">
							<b><small>LoveSick girls</small></b><br>
							<small>BLACKPINK | 2020.10.02</small>
						</div>
						<div class="bp_mv_icecream">
							<img src="/img/ArtistImg/blackpink/bp_icecreammv.png" class = "icecream" 
							onclick="movie('https://www.youtube.com/embed/vRXZj0DzXIA');func1(1);">
							<b><small>Ice Cream(with Selena Gomez)</small></b><br>
							<small>BLACKPINK | 2020.08.28</small>
						</div>
						<div class="bp_mv_hwlt">
							<img src="/img/ArtistImg/blackpink/bp_hwltmv.png" class = "hwlt"
							onclick="movie('https://www.youtube.com/embed/ioNng23DkIM');func(5);">
							<b><small>How You Like That</small></b><br>
							<small>BLACKPINK | 2020.06.26</small>
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
						<img src="/img/ArtistImg/blackpink/jenny_artistimg.jpg" alt=""><br>
						<a href="/img/ArtistImg/blackpink/jenny_artistimg.jpg" download><button class="artist_photo_down_btn">DOWNLOAD ↓</button></a>
					</div>
						<div class="artist_photo_img_down">
						<img src="/img/ArtistImg/blackpink/jisoo_artistimg.jpg" alt=""><br>
						<a href="/img/ArtistImg/blackpink/jisoo_artistimg.jpg" download><button class="artist_photo_down_btn">DOWNLOAD ↓</button></a>
					</div>
						<div class="artist_photo_img_down">
						<img src="/img/ArtistImg/blackpink/rose_artistimg.jpg" alt=""><br>
						<a href="/img/ArtistImg/blackpink/rose_artistimg.jpg" download><button class="artist_photo_down_btn">DOWNLOAD ↓</button></a>
					</div><br>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</main>
