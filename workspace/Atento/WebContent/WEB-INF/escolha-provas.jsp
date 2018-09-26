<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../atento-header.jsp" %>
<%@ page import="com.atento.entidade.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Provas</h2>
    </header>
    
    <%if (request.getAttribute("tentativas") != null) { 
    	ArrayList<Tentativa> ta = (ArrayList<Tentativa>) request.getAttribute("tentativas");
		
	%>
    
    <!--Bloco provas pendentes-->
    <section class="bloco-provas">
        <header class="bloco-titulo">
            <i class="fas fa-question-circle"></i>
            <h3>Provas pendentes</h3>
        </header>
        <!--Provas-->
        <% for(Tentativa t : ta){
			String conteudos = "";
			for(DadosProva p : t.getVaga().getDadosProva())
				conteudos += p.getProva().getAreaConhecimento() + "; ";
        
        	if(t.getStatus() == 1) out.print(
        		"<a href=\"questao.jsp\">" +
	                "<article class=\"bloco-int-prova\">" +
	                    "<h4>" + t.getVaga().getTitulo() + "</h4>" +
	                    "<h5>Multipla escolha</h5>" +
	                    "<p>Conteúdos: " + conteudos + "</p>" +
	                    "<div class=\"bloco-int-prova-nota\">" +
	                        "<h4>NOTA<br>--</h4>" +
	                    "</div>" +
	                "</article>" +
            	"</a>"
           );}%>
        

        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
        <div class="bloco-cruz bloco-cruz-ei bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ei"> </div>
        <div class="bloco-cruz bloco-cruz-di bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-di"> </div>
    </section>

    <!--Bloco provas realizadas-->
    <section class="bloco-provas">
        <header class="bloco-titulo">
            <i class="far fa-check-square"></i>
            <h3>Provas realizadas</h3>
        </header>
        <!--Provas-->
        <% for(Tentativa t : ta){
				String conteudos = "";
				for(DadosProva p : t.getVaga().getDadosProva())
					conteudos += p.getProva().getAreaConhecimento() + "; ";
        
	        	if(t.getStatus() == 2) out.print(
	        		"<a href=\"questao.jsp\">" +
		                "<article class=\"bloco-int-prova\">" +
		                    "<h4>" + t.getVaga().getTitulo() + "</h4>" +
		                    "<h5>Multipla escolha</h5>" +
		                    "<p>Conteúdos: " + conteudos + "</p>" +
		                    "<div class=\"bloco-int-prova-nota\">" +
		                        "<h4>NOTA<br>" + t.getNota() + "</h4>" +
		                    "</div>" +
		                "</article>" +
	            	"</a>"
            	);}%>

		<!--Cantos com cruz-->
		<div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
		<div class="bloco-cruz bloco-cruz-es"> </div>
		<div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
		<div class="bloco-cruz bloco-cruz-ds"> </div>
		<div class="bloco-cruz bloco-cruz-ei bloco-cruz-v"> </div>
		<div class="bloco-cruz bloco-cruz-ei"> </div>
		<div class="bloco-cruz bloco-cruz-di bloco-cruz-v"> </div>
		<div class="bloco-cruz bloco-cruz-di"> </div>
	</section>
</main>
<%}%>
<%@ include file="../atento-footer.jsp" %>
           