<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Cadastro</h2>
    </header>

    <section class="bloco-form-arquivo">
        <header class="bloco-titulo">
            <i class="fas fa-file-alt"></i>
            <h3>Arquivo</h3>
        </header>
        <!--Provas-->
        <form name="arquivo" id="form-arquivo">
            <figure>
                <i class="fas fa-file-word" id="form-arquivo-figuras-outros"></i>
                <i class="fas fa-file-pdf" id="form-arquivo-figuras-pdf"></i>
                <i class="fas fa-file-archive" id="form-arquivo-figuras-outros"></i>
            </figure>
            <p>Arraste seu curriculo, carta de apresentação ou qualquer outro arquivo para cá para realizar o upload. </p>
            <input type="file" id="form-arquivo-input" name="arquivo" value="" placeholder="" required>
            <h4> Qualquer arquivo PDF ou WORD <br>No maximo 5MB </h4>
            <fieldset id="form-acoes">
                <input type="submit" class="form-botao" onclick="window.location.href='perfil.jsp'" value="ENVIAR" name="btn-enviar">
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