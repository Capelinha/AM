<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
    <!-- Nosso codigo -->
    <header id="titulo-pagina">
        <i class="far fa-newspaper" id="titulo-pagina-icone"></i>
        <h2>Perfil</h2>
    </header>

    <!--Pessoal-->

    <section class="bloco-perfil" id="bloco-perfil-primeiro">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-user"></i>
            <h3>Pessoal</h3>
        </header>
        <!-- Texto do bloco -->
        <table class="perfil-table-dados">
            <tr>
                <td><b>Nome:</b> Mateus</td>
                <td><b>Sobrenome:</b> de Oliveira Igreja</td>
            </tr>
            <tr>
                <td><b>E-mail:</b> m.oliveiraigreja@Gmail.com</td>
                <td><b>Nascimento: </b> 00/00/00</td>

            </tr>
            <tr>
                <td><b>Celular:</b> 96376-6372</td>
                <td><b>Telefone:</b> 2148-1233</td>
            </tr>
        </table>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!--Local-->

    <section class="bloco-perfil">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-home"></i>
            <h3>Local</h3>
        </header>
        <!-- Texto do bloco -->
        <table class="perfil-table-dados">
            <tr>
                <td><b>Endereço: </b> Lins de vasconcelos, 1222</td>
            </tr>
            <tr>
                <td><b>CEP: </b> 02541-554 </td>
                <td><b>Cidade:</b> São Paulo </td>

            </tr>
            <tr>
                <td><b>Estado:</b> São Paulo</td>
                <td><b>País:</b> Brasil</td>
            </tr>
        </table>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Profissional -->

    <section class="bloco-perfil">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-user-tie"></i>
            <h3>Profissional</h3>
        </header>
        <!-- Texto do bloco -->

        <table class="perfil-table-dados">
            <tr>
                <td><b>Cargo atual:</b> Analista de RH</td>
            </tr>
            <tr>
                <td><b>Pretensão salarial: </b>R$ 0000,00</td>
            </tr>
            <tr>
                <td><b>Tempo de experiencia:</b> 10 anos</td>
            </tr>
            <tr>
                <td><b>Tags:</b> awgawg,agwag,gaw</td>
            </tr>
        </table>

        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Social -->

    <section class="bloco-perfil">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-share-square"></i>
            <h3>Social</h3>
        </header>
        <!-- Texto do bloco -->
        <table class="perfil-table-dados">
            <tr id="bloco-perfil-social">
                <td>
                    <a href="#">
                        <div>
                            <i class="fab fa-facebook"></i>
                            <p>Facebook</p>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="#">
                        <div>
                            <i class="fab fa-twitter"></i>
                            <p>Twitter</p>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="#">
                        <div>
                            <i class="fab fa-linkedin"></i>
                            <p>Linkedin</p>
                        </div>
                    </a>
                </td>
            </tr>
        </table>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Vagas -->

    <section class="bloco-perfil">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-hand-point-up"></i>
            <h3>Vagas</h3>
        </header>
        <!-- Texto do bloco -->
        <table id="perfil-tabela">
            <tr>
                <th>#</th>
                <th>Título</th>
                <th>Data</th>
                <th>Status</th>
                <th>Meu status</th>
            </tr>

            <tr>
                <td>1</td>
                <td>Analista de RH</td>
                <td>01/09</td>
                <td>Fechada</td>
                <td>Aprovado</td>
            </tr>
        </table>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Provas -->

    <section class="bloco-perfil">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-question-circle"></i>
            <h3>Provas</h3>
        </header>
        <!-- Texto do bloco -->
        <table id="perfil-tabela">
            <tr>
                <th>Título</th>
                <th>Data</th>
                <th># Vaga</th>
                <th>Nota</th>
            </tr>

            <tr>
                <td>Storytelling</td>
                <td>01/09</td>
                <td>1</td>
                <td>10</td>
            </tr>
        </table>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Entrevistas -->

    <section class="bloco-perfil">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-users"></i>
            <h3>Entrevistas</h3>
        </header>
        <!-- Texto do bloco -->
        <table id="perfil-tabela">
            <tr>
                <th>#</th>
                <th>Data</th>
                <th>Hora</th>
                <th># Vaga</th>
            </tr>

            <tr>
                <td>1</td>
                <td>01/09</td>
                <td>14:24</td>
                <td>1</td>
            </tr>
        </table>
        <!--Cantos com cruz-->
        <div class="bloco-cruz bloco-cruz-es bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-es"> </div>
        <div class="bloco-cruz bloco-cruz-ds bloco-cruz-v"> </div>
        <div class="bloco-cruz bloco-cruz-ds"> </div>
    </section>

    <!-- Arquivos -->

    <section class="bloco-perfil" id="bloco-perfil-ultimo">
        <!-- Titulo do bloco -->
        <header class="bloco-titulo">
            <i class="fas fa-copy"></i>
            <h3>Arquivos</h3>
        </header>
        <!-- Texto do bloco -->
        <section id="bloco-perfil-arquivo-lista">
            <a href="">
                <article class="bloco-perfil-arquivo">
                    <i class="fas fa-file-invoice"></i>
                    <p>curriculo.pdf</p>
                </article>
            </a>

            <a href="">
                <article class="bloco-perfil-arquivo">
                    <i class="fas fa-file-invoice"></i>
                    <p>curriculo.pdf</p>
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

        <section id="perfil-bloco-botao">
            <a href="#" class="perfil-link">
                <div class="perfil-botao">EDITAR</div>
            </a>
            <a href="#" class="perfil-link">
                <div class="perfil-botao">DESTRUIR CONTA</div>
            </a>
        </section>
    </section>
</main>
<%@ include file="atento-flooter.jsp" %>