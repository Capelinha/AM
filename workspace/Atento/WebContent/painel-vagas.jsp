<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<%@ page import="com.atento.entidade.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<main class="contact-form" id="painel-vagas">
    <div id="titulo-pagina">
        <i class="fas fa-bullhorn" id="titulo-pagina-icone"></i>
        <h2>Painel de vagas</h2>
    </div>
	
	<%if (request.getAttribute("vagas") != null) { 
		List<Vaga> vagas = (ArrayList<Vaga>) request.getAttribute("vagas");
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		for(Vaga v : vagas){
	%>
	
	
    <%= "<a href=\"" + "detalhes-vaga?id=" + v.getId() + "\">" +
            "<article class=\"bloco-vaga\">" +
			    "<!--Dados principais da vaga-->" +
			    "<h4 class=\"bloco-vaga-titulo\">" + v.getTitulo() + "</h4>" +
			    "<h5 class=\"bloco-vaga-tipo\">" + v.getArea() + "</h5>" +
			    "<p class=\"bloco-vaga-texto\">" + ((v.getDescricao().length() < 150) ? v.getDescricao() : v.getDescricao().substring(0, 150)) + "...</p>" +
			
			    "<!--Local e data desejada-->" +
			    "<section class=\"bloco-vaga-det\">" +
			    "    <div class=\"bloco-vaga-local\">" +
			    "        <i class=\"fas fa-map-marker-alt\"></i>" +
			    "        <h5>"+ v.getEndereco().getCidade() + "/" + v.getEndereco().getEstado() + " - " + v.getEndereco().getPais() + "</h5>" +
			    "    </div>" +
			    "    <div class=\"bloco-vaga-data\">" +
			    "        <i class=\"far fa-calendar-check\"></i>" +
			    "        <h5><time datetime=\"" + sdf.format(new Date(v.getDataDesejada().getTime())) + "\" >" + sdf.format(v.getDataDesejada().getTime()) + "</date></h5>" +
			    "    </div>" +
			    "</section>" +
			
			    "<!--Cantos com cruz-->" +
			    "<div class=\"bloco-cruz bloco-cruz-es bloco-cruz-v\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-es\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-ds bloco-cruz-v\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-ds\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-ei bloco-cruz-v\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-ei\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-di bloco-cruz-v\"> </div>" +
			    "<div class=\"bloco-cruz bloco-cruz-di\"> </div>" +
			"</article>" +
			"</a>" 
		%>
    <%	} %>
    <%} %>

</main>
<%@ include file="atento-footer.jsp" %>
        