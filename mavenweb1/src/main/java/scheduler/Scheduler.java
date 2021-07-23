package scheduler;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Scheduler {
	
	// 일정시간 마다 작업 dispatcher 서블릿에서 Namespace 'task' 추가 
	// <task:annotation-driven/> 태그 추가해야 웹이 동작할때 이파일이 실행된다.
	// @Component를 통해 해당 클래스 등록 <task:annotation-driven/> 태그를 이용해 @Scheduled 어노테이션 활성화
	@Scheduled(cron =  "0/1 * * * * *") // 분 시 일 월 요일 년도 
	public void run() {
		System.out.println("cron test!!");
	}
}
// https://noewonbun.tistory.com/671
