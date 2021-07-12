package realchat;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import java.io.IOException;
import java.util.*;

// ver 4.0
@ServerEndpoint(value = "/wsocket")
public class MyWebSocket {
	@SuppressWarnings("unused")
	private static final Set<Session> sessions = Collections.synchronizedSet(new HashSet<Session>());

	private static int i = 0;

	@OnOpen
	public void handleOpen(Session session) {
		System.out.println("클라이언트가 접속되었습니다.");
		System.out.println("접속자수:" + (++i));
		sessions.add(session); // 접속된 세션을 저장소에 보관
		try {
			for (Session s : sessions) {
				System.out.println(s.getRequestURI());
				session.getBasicRemote().sendText("누군가 들어왔네!!" + i);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@OnClose
	public void handleClose() {
		System.out.println("클라이언트가 접속이 해제되었습니다.");
		i--;
	}

	@OnError
	public void handleError(Throwable error) {

	}

	@OnMessage
	public void handleMesagge(String message) {
		System.out.println("수신된 메시지:" + message);
		try {
			for (Session s : sessions) {
				s.getBasicRemote().sendText(message);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		//return "수신완료";
	}
}

