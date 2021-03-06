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
</head>
<style>
    #notice_top{
        width:80%;
        border-bottom: 1px solid gray;
        margin-left: 130px;
    }
    #notice_top span:hover{
        background-color: rgb(241, 241, 241);
    }
    #notice_top span{
        padding:8px 30px 8px 30px;
        z-index: 2;
        border-top: 1px solid gray;
        border-left: 1px solid gray;
        border-right: 1px solid gray;
        font-size: 18px;
    }
    
    #notice_list ul, .notice_cont_list{
        list-style: none;
        display: flex;
        /* text-align: center; */
        font-size: 14px;
    }
    .notice_artist{
        background-color: rgb(241, 241, 241);
    }
    .notice_topmenu{
        margin-left: 130px;
        width:80%;
        font-weight: bold;
        background-color: rgb(241, 241, 241);
        border-bottom: 1px solid lightgray;
        border-top: 1px solid lightgray;
    }
    .notice_cont{
        width:80%;
        margin-left: 130px;
    }
    .notice_cont_list{
        width:100%;
        border-bottom: 1px solid lightgray;
    }
    .notice_topmenu li, .notice_cont_list li{
       width: 80%;
        padding:10px;
        /* border-bottom: 1px solid lightgray; */
    }
    .notice_subs_tit:hover{
        color:lightslategray;
        cursor: pointer;
    }
    .iu_notice1{
        padding:20px;
    }
    #notice_list_subs{
        padding:10px;
        margin-left: 40px;
        background-color: rgb(240, 240, 240);
    }
    #notice_list_subs{
        display: none;
    }
    #page_num ul{
        margin:0 auto;
        display: flex;
        width:80%;
        list-style: none;
        padding-top: 50px;
        font-size: 15px;
        justify-content: center;
        
    }
    #page_num ul li{
        padding:3px;
    }
    #page_num ul li:hover{
        text-decoration: underline;
        cursor: pointer;
        color:slategray;
    }
    .page_num_one{
        font-weight: bold;
    }
    
</style>
<script>
    function onon(){
        document.getElementById("notice_list_subs").style.display = "block";
    }
</script>
<body>
    <header>
        <h1 class = "menutitle">NOTICE</h1>

        <aside>
            <div class = "list">
                <ul class = "menu_list">
                    <li><a  id = "home" href = "index.html">HOME</a></li>
                    <li><a id = "artist" href = "artist.html">ARTIST</a></li>
                    <li><a  id = "notice"href = "notice.html">NOTICE</a></li>
                    <li><a id = "audition" href = "audition.html">AUDITION</a></li>
                    <li><a id = "login" data-transition='fade'  href = "login.html">LOGIN</a></li>
                </ul>
            </div>
        </aside>
    </header>

        <div id = "notice_list">

            <ul id = "notice_top">
                <span class = "notice_artist">ARTIST</span>
                <span class = "notice_member">MEMBER</span>
            </ul>

            <ul class = "notice_topmenu">
                <li>NO</li>
                <li>TITLE</li>
                <li>DATE</li>
            </ul>
        </div>

        <div class = "notice_cont"> 
        
            <ul class = "notice_cont_list">
                <li>1053</li>
                <li class = "notice_subs_tit"  onclick="onon()" >IU, ?????? 8?????? ????????? ??????</li>
                <li class = "notice_date">2021.08.06</li>
            </ul>
            <ul id = "notice_list_subs">
                <div id = "iu_notice1">
                    <h2>IU, ?????? 8?????? ????????? ??????</h2>
                    <img src="svt_rdytolove.jpg" alt="">
                    <article>
                        IU??? 8?????? ???????????? ????????????.<br>
                        ?????? ????????????????????? ????????? ?????????????????????????????????????????????...?????????
                    </article>

            </ul>

            <ul class = "notice_cont_list">
                <li>1053</li>
                <li class = "notice_subs_tit"  onclick="onon()" >????????? Ready To Love ?????? ?????????</li>
                <li class = "notice_date">2021.07.15</li>
            </ul>

            <ul class = "notice_cont_list">
                <li>1052</li>
                <li class = "notice_subs_tit"  onclick="onon()" >?????? ?????????, '???????????????'?????? ??????...</li>
                <li class = "notice_date">2021.07.06</li>
            </ul>

            <ul class = "notice_cont_list">
                <li>1051</li>
                <li class = "notice_subs_tit"  onclick="onon()" >?????????, ??? ?????? GUESS?????? ????????? ??????</li>
                <li class = "notice_date">2021.06.16</li>
            </ul>

            <ul class = "notice_cont_list">
                <li>1050</li>
                <li class = "notice_subs_tit"  onclick="onon()" >IU ?????? ????????? ?????? ??? ??? ????????? ??????</li>
                <li class = "notice_date">2021.08.06</li>
            </ul>

            <ul class = "notice_cont_list">
                <li>1049</li>
                <li class = "notice_subs_tit"  onclick="onon()" >????????? ????????? ?????????</li>
                <li class = "notice_date">2021.05.23</li>
            </ul>

            <ul class = "notice_cont_list">
                <li>1048</li>
                <li class = "notice_subs_tit"  onclick="onon()" >?????? ????????? ???????????? ?????? ??? ????????? ???????????? ?????????</li>
                <li class = "notice_date">2021.05.04</li>
            </ul>

            <!-- list??? ??? ???????????? ?????? ?????? ??? 15???????????? ????????? ?????? 
            ?????? ????????? ???????????? ?????? bold ?????? ??????????????? ?????? 1????????? ?????? 2????????? ?????? ?????? ?????????-->

        </div>
        <div id = "page_num">
            <ul>
                <li style="display: none;">??????</li>
                <li class = "page_num_one">1</li>
                <li>2</li>
                <li>3</li>
                <li>4</li>
                <li>5</li>
                <li>??????</li>
            </ul>

        </div>

        
    
</body>
</html>