<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<%@ page import="com.atento.entidade.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Provas</h2>
    </header>
    
    <%if (request.getAttribute("provas") != null) { 
		List<Vaga> vagas = (ArrayList<Vaga>) request.getAttribute("provas");
		for(Vaga v : vagas){
	%>
    
    <!--Bloco provas pendentes-->
    <section class="bloco-provas">
        <header class="bloco-titulo">
            <i class="fas fa-question-circle"></i>
            <h3>Provas pendentes</h3>
        </header>
        <!--Provas-->
        <a href="questao.jsp">
            <article class="bloco-int-prova">
                <h4>Analista de RH</h4>
                <h5>Multipla escolha</h5>
                <p>Conteúdos: Conhecimentos geral</p>
                <div class="bloco-int-prova-nota">
                    <h4>NOTA<br>--</h4></div>
            </article>
        </a>

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
        <a href="questao.jsp">
            <article class="bloco-int-prova">
                <h4>Consultor de marketing</h4>
                <h5>Multipla escolha</h5>
                <p>Conteúdos: Storytelling e Conhecimentos geral</p>
                <div class="bloco-int-prova-nota">
                    <h4>NOTA<br>10<h4>
                </div>
			</article>
		</a>

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
<%@ include file="atento-footer.jsp" %>
           