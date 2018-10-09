package com.atento.servlet.candidato.perfil.arquivo;

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

import com.atento.dao.CandidatoDAO;
import com.atento.entidade.Arquivo;
import com.atento.entidade.Candidato;
import com.atento.entidade.Mensagem;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet("/upload")
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
				try {			

					CandidatoDAO cdao = new CandidatoDAO();
					Candidato ca = cdao.get(Integer.parseInt(idCandidato));
					
					for (Part part : request.getParts()) {
						if(part.getContentType() != null) {
							String nome = getFileName(part);
							String ext = nome.split("\\.")[nome.split("\\.").length-1];
							if(part.getSize() < 5000000L) {
								if(ext.contains("docx") || ext.contains("pdf")){
									String md5 = gerarMD5(getFileName(part));
									String path = getServletContext().getRealPath("/uploads");
									part.write(path + File.separator + md5 + "." + ext); 
									String pathFile = "uploads/" + md5 + "." + ext;
									ca.addArquivo(new Arquivo(pathFile, nome.replaceAll(ext, ""), ext));
								}else {
									throw new ArquivoInvalidoException("Arquivo com formato inválido.");
								}
							}else {
								throw new ArquivoInvalidoException("Arquivo maior que 5MB.");
							}
						}
					}
					
					cdao.atualizar(ca);

					response.sendRedirect ( "arquivos" );  
					
				} catch(ArquivoInvalidoException e) {
					e.printStackTrace();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/mensagem.jsp");
					Mensagem mensagem = new Mensagem("Arquivo inválido", "Infelizmente seu arquivo é maior que <b>5MB</b> ou não contem a extensão <b>.docx .pdf</b>.", "VOLTAR", "javascript:history.back()");
					request.setAttribute("mensagem", mensagem);
					dispatcher.forward(request, response);
				
				}catch(Exception e) {
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
	

}
