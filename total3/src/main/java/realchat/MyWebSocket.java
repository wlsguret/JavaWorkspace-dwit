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
	private static final Set<Session> sessions = Collections.synchronizedSet(new HashSet<Session>());

	private static int i = 0;

	@OnOpen
	public void handleOpen(Session session) {
		System.out.println("Ŭ���̾�Ʈ�� ���ӵǾ����ϴ�.");
		System.out.println("�����ڼ�:" + (++i));
		sessions.add(session); // ���ӵ� ������ ����ҿ� ����
		try {
			for (Session s : sessions) {
				System.out.println(s.getRequestURI());
				session.getBasicRemote().sendText("������ ���Գ�!!" + i);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@OnClose
	public void handleClose() {
		System.out.println("Ŭ���̾�Ʈ�� ������ �����Ǿ����ϴ�.");
		i--;
	}

	@OnError
	public void handleError(Throwable error) {

	}

	@OnMessage
	public void handleMesagge(String message) {
		System.out.println("���ŵ� �޽���:" + message);
		try {
			for (Session s : sessions) {
				s.getBasicRemote().sendText(message);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		//return "���ſϷ�";
	}
}

