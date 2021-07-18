<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    
    <style>
         header h1{
            display: flex;
            font-family: 'Times New Roman', Times, serif;
            font-style: italic;
            font-size: 80px;
            padding:15px 80px;
            border-bottom: 1px solid black;

        }
        
        .loginline{
            margin: 100px 150px;
        }

        .audition li{
            list-style: none;
            display: inline-block;
            width: calc(70%/ 4);
            vertical-align: top;
            padding: 5px;
            height: 400px;
            margin-left: 7%;
            border: 1px solid gray;
            box-sizing: border-box;
            margin-left: 100px;
            text-align: center;
            line-height: 400px;
        }
    </style>
</head>
<body>
    <header>
        <h1 class = "loginline">AUDITION</h1>

        <section>
            <ul class = "audition">
                <li id = "ga">Global Audition</li>
                <li id = "wa">Weekend Audition</li>
                <li id = "oa">Open Audition</li>
                <li id = "ba">Band Audition</li>
            </ul>


        </section>
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
    </header>
</body>
</html>