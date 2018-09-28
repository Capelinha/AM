<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../atento-header.jsp" %>
<%@ page import="com.atento.entidade.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="far fa-newspaper" id="titulo-pagina-icone"></i>
        <h2>Informações da vaga</h2>
    </header>
    
    <%if (request.getAttribute("vaga") != null) { 
		Vaga v = (Vaga) request.getAttribute("vaga");
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		DecimalFormat df = new DecimalFormat("R$ 0.00");
		
	%>
	
    <!-- Cabeçalho da vaga -->

    <header id="cabecalho-detvaga">
        <i class="far fa-building"></i>
        <section id="cabecalho-detvaga-texto">
            <h2> <%= v.getTitulo()  %></h2>
            <h4> <%= v.getArea() %></h4>
        </section>
        <a href="candidatar?=<%=v.getId() %>" id="cabecalho-detvaga-link">
            <div id="cabecalho-detvaga-botao">CANDIDATAR-SE</div>
        </a>
    </header>

    <!--Descricao-->
    <section class="bloco-detvaga" id="bloco-detvaga-primeiro">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-cogs"></i>
            <h3>Descrição</h3>
        </header>
        <!-- Texto do bloco -->
        <p>
            <%= v.getDescricao().replaceAll("\n","<br />") %>
        </p>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!--Requisitos-->

    <section class="bloco-detvaga">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="far fa-check-square"></i>
            <h3>Requisitos</h3>
        </header>
        <!-- Texto do bloco -->
        <p>
            <%= v.getRequisitos().replaceAll("\n","<br />") %>

        </p>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Beneficios -->

    <section class="bloco-detvaga">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-trophy"></i>
            <h3>Benefícios</h3>
        </header>
        <!-- Texto do bloco -->
        <p>
            <%= v.getBeneficios().replaceAll("\n","<br />") %>
        </p>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Local -->

    <section class="bloco-detvaga">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-map-marker-alt"></i>
            <h3>Local</h3>
        </header>
        <!-- Texto do bloco -->
        <p><%= v.getEndereco().getCidade() %> / <%= v.getEndereco().getEstado()%> (<%= v.getEndereco().getPais() %>)</p>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Informações -->

    <section class="bloco-detvaga" id="bloco-detvaga-ultimo">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-info-circle"></i>
            <h3>Informações</h3>
        </header>
        <!-- Texto do bloco -->
        <section id="bloco-detvaga-info">

            <section class="bloco-detvaga-info-bloco" id="bloco-detvaga-info-bloco-f">
                <i class="far fa-money-bill-alt"></i>
                <div class="bloco-detvaga-info-texto">
                    <h5>Salário</h5>
                    <h4><%= (v.getSalario() <= 0) ? "Não informado" : df.format(v.getSalario())%></h4>
                </div>
            </section>

            <section class="bloco-detvaga-info-bloco" id="bloco-detvaga-info-bloco-l">
                <i class="far fa-calendar-check"></i>
                <div class="bloco-detvaga-info-texto">
                    <h5>Data final</h5>
                    <h4><time datetime="<%= sdf.format(new Date(v.getDataDesejada().getTime())) %>"><%= sdf.format(new Date(v.getDataDesejada().getTime())) %></time></h4>
                </div>
            </section>

        </section>
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
    <%} %>
</main>
<%@ include file="../atento-footer.jsp" %>