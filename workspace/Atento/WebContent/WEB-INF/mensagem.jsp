<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.atento.entidade.Mensagem" %>
<%@ include file="../atento-header.jsp" %>
<main class="contact-form">
  	<script src='https://www.google.com/recaptcha/api.js'></script>
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Alerta</h2>
    </header>

    <section class="bloco-form-cadastro bloco-mensagem">
        <header class="bloco-titulo">
            <i class="fas fa-user-alt"></i>
            <h3>Info</h3>
        </header>
		
		<%if (request.getAttribute("mensagem") != null) { 
			Mensagem mensagem = (Mensagem) request.getAttribute("mensagem");
		%>
	    <h4><%= mensagem.getTitulo()%></h4>
	    <p><%= mensagem.getMensagem()%></p>
	    
		<section id="perfil-bloco-botao">
            <a href="<%= mensagem.getLinkBotao()%>" class="perfil-link">
                <div class="perfil-botao"><%= mensagem.getTextoBotao()%></div>
            </a>
        </section>
        
        <%} %>
        
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
<%@ include file="../atento-footer.jsp" %>