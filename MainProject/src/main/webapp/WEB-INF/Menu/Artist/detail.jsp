<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main>
	<jsp:include page="/WEB-INF/Menu/Artist/artist_topmenu.jsp" />
	<div>
		<img alt="" src="/img/ArtistImg/iu/iu_artist.jpg"
			class="artistMainImg">
		<h1 class="artist_bigtitle">한소희</h1>
	</div>
	<div class="artist_content">
		<table class="artist_table">
			<tbody>
				<tr>
					<td class="artist_font">Profile</td>
					<td class="artist_profile_list">
						<div class="artist_name">
							<b style="color: black;">IU</b> (아이유, 이지은) &nbsp;&nbsp;&nbsp; <small>가수
								/ 탤런트</small>
						</div>
						<div class="artist_birth">
							<small style="font-weight: bolder;">출생</small> &nbsp;&nbsp;&nbsp;
							<small style="font-weight: bold; color: black;">1993.05.16</small>
						</div>
						<div class="artist_sns">
							<small style="font-weight: bolder;">사이트</small>
							&nbsp;&nbsp;&nbsp; <small
								style="font-weight: bold; color: black;"> <a href=""><i
									class="fab fa-instagram"></i></a> <a href=""><i
									class="fab fa-twitter"></i></a> <a href=""><i
									class="fab fa-youtube"></i></a>
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
							<img src="/img/ArtistImg/iu/iu_work_lilac.jpg" alt=""> <br>
							정규 5집 IU 5th Album 'LILAC' <small>[라일락], [Coin],
								[Celebrity]</small><br> <small style="font-weight: lighter;">2021.03.25</small><br>

						</div>
					</td>
				</tr>
				<tr>
					<td></td>
					<td style="padding: 0 60px;">
						<div class="artist_works_list">
							<b style="color: black">2020</b>
						</div>
						<div class="artist_works_list">
							<img src="/img/ArtistImg/iu/iu_work_iland.jpg" alt=""> <br>
							I-LAND Part 1 Signal Song <small> [I-LAND]</small><br> <small
								style="font-weight: lighter;">2020.06.19</small>
						</div> <br>
						<div class="artist_works"></div>
						<div class="artist_works_list">
							<img src="/img/ArtistImg/iu/iu_work_eight.jpg" alt=""> <br>
							에잇<small> [에잇 (Prod.&Feat. SUGA of BTS)]</small><br> <small
								style="font-weight: lighter;">2020.05.06</small><br>

						</div> <br> <br>
						<div class="artist_works">
							<b style="color: black">2019</b>
						</div>
						<div class="artist_works_list">
							<img src="/img/ArtistImg/iu/iu_work_lovepoem.jpg" alt=""> <br>
							미니 5집 Love poem <small> [Blueming], [Love poem]</small><br>
							<small style="font-weight: lighter;">2019.11.18</small>
						</div> <br> <br> <br>
						<div style="padding-left: 200px;">
							<button class="artist_work_more">
								MORE &nbsp;&nbsp;<small style="font-size: 4px;">▼</small>
							</button>
						</div>

					</td>

				</tr>
				<tr>
					<td colspan="2" class="artist_mv">M/V
				</tr>
				<tr>
					<td colspan="2" class="artist_mvlist">
						<div class="iu_mv_celebrity">
							<img src="/img/ArtistImg/iu/iu celebrity.png" class="celebrity"
								class="celebrity" style="background-color: aquamarine;"
								onclick="movie('https://www.youtube.com/embed/0-q1KafFCLU');func1(0);">
							<b><small>CELEBRITY</small></b><br> <small>IU |
								2021.01.27</small>
						</div>
						<div class="iu_mv_lilac">
							<img src="/img/ArtistImg/iu/iu lilac.png" class="lilac"
								class="lilac"
								onclick="movie('https://www.youtube.com/embed/v7bnOxV4jAc');func1(1);">
							<b><small>LILAC(라일락)</small></b><br> <small>IU |
								2021.03.25</small>
						</div>
						<div class="iu_mv_blueming">
							<img src="/img/ArtistImg/iu/iu_bluming.png" class="blueming"
								class="blueming"
								onclick="movie('https://www.youtube.com/embed/D1PvIWdJ8xo');func(5);">
							<b><small>Blueming(블루밍)</small></b><br> <small>IU |
								2019.11.18</small>
						</div>
						<p>&nbsp;</p>
						<div class="iu_mv_celebrity">
							<img src="/img/ArtistImg/iu/iu celebrity.png" class="celebrity"
								class="celebrity" style="background-color: aquamarine;"
								onclick="movie('https://www.youtube.com/embed/0-q1KafFCLU');func1(0);">
							<b><small>CELEBRITY</small></b><br> <small>IU |
								2021.01.27</small>
						</div>
						<div class="iu_mv_lilac">
							<img src="/img/ArtistImg/iu/iu lilac.png" class="lilac"
								class="lilac"
								onclick="movie('https://www.youtube.com/embed/v7bnOxV4jAc');func1(1);">
							<b><small>LILAC(라일락)</small></b><br> <small>IU |
								2021.03.25</small>
						</div>
						<div class="iu_mv_blueming">
							<img src="/img/ArtistImg/iu/iu_bluming.png" class="blueming"
								class="blueming"
								onclick="movie('https://www.youtube.com/embed/D1PvIWdJ8xo');func(5);">
							<b><small>Blueming(블루밍)</small></b><br> <small>IU |
								2019.11.18</small>
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
							<img src="/img/ArtistImg/iu/iu_photo_image3.jpg" alt=""><br>
							<button class="artist_photo_down_btn">DOWNLOAD ↓</button>
						</div>
						<div class="artist_photo_img_down">
							<img src="/img/ArtistImg/iu/iu_lilac_image2.jpg" alt=""><br>
							<button class="artist_photo_down_btn">DOWNLOAD ↓</button>
						</div>
						<div class="artist_photo_img_down">
							<img src="/img/ArtistImg/iu/iu_lovepoem_image.jpg" alt=""><br>
							<button class="artist_photo_down_btn">DOWNLOAD ↓</button>
						</div> <br>
					</td>
				</tr>


			</tbody>
		</table>
	</div>
</main>
