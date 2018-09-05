<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
    <header id="titulo-pagina-questao">
        <section id="titulo-pagina">
            <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
            <h2>Provas</h2>
        </section>

        <section id="questao-dados">
            <h4>Conhecimentos gerais</h4>
            <h5>Prova geral (10 questoes)</h5>
        </section>
    </header>
    <!--Bloco titulo-->
    <article class="bloco-questao">
        <header class="bloco-titulo">
            <i class="fas fa-question-circle"></i>
            <h3>Realizando prova</h3>
        </header>
        <!--Questao-->

        <section class="bloco-questao-enun">
            <div class="bloco-questao-enun-num">
                <h3>1</h3>
            </div>
            <p>Ao comprar uma propaganda em capa dupla em uma revista semanal, a empresa está aplicando o conceito de:</p>
        </section>

        <!-- Alternativas -->
        <section class="bloco-questao-alt">
            <div class="bloco-questao-alt-escolha">
                <h4>A</h4>
                <input type="radio" name="alternativa" value="a">

            </div>
            <p>Paid media</p>
        </section>

        <section class="bloco-questao-alt">
            <div class="bloco-questao-alt-escolha">
                <h4>B</h4>
                <input type="radio" name="alternativa" value="a">

            </div>
            <p>Paid media</p>
        </section>

        <section class="bloco-questao-alt">
            <div class="bloco-questao-alt-escolha">
                <h4>C</h4>
                <input type="radio" name="alternativa" value="a">

            </div>
            <p>Paid media</p>
        </section>

        <section class="bloco-questao-alt">
            <div class="bloco-questao-alt-escolha">
                <h4>D</h4>
                <input type="radio" name="alternativa" value="a">

            </div>
            <p>Paid media</p>
        </section>

        <section class="bloco-questao-alt">
            <div class="bloco-questao-alt-escolha">
                <h4>E</h4>
                <input type="radio" name="alternativa" value="a">

            </div>
            <p>Paid media</p>
        </section>

        <!-- Botao-->
        <section id="questao-bloco-botao">
            <a href="#" class="questao-link">
                <div class="questao-botao">PROXIMA</div>
            </a>
        </section>

        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"></div>
        <div class="bloco-cruz bloco-cruz-es"></div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"></div>
        <div class="bloco-cruz bloco-cruz-ds"></div>
        <div class="bloco-cruz bloco-cruz-ei bloco-cruz-v"></div>
        <div class="bloco-cruz bloco-cruz-ei"></div>
        <div class="bloco-cruz bloco-cruz-di bloco-cruz-v"></div>
        <div class="bloco-cruz bloco-cruz-di"></div>
    </article>

    <!-- NOSSO CODIGO -->
</main>
<%@ include file="atento-flooter.jsp" %>