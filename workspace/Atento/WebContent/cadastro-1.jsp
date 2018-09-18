<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
  	<script src='https://www.google.com/recaptcha/api.js'></script>
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Cadastro</h2>
    </header>

    <section class="bloco-form-cadastro">
        <header class="bloco-titulo">
            <i class="fas fa-user-alt"></i>
            <h3>Pessoal</h3>
        </header>
        <!--Campos-->
        <form name="cadastro" id="form-cadastro">
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="nome"><b>Nome *</b></label>
                            <br>
                            <input type="text" name="nome" value="" placeholder="" required>
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="sobrenome"><b>Sobrenome *</b></label>
                            <br>
                            <input type="text" name="sobrenome" value="" placeholder="" required>
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="email"><b>E-mail *</b></label>
                            <br>
                            <input type="email" name="email" value="" placeholder="" required>
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="telefone"><b>Telefone </b></label>
                            <br>
                            <input type="number" pattern="[1-9]{2}\-[2-9][0-9]{7,8}" name="telefone" value="" placeholder="">
                            <br>
                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="celular"><b>Celular </b></label>
                            <br>
                            <input type="number" pattern="[1-9]{2}\-[2-9][0-9]{7,8}" name="celular" value="" placeholder="">
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="senha"><b>Senha *</b></label>
                            <br>
                            <input type="password" name="senha" value="" placeholder="" required>
                            <br>
                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="conformacao"><b>Confirmação *</b></label>
                            <br>
                            <input type="password" name="conformacao" value="" placeholder="" required>
                            <br>
                        </fieldset>
                    </td>

                </tr>
            </table>

            <fieldset id="form-cad-confirmacoes">
                <div id="form-rec">
                    <div class="g-recaptcha scrollable" data-sitekey="6LeJIG4UAAAAAJSGCbcB8b8-2uGYxRy8E5QpfeiB"></div>
                </div>
                <input type="checkbox" name="termos" value="aceito" required/>
                <label for="termos"><a href="#"><b>Eu li e aceito a politica de privacidade</b></a></label>
            </fieldset>

            <fieldset id="form-acoes">
                <input type="submit" onclick="window.location.href='cadastro-2.jsp'" class="form-botao" value="AVANÇAR" name="btn-proximo">
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