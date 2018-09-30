package com.atento.servlet.candidato.perfil;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.atento.entidade.Mensagem;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet("/arquivos")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String gerarMD5(String nome) {
    	try {
    		DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
    		Date date = new Date();
			MessageDigest md;
			String texto = nome;
			md = MessageDigest.getInstance("MD5");
			byte[] messageDigest = md.digest(texto.getBytes());
	        BigInteger number = new BigInteger(1, messageDigest);
	        String hash = number.toString(16);
	        return hash + dateFormat.format(date);
	        
		} catch (NoSuchAlgorithmException e1) {
			e1.printStackTrace();
		}
    	
    	return "OJBGfg8aIyy";
    }
	
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		request.setCharacterEncoding("UTF-8");
		
		
		for (Part part : request.getParts()) {
			if(part.getContentType() != null) {
				String nome = getFileName(part);
				String ext = nome.split("\\.")[nome.split("\\.").length-1];
				part.write("E:/uploads" + File.separator + gerarMD5(getFileName(part)) + "." + ext);
			}
		}

		if (cookies != null) {
			HashMap<String, String> cookiesH = new HashMap<String, String>();

			for (int i = 0; i < cookies.length; i++) {
				String name = cookies[i].getName();
				String value = cookies[i].getValue();
				cookiesH.put(name, value);
			}

			String idCandidato;
			String idSessao;

			if ((idCandidato = cookiesH.get("idCandidato")) != null && (idSessao = cookiesH.get("idSessao")) != null) {
				//CandidatoDAO cdao = new CandidatoDAO();
				//Candidato ca = cdao.get(Integer.parseInt(idCandidato));
				
				try {			

					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Atualização realizada com sucesso", "Seus arquivos foram atualizados com sucesso.", "PERFIL", "perfil");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
					
				} catch(Exception e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Houve um problema ao atualizar seus arquivos", "Infelizmente não conseguimos concluir sua atualização.<b> Já estamos trabalhando para resolver esse problema.</b> Agradecemos a sua compreensão.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
				}
			}else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/mensagem.jsp");
				Mensagem m = new Mensagem("Não logado", "Você não está logado para editar seus arquivos", "LOGAR", "login.jsp");
				request.setAttribute("mensagem", m);
				
				dispatcher.forward(request, response);
			}
		}
		
	}
	
	private String getFileName(Part part) {
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename"))
	            return content.substring(content.indexOf("=") + 2, content.length() - 1);
	        }
	    return null;
	}
	
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null) {
			HashMap<String, String> cookiesH = new HashMap<String, String>();

			for (int i = 0; i < cookies.length; i++) {
				String name = cookies[i].getName();
				String value = cookies[i].getValue();
				cookiesH.put(name, value);
			}

			String idCandidato;
			String idSessao;
			
			if ((idCandidato = cookiesH.get("idCandidato")) != null && (idSessao = cookiesH.get("idSessao")) != null) {
				
			}
		}
	}
	
	

}
