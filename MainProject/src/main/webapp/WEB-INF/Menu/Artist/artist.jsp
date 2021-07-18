<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    
    <title>Document</title>
    <style>
          div h1{
            display: flex;
            font-family: 'Times New Roman', Times, serif;
            font-style: italic;
            font-size: 80px;
            padding:15px 80px;
            border-bottom: 1px solid black;

        }

        nav{
            display: flex;
        }
        
        .artistline{
            margin: 100px 150px;
        }
        
        .iu{ 
            
            margin: 0 150px;
            width:428px; height:428px; 
            background: url(img/IU.jpg) no-repeat; 
            
            }
    .text{ width:366px; height:366px; background:#000000; opacity:0; padding:30px;}
    .text p{ padding-top:42%; font-size: 20px; } 
    .iu:hover .text { opacity:0.6; text-align:center; color:#ffffff; }

    .sohee{ 
            margin-right: 160px;
            width: 427px; height:427px; 
            background: url(img/sohee.jpg) no-repeat; 
            }
            .sohee:hover .text{
                opacity: 0.6; text-align: center; color: #ffffff;}
            
    .junghan{ 
    
    width: 427px; height:427px; 
    background: url(img/junghan.jpg) no-repeat; 
    }
    .junghan:hover .text{
        opacity: 0.6; text-align: center; color: #ffffff;}
</style>
</head>
<body>
    <div class = "artists">
        <h1 class = "artistline">ARTIST</h1>
    </div>  
	<nav>
        <div class="iu"> 
            <div class="text"> 
               <p>IU</p>
            </div> 
         
         </div>
         
         <div class = "sohee">
            <div class = "text">
                <p>SOHEE HAN</p>
            </div>
         </div>

         <div class = "junghan">
            <div class = "text">
                <p>JUNGHAN</p>
            </div>
         </div>
         </nav>
         <aside>
		<div class="list">
			<ul class="menu_list">
				<li><a id="home" href="/index">HOME</a></li>
				<li><a id="artist" href="/artist" data-transition="fade">ARTIST</a></li>
				<li><a id="notice" href="/notice">NOTICE</a></li>
				<li><a id="audition" href="/audition">AUDITION</a></li>
				<li><a id="login" href="/login" data-transition='fade'>LOGIN</a></li>
			</ul>
		</div>
	</aside>
</body>
</html>