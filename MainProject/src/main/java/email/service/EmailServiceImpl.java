package email.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service("emailservice")
public class EmailServiceImpl implements EmailService {
	
	@Autowired
	JavaMailSender mail;

	@Override
	public String sendEmail(String email) {
		int code = new Random().nextInt(1000000); // 0~999999 범위의 랜덤한 수를 얻음
		MimeMessagePreparator mailInfo = new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage, "UTF-8");
				message.setTo(email);
				message.setSubject("이메일 본인인증");
				message.setText("보안코드:"+code);
				message.setFrom("admin@google.com");
			}
		};
		mail.send(mailInfo);
		return ""+code;
	}
}
