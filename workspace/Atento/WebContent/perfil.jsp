<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.atento.entidade.*" %>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
	<%! 
   		public String validarStr(String p) { 
      		return (p != null) ? p : "Não informado";
   		} 
	%>
    <!-- Nosso codigo -->
    <header id="titulo-pagina">
        <i class="far fa-newspaper" id="titulo-pagina-icone"></i>
        <h2>Perfil</h2>
    </header>
	<%if (request.getAttribute("candidato") != null) { 
		Candidato c = (Candidato) request.getAttribute("candidato");
	%>
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
                <td><b>Nome:</b> <%=c.getNome() %></td>
                <td><b>Sobrenome:</b> <%=c.getSobrenome() %></td>
            </tr>
            <tr>
                <td><b>E-mail:</b> <%=c.getEmail() %></td>
                <%SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");%>
                <td><b>Nascimento: </b> <% if(c.getDataNasc() != null) out.print(sdf.format(new Date(c.getDataNasc().getTime()))); else out.print("Não informado");%></td>

            </tr>
            <tr>
                <td><b>Celular:</b> <%=validarStr(c.getCelular())%></td>
                <td><b>Telefone:</b> <%=validarStr(c.getTelefone())%></td>
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
                <td><b>Endereço: </b> <%=validarStr(c.getEndereco().getEndereco()) %></td>
            </tr>
            <tr>
                <td><b>CEP: </b> <%=validarStr(c.getEndereco().getCep())%> </td>
                <td><b>Cidade:</b> <%=validarStr(c.getEndereco().getCidade()) %> </td>

            </tr>
            <tr>
                <td><b>Estado:</b> <%=validarStr(c.getEndereco().getEstado()) %></td>
                <td><b>País:</b> <%=validarStr(c.getEndereco().getPais()) %></td>
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
                <td><b>Cargo atual:</b> <%=validarStr(c.getCargoAtual()) %></td>
            </tr>
            <tr>
            	<% DecimalFormat df = new DecimalFormat("R$ 0.00");%>
                <td><b>Pretensão salarial: </b> <%=df.format(c.getPretSalarial())%></td>
            </tr>
            <tr>
                <td><b>Tempo de experiencia:</b> <%=c.getAnosExp() %> anos</td>
            </tr>
            <tr>
                <td><b>Tags:</b> <% for(Tag t : c.getTag()){
                						out.print(t.getTag());
                						}%> </td>
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
                    <a href="<%=validarStr(c.getFacebook().getUrl())%>">
                        <div>
                            <i class="fab fa-facebook" <%=(c.getFacebook().getUrl() != null) ? "style='color: #3b5998'" : "" %>></i>
                            <p>Facebook</p>
                            <h6><%= c.getFacebook().getNumAmigos()%> amigos</h6>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="<%=validarStr(c.getTwitter().getUrl())%>">
                        <div>
                            <i class="fab fa-twitter" <%=(c.getTwitter().getUrl() != null) ? "style='color: #33CCFF'" : "" %>></i>
                            <p>Twitter</p>
                            <h6><%=c.getTwitter().getNumAmigos()%> seguidores</h6>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="<%=validarStr(c.getLinkedin().getUrl())%>">
                        <div>
                            <i class="fab fa-linkedin" <%=(c.getLinkedin().getUrl() != null) ? "style='color: #4875B4'" : "" %>></i>
                            <p>Linkedin</p>
                            <h6><%=c.getLinkedin().getNumAmigos()%> conexões</h6>
                        </div>
                    </a>
                </td>
                <td>
                    <a href="<%=validarStr(c.getYoutube())%>">
                        <div>
                            <i class="fab fa-youtube" <%=(c.getYoutube() != null) ? "style='color: #FF3333'" : "" %>></i>
                            <p>Vídeo</p>
                            <h6>Apresntação</h6>
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
            	<th># Vaga</th>
                <th>Título da vaga</th>
                <th>Data</th>
                <th>Nota</th>
            </tr>

            <tr>
            	<td>1</td>
                <td>Analista de RH</td>
                <td>01/09</td>
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
            <a href="cadastro-1.jsp" class="perfil-link">
                <div class="perfil-botao">EDITAR PERFIL</div>
            </a>
            <a href="#" class="perfil-link">
                <div class="perfil-botao">DESTRUIR CONTA</div>
            </a>
        </section>
    </section>
    <%} %>
</main>
<%@ include file="atento-footer.jsp" %>