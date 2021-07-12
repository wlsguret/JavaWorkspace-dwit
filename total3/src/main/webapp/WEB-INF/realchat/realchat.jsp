<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
var websocket=new WebSocket("ws://192.168.0.9:8080/wsocket");

websocket.onopen = function(message) {
   
}

websocket.onclose = function(message) {
   
}

websocket.onerror = function(message) {
   
}

websocket.onmessage = function(message) {
   document.getElementById("message").innerHTML += message.data + "<br>";    
}

function sendmessage() {
   websocket.send("${sessionScope.id}:"+document.getElementById("sendtext").value);
}

function Enter_Check(){
    var text = document.getElementById("sendtext").value;
    if(text == 'clear') {
      //document.getElementById("message").innerHTML = "";
       document.getElementById("message").textContent = "";
    }
    
    // 엔터키의 코드는 13입니다.
   if(event.keyCode == 13){
        sendmessage();  // 실행할 이벤트
        document.getElementById("sendtext").value="";
   }
}
</script>    
<section>
<input type="text" name="sendtext" id="sendtext" onkeydown="Enter_Check();">
<input type="button" value="send" onclick="sendmessage()"><br>
<div id="message"></div>

</section>