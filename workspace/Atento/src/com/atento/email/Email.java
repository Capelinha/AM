package com.atento.email;

import java.security.Security;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

import com.sun.mail.smtp.SMTPTransport;

public class Email {

	private static final String SMTP = "smtp.zoho.com";
	private static final String PORT = "465";
	private static final String USUARIO = "atento@nuplex.com.br";
	private static final String SENHA = "+=Atento0110+=";

	public static boolean enviar(String para, String assunto, String mensagem) {
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

		Properties props = System.getProperties();
		props.setProperty("mail.smtps.host", SMTP);
		props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.port",PORT);
		props.setProperty("mail.smtp.socketFactory.port", PORT);
		props.setProperty("mail.smtps.auth", "true");

		props.put("mail.smtps.quitwait", "false");

		Session session = Session.getInstance(props, null);

		final MimeMessage msg = new MimeMessage(session);

		try {
			msg.setFrom(new InternetAddress(USUARIO));
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(para, false));

			msg.setSubject(assunto);
			msg.setText(mensagem, "utf-8");
			msg.setSentDate(new Date());

			SMTPTransport t = (SMTPTransport) session.getTransport("smtps");

			t.connect(SMTP, USUARIO, SENHA);
			t.sendMessage(msg, msg.getAllRecipients());
			t.close();
			return true;
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return false;
	}
}
