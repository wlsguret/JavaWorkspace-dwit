<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="style/style.css" type="text/css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Teko:wght@300&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Alice&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <style>
        #artist_menu{
            background-image: url(iu_artist.jpg);
        }

        /* 얘만 뮤비 추가 */
        #iu_mv_celebrity, #iu_mv_lilac, #iu_mv_blueming{
            float: left;
        }
        #artist_bigtitle{
            color:white;
        }
    </style>
</head>
<body>
        <nav>
            <ul id = "artist_topmenu_li">
                <li>HOME</li>
                <li>ARTIST</li>
                <li>NOTICE</li>
                <li>VIDEO</li>
                <li>LOGIN</li>
            </ul>
        </nav>

        <section id = "artist_menu">
            <h1 id = "artist_bigtitle">아이유(IU)</h1>
        </section>
        <div id = "artist_content">
            <table id = "artist_table">
                <tbody>
                    <tr>
                        <td id = "artist_profile">Profile</td>
                        <td id = "artist_profile_list">
                            <div id = "iu_name">
                                <b style="color:black;">IU</b>
                                (아이유, 이지은) &nbsp;&nbsp;&nbsp;
                                <small>가수 / 탤런트</small>
                            </div>
                            <div id = "artist_birth">
                               <small style = "font-weight: bolder;">출생</small> &nbsp;&nbsp;&nbsp;
                               <small style="font-weight:bold; color:black;">1993.05.16</small>
                            </div>
                            <div id = "artist_sns">
                                <small style = "font-weight: bolder;">사이트</small> &nbsp;&nbsp;&nbsp;
                               <small style="font-weight:bold; color:black;">
                                <a href=""><i class="fab fa-instagram"></i></a>
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-youtube"></i></a>
                            </small>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id = "works">Works</td>
                        <td style="padding:0 60px;">
                            <div id = "artist_works">
                            <b style="color:black">2021</b>
                            </div>
                            <div id = "artist_works_list">
                                <img src="iu_work_lilac.jpg" alt="">
                                <br>
                                정규 5집 IU 5th Album 'LILAC' <small>[라일락], [Coin], [Celebrity]</small><br>
                                <small style="font-weight: lighter;">2021.03.25</small><br>

                            </div>
                            </td>
                            </tr>
                            <tr>
                            <td></td>
                            <td style = "padding: 0 60px;">
                            <div id = "artist_works_list">
                                <b style="color:black">2020</b>
                                </div>
                                <div id = "artist_works_list">
                                    <img src="iu_work_iland.jpg" alt="">
                                    <br>
                                    I-LAND Part 1 Signal Song  <small> [I-LAND]</small><br>
                                    <small style="font-weight: lighter;">2020.06.19</small>
                                </div>
                            
                            <br>
                            <div id = "artist_works">
                                </div>
                                <div id = "artist_works_list">
                                    <img src="iu_work_eight.jpg" alt="">
                                    <br>
                                    에잇<small>  [에잇 (Prod.&Feat. SUGA of BTS)]</small><br>
                                    <small style="font-weight: lighter;">2020.05.06</small><br>
    
                                </div>
                                <br>
                            <br>
                            <div id = "artist_works">
                                <b style="color:black">2019</b>
                            </div>
                            <div id = "artist_works_list">
                                <img src="iu_work_lovepoem.jpg" alt="">
                                <br>
                                미니 5집 Love poem  <small> [Blueming], [Love poem]</small><br>
                                <small style="font-weight: lighter;">2019.11.18</small>
                            </div>
                            <br>
                            <br>
                            <br>
                            <div style="padding-left: 200px;">
                                <button id = "artist_work_more">MORE &nbsp;&nbsp;<small style="font-size: 4px;">▼</small></button>
                            </div>
                            
                        </td>                                                                                                    
                        
                    </tr>
                    <tr>
                        <td colspan="2" id = "artist_mv">
                            M/V
                          
                    </tr>
                    <tr>
                        <td colspan="2" id="artist_mvlist">
                            <div id="iu_mv_celebrity">
                            <img src="iu celebrity.png" id = "celebrity" class = "celebrity" style="background-color: aquamarine;"
                            onclick="movie('https://www.youtube.com/embed/0-q1KafFCLU');func1(0);">
                             <b><small>CELEBRITY</small></b><br>
                             <small>IU | 2021.01.27</small>
                            </div>
                            <div id="iu_mv_lilac">
                             <img src="iu lilac.png" id = "lilac" class = "lilac" 
                            onclick="movie('https://www.youtube.com/embed/v7bnOxV4jAc');func1(1);">
                            <b><small>LILAC(라일락)</small></b><br>
                            <small>IU | 2021.03.25</small>
                            </div>
                            <div id="iu_mv_blueming">
                                <img src="iu_bluming.png" id = "blueming" class = "blueming"
                                onclick="movie('https://www.youtube.com/embed/D1PvIWdJ8xo');func(5);">
                                <b><small>Blueming(블루밍)</small></b><br>
                                <small>IU | 2019.11.18</small>
                            </div>
                            <p>
                                   &nbsp;
                            </p>
                            <div id="iu_mv_celebrity">
                                <img src="iu celebrity.png" id = "celebrity" class = "celebrity" style="background-color: aquamarine;"
                                onclick="movie('https://www.youtube.com/embed/0-q1KafFCLU');func1(0);">
                                 <b><small>CELEBRITY</small></b><br>
                                 <small>IU | 2021.01.27</small>
                                </div>
                                <div id="iu_mv_lilac">
                                 <img src="iu lilac.png" id = "lilac" class = "lilac" 
                                onclick="movie('https://www.youtube.com/embed/v7bnOxV4jAc');func1(1);">
                                <b><small>LILAC(라일락)</small></b><br>
                                <small>IU | 2021.03.25</small>
                                </div>
                                <div id="iu_mv_blueming">
                                    <img src="iu_bluming.png" id = "blueming" class = "blueming"
                                    onclick="movie('https://www.youtube.com/embed/D1PvIWdJ8xo');func(5);">
                                    <b><small>Blueming(블루밍)</small></b><br>
                                    <small>IU | 2019.11.18</small>
                                </div>
                            
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td id="artist_photo">Photo</td>
                        <td id="artist_photo_img">
                        <div id="artist_photo_img_down">
                            <img src="iu_photo_image3.jpg" alt=""><br>
                            <button id="artist_photo_down_btn">DOWNLOAD ↓</button>
                        </div>
                        <div id="artist_photo_img_down">
                            <img src="iu_lilac_image2.jpg" alt=""><br>
                            <button id="artist_photo_down_btn">DOWNLOAD ↓</button>
                        </div>
                        <div id="artist_photo_img_down">
                            <img src="iu_lovepoem_image.jpg" alt=""><br>
                            <button id="artist_photo_down_btn">DOWNLOAD ↓</button>
                        </div>
                            <br>
                        </td>
                    </tr>
                   

                </tbody>
            </table>
        </div>
    
</body>
</html>