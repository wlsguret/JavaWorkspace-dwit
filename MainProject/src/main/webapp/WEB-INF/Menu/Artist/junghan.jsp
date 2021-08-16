<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>       
        #topmenu_li{
            position: fixed;
            list-style: none;
            display: flex;
            padding-left: 1350px;
        }
        #topmenu_li li{
            padding:30px;
            color:rgb(238, 238, 238);
            font-family: 'Teko', sans-serif;
            font-size: 23px;
        }
        #topmenu_li li:hover{
            color: rgb(150, 149, 150);
            cursor: pointer;
        }
        #iu_menu{
            position: relative;
            margin-top: 0;
            width: 100%;
            height: 80vh;
            background-image: url(/img/ArtistImg/sohee/soheehan_main.png);
            padding:40px 0; 
            margin:0;
            background-repeat: no-repeat;
            z-index: -2;
        }
        #sohee_bigtitle{
           padding-left: 1170px;
           padding-right: 0;
           color: rgb(255, 255, 255);
           font-size: 40px;
           line-height: 55vh;
           font-weight: bold;
           /* font-family: 'Alice', serif; */
        }
        #iu_content{
            width:80%;
            padding-left: 20%;
            justify-content: center;
        }
        #profile, #works, #mv, #photo{
            font-size: 58px;
            font-weight: 500px;
            font-family: 'Playfair Display', serif;
        }
        #iu_table td{
            padding:50px 60px;
            /* background-color: aquamarine; */
        }
        #iu_profile{
            font-family: 'Noto Sans KR', sans-serif;
            font-weight: bold;
        }
        #iu_name, #iu_works{
            border-bottom: 1px solid lightgray;
            padding-bottom: 15px;
            font-weight: lighter;
            width:700px;
            color:gray;
            
        }
        #iu_birth, #iu_sns{
            padding-top: 5px;;
            font-family: 'Noto Sans KR', sans-serif;
            color:gray;
        }
        #iu_sns a{
            color:black;
            padding:5px;
        }
        #sohee_works_21{
            padding-top: 18px;
            font-family: 'Noto Sans KR', sans-serif;
            
        }
        
        #sohee_works_21 small{
            color:gray;
        }
        #sohee_works_21 img{
            width:13%;
            float:left;
            padding-right: 15px;
        }
        #work_more{
            background-color: white;
            border: 1px solid lightgray;
            padding:10px 50px;
            font-size: 15px;
            font-family: 'Noto Sans KR', sans-serif;
            cursor: pointer;
        }
        #work_more:hover{
            background-color: rgb(247, 247, 247);
        }
        #mv{
            border-bottom: 1px solid lightgray;
            padding-bottom: 10px;
        }

        #mvlist{
            padding:0;
            margin:0;
            
        }
        #mvlist img{
            width:80%;
            display: flex;
            cursor: pointer;
        }
        #iu_mv_celebrity, #iu_mv_lilac, #iu_mv_blueming{
            float: left;
        }
    
        #photo_img{
            padding: 20px 5px !important;
            display: flex;
            text-align: center;

        }
        #photo_img img{
            margin:0;
            width:85%;
            height: 35vh;
            padding-left: 20px;
            padding-right: 20px;
        }
        #photo_down_btn{
            background-color: white;
            border: 1px solid lightgray;
            padding:5px 20px;
            font-family: 'Noto Sans KR', sans-serif;
            color:gray;
            margin:20px;
        }
        #photo_down_btn:hover{
            cursor: pointer;
            background-color: rgb(240, 240, 240);
        }
        
       
    </style>
</head>
<body>
        <nav>
            <ul id = "topmenu_li">
                <li>HOME</li>
                <li>ARTIST</li>
                <li>NOTICE</li>
                <li>VIDEO</li>
                <li>LOGIN</li>
            </ul>
        </nav>

        <section id = "iu_menu">
            <h1 id = "sohee_bigtitle">한소희</h1>
        </section>
        <div id = "iu_content">
            <table id = "iu_table">
                <tbody>
                    <tr>
                        <td id = "profile">Profile</td>
                        <td id = "iu_profile">
                            <div id = "iu_name">
                                <b style="color:black;">한소희</b>
                               &nbsp;&nbsp;&nbsp;
                                <small>탤런트, 영화배우</small>
                            </div>
                            <div id = "iu_birth">
                               <small style = "font-weight: bolder;">출생</small> &nbsp;&nbsp;&nbsp;
                               <small style="font-weight:bold; color:black;">1994.11.18</small>
                            </div>
                            <div id = "iu_sns">
                                <small style = "font-weight: bolder;">사이트</small> &nbsp;&nbsp;&nbsp;
                               <small style="font-weight:bold; color:black;">
                                <a href=""><i class="fab fa-instagram"></i></a>
                            </small>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id = "works">Works</td>
                        <td style="padding:0 60px;">
                            <div id = "iu_works">
                            <b style="color:black">2021</b>
                            </div>
                            <div id = "sohee_works_21">
                                <img src="/img/ArtistImg/sohee/sohee_myname.jpg" alt="">
                                <br>
                                마이 네임 <small>방영예정</small><br>
                                <small style="font-weight: lighter;">2021</small><br>

                            </div>
                            <br>
                            <br>
                            <div id = "sohee_works_21">
                                <img src="/img/ArtistImg/sohee/sohee_iknow.jpg" alt="">
                                <br>
                                알고있지만 <small>유나비 역</small><br>
                                <small style="font-weight: lighter;">2021.06.19</small><br>

                            </div>
                            </td>
                            </tr>
                            <tr>
                            <td></td>
                            <td style = "padding: 0 60px;">
                            <div id = "iu_works">
                                <br>
                                <b style="color:black">2020</b>
                                </div>
                                <div id = "sohee_works_21">
                                    <img src="/img/ArtistImg/sohee/sohee_couple's world.png" alt="">
                                    <br>
                                   부부의 세계  <small> 여다경 역</small><br>
                                    <small style="font-weight: lighter;">2020.03.27</small>
                                </div>
                            <br>
                            <br>
                            <br>
                            <div id = "iu_works">
                                <br>
                                <b style="color:black">2019</b>
                            </div>
                            <div id = "sohee_works_21">
                                <img src="/img/ArtistImg/sohee/sohee_sea.jpg" alt="">
                                <br>
                                바다가 들린다 <small></small><br>
                                <small style="font-weight: lighter;">2019.08.11</small>
                            </div>
                            <br>
                            <br>
                            <div id = "sohee_works_21">
                                <img src="/img/ArtistImg/sohee/sohee_abyssus.jpg" alt="">
                                <br>
                               어비스 <small> 장희진 역</small><br>
                                <small style="font-weight: lighter;">2019.05.16</small>
                            </div>
                            <br>
                            <br>
                            <div style="padding-left: 200px;">
                                <button id = "work_more">MORE &nbsp;&nbsp;<small style="font-size: 4px;">▼</small></button>
                            </div>
                            
                        </td>                                                                                                    
                        
                    </tr>
                    <tr>
                        
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td id="photo">Photo</td>
                        <td id="photo_img">
                        <div id="photo_img_down">
                            <img src="/img/ArtistImg/sohee/sohee_img1.jpg" alt=""><br>
                            <button id="photo_down_btn">DOWNLOAD ↓</button>
                        </div>
                        <div id="photo_img_down">
                            <img src="/img/ArtistImg/sohee/sohee_img3.jpg" alt=""><br>
                            <button id="photo_down_btn">DOWNLOAD ↓</button>
                        </div>
                        <div id="photo_img_down">
                            <img src="/img/ArtistImg/sohee/sohee_img4.jpg" alt=""><br>
                            <button id="photo_down_btn">DOWNLOAD ↓</button>
                        </div>
                            <br>
                        </td>
                    </tr>
                   

                </tbody>
            </table>
        </div>
    
</body>
</html>