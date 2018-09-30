<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page import="com.atento.entidade.*" %>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Cadastro</h2>
    </header>
    
    <!-- Arquivos -->

    <section class="bloco-perfil" id="bloco-perfil-ultimo">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-copy"></i>
            <h3>Arquivos</h3>
        </header>
        <!-- Texto do bloco -->
        <section id="bloco-perfil-arquivo-lista">

        	<% 
        		if (request.getAttribute("candidato") != null) { 
					Candidato c = (Candidato) request.getAttribute("candidato");
	        		for(Arquivo a : c.getArquivo()){
	        			out.print("<a href=\""+ a.getArquivo() + "\">" +
	        						"<article class=\"bloco-perfil-arquivo\">" +
	        							"<a href=\"" + "excluir?id=" + a.getId() + "\" class=\"botao-x\"><i class=\"fas fa-times-circle\"></i></a>" +
	                        			"<i class=\"fas fa-file-invoice\"></i>" +
	                        			"<p>"+ ((a.getNome().length() > 8) ? a.getNome().substring(0, 9) + "." : a.getNome()) + a.getExtensao() + "</p>" +
	                    			"</article>" +
	                			"</a>");	
	        		}
        		}
        		
        	%>

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

    </section>
    <br>
    <br>
    <br>

    <section class="bloco-form-arquivo">
        <header class="bloco-titulo">
            <i class="fas fa-file-alt"></i>
            <h3>Upload</h3>
        </header>
        <!--Uplaod-->
        <form name="arquivo" id="form-arquivo" method="post" action="upload" enctype="multipart/form-data">
            <figure>
                <i class="fas fa-file-word" id="form-arquivo-figuras-outros"></i>
                <i class="fas fa-file-pdf" id="form-arquivo-figuras-pdf"></i>
                <i class="fas fa-file-archive" id="form-arquivo-figuras-outros"></i>
            </figure>
            <p>Selecione seu curriculo, carta de apresentação ou qualquer outro arquivo para para realizar o upload. </p>
            <input type="file" id="form-arquivo-input" name="arquivo" value="" placeholder="" required>
            <h4> Qualquer arquivo PDF ou WORD <br>No maximo 5MB </h4>
            <fieldset id="form-acoes">
                <input type="submit" class="form-botao" value="ENVIAR" name="btn-enviar">
            </fieldset>
        </form>

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