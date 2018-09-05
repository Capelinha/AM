<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>

<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Conta</h2>
    </header>

    <section class="bloco-form-login">
        <header class="bloco-titulo">
            <i class="fas fa-sign-in-alt"></i>
            <h3>Login</h3>
        </header>
        <!--Provas-->
        <form name="login" id="form-login">
            <fieldset class="form-campo">
                <label for="email"><b>Email</b></label>
                <br>
                <i class="fas fa-at"></i>
                <input type="text" name="email" value="" placeholder="" required>
                <br>
            </fieldset>
            <fieldset class="form-campo">
                <label for="senha"><b>Senha</b></label>
                <br>
                <i class="fas fa-key"></i>
                <input type="password" class="form-campo" name="senha" value="" placeholder="" required>
            </fieldset>
            <fieldset id="form-acoes">
                <input type="button" class="form-botao" value="CADASTRO" name="btn-cadastrar">
                <input type="submit" class="form-botao" value="LOGIN" name="btn-login">
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