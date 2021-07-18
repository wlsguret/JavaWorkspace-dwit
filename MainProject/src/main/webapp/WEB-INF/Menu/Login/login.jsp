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
        
        .loginline{
            margin: 100px 150px;
        }

        table{
            display: flex;
            justify-content: center;
            font-size: 20px;
            font-family: Georgia, 'Times New Roman', Times, serif;
            padding: 40px;
            justify-content: center;  
        }
        tr{
            padding: 20px;
            margin: 20px;
        }

        .kor{
            font-size: 15px;
            
            text-align: right;
        }
        .ok{
            cursor: pointer;
            display: flex;
            font-size: 15px;
            padding: 10px 90px;
            justify-content: center;
            border-radius: 0;
            border:0;
            background-color: lightgray;
            margin: 0 32px;
        }
        a{
            text-decoration: none;
            color: gray;
        }
        
        
    </style>
</head>
<body>
    <nav>
        <div class = "logins">
            <h1 class = "loginline">LOGIN</h1>
        </div>

        <div>
            <form action="index.html">
	            <table >
	                <tr>
	                    <td>ID</td>
	                    <td><input type="text" name="id" id="id" placeholder="ID" style = "padding:5px;"></td>
	                </tr>
	                <tr>
	                    <td>PASSWORD</td>
	                    <td><input type="password" name="password" id="password" placeholder="PASSWORD" style = "padding:5px;"></td>
	                </tr>
	                <tr>
	                    <td colspan="2"><input type="submit" class = "ok" value = "LOGIN"></td>
	                </tr>
	                <tr>
	                    <td class = "kor" colspan="2">find <a href="idfind.html">ID</a>/<a href="pwfind.html">PASSWORD</a></td>
	                </tr>
	            </table>
	        </form>

				<div class="list">
					<ul class="menu_list">
						<li><a id="home" href="/index">HOME</a></li>
						<li><a id="artist" href="/artist" data-transition="fade">ARTIST</a></li>
						<li><a id="notice" href="/notice">NOTICE</a></li>
						<li><a id="audition" href="/audition">AUDITION</a></li>
						<li><a id="login" href="/login" data-transition='fade'>LOGIN</a></li>
					</ul>
				</div>
        </div>
    </nav>
</body>
</html>