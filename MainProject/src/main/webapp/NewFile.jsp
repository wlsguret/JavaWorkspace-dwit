<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body{
	overflow-x:hidden;
}
/* 22 */
a{ text-decoration: none;}
ul,li { list-style: none;}

.menutitle{
    display: flex;
    font-family: 'Times New Roman', Times, serif;
    font-style: italic;
    font-size: 80px;
    padding:15px 80px;
    margin: 100px 190px;
    border-bottom: 1px solid black;
}
/*  Start!! aside menu_list */
.list {
	position: fixed;
	right: 0;
	top: 0;
}

.menu_list a {
	cursor: pointer;
	position: absolute;
	right: -60px;
	padding: 15px;
	width: 100px;
	font-size: 20px;
	transition: 0.5s;
	color: black;
	border-radius: 0 5px 5px 0;
	font-family: 'Times New Roman', Times, serif;
}

.menu_list a:hover {right: 0px;}

#home {top: 260px;}
#artist {top: 320px;}
#notice {top: 380px;}
#audition {top: 440px;}
#login {top: 500px;}
/*  End!! aside menu_list */
/*  Start!! main Fullpage */
.section{
    text-align: center;   
}

.section a{
	cursor: pointer;
	justify-content: center;
	text-align: center;
	color:black;
	font-size: 35px;
	font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.section a:hover{
    transition: 0.6s;
}

.secp{
    position: relative;
}

.secp::after{
    content: "";
    position: absolute;
    left: 0;
    bottom: -13px;
    width: 0px;
    height: 2px;
    margin: 5px 2px 0;
    transition: all 0.2s ease-in-out;
    transition-duration: 0.38s;
    opacity: 0;
    background-color: black;
}

.secp:hover::after{
    width: 100%;
    opacity: 1;
}
.mv{
    padding-left: 17%;
}

.iu_celebrity{
    justify-content: center;
    width:80%;
    height: 60vh;
}

.mv h3{
    color:rgb(71, 71, 71);
}
.mv small{
    color:rgb(78,78,78);
}
.mvlist{
    font-size: small;
    display: flex;
    border-top: 2px solid lightgray;
    padding-top: 25px;
    margin-right: 311px;
}

.mvtable td img{
    width:80%;
    display: flex;
    cursor: pointer;
}
.mvtable{
    width:84.5%;
}
.mvtable tr{
    height: 25vh;
}
.lilac{
    
}
.bplove{
    
}


</style>

<script>
    function movie(src){
        document.getElementById("cel").src = src;
        document.getElementById("lilac").src = src;
        document.getElementById("bplove").src = src;
        document.getElementById("gone").src = src;
        document.getElementById("dawn").src = src;
    }
    function func1(a){
        if(a==1){
            document.getElementById("mv_tit").innerHTML = "LILAC(라일락)";
            document.getElementById("mv_cont").innerHTML = "IU | 2021.03.25";
        }
        else if(a==2){
            document.getElementById("mv_tit").innerHTML = "Lovesick Girls";
            document.getElementById("mv_cont").innerHTML = "BLACKPINK | 2020.10.02";
        }
        else if(a==3){
            document.getElementById("mv_tit").innerHTML = "Gone";
            document.getElementById("mv_cont").innerHTML = "ROSE | 2021.04.05";
        }
        else if(a==4){
            document.getElementById("mv_tit").innerHTML = "우리의 새벽은 낮보다 뜨겁다";
            document.getElementById("mv_cont").innerHTML = "SEVENTEEN | 2018.08.30";
        }else if(a==0){
            document.getElementById("mv_tit").innerHTML = "CELEBRITY";
            document.getElementById("mv_cont").innerHTML = "IU | 2021.01.27";
        }
    }

</script>
<body>
    <header>
        <h1 class = "menutitle">VIDEO</h1>

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

    <section class = "mv">
        <div class = "mv_list">
            <iframe id = "cel" class = "iu_celebrity" width="560" height="315" src="https://www.youtube.com/embed/0-q1KafFCLU" 
            ?autoplay=1&mute=1 title="YouTube video player" frameborder="0" 
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
            <table class = "mvtable" style="padding-right: -80px;">
                <tr>
                    <td>
                        <img src="iu celebrity.png" id = "celebrity" class = "celebrity" 
                        onclick="movie('https://www.youtube.com/embed/0-q1KafFCLU');func1(0);">
                         <b><small>CELEBRITY</small></b><br>
                         <small>IU | 2021.01.27</small>
                     </td>
                    <td>
                       <img src="iu lilac.png" id = "lilac" class = "lilac" 
                       onclick="movie('https://www.youtube.com/embed/v7bnOxV4jAc');func1(1);">
                       <div id = "lilac_cont">
                        <b><small>LILAC(라일락)</small></b><br>
                        <small>IU | 2021.03.25</small>
                        </div>
                    </td>
                    <td>
                        <img src="blackpink lovesick girls.png" id = "bplove" 
                        class = "bplove" onclick="movie('https://www.youtube.com/embed/dyRsYk0LyA8');func1(2);">
                        <b><small>Lovesick Girls</small></b><br>
                        <small>BLACKPINK | 2020.10.02</small>
                     </td>
                    <td>
                        <img src="rose gone.png" class = "gone" id = "gone" class = "gone"
                        onclick="movie('https://www.youtube.com/embed/K9_VFxzCuQ0');func1(3);">
                        <b><small>Gone</small></b><br>
                        <small>ROSE | 2021.04.05</small>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <img src="seventeen dawn.png" id = "dawn" class = "dawn" 
                        onclick="movie('https://www.youtube.com/embed/MAWM7Y9Wnd0');func1(4);">
                        <b><small>우리의 새벽은 낮보다 뜨겁다</small></b><br>
                        <small>SEVENTEEN | 2018.08.30</small>
                    </td>
                     <td>
                         <img src="blackpink lovesick girls.png" class = "bplove" alt="">
                         <b><small>Lovesick Girls</small></b><br>
                         <small>BLACKPINK | 2020.10.02</small>
                      </td>
                     <td>
                         <img src="rose gone.png" class = "gone" alt="">
                         <b><small>Gone</small></b><br>
                         <small>ROSE | 2021.04.05</small>
                     </td>
                     <td>
                         <img src="seventeen dawn.png" class = "dawn" alt="">
                         <b><small>우리의 새벽은 낮보다 뜨겁다</small></b><br>
                         <small>SEVENTEEN | 2018.08.30</small>
                     </td>
                </tr>
            </table>
            
    </div>
    </section>
</body>
</html>