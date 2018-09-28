<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.atento.entidade.*" %>
<%@ include file="../atento-header.jsp" %>
<main class="contact-form">
    <header id="titulo-pagina-questao">
        <section id="titulo-pagina">
            <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
            <h2>Provas</h2>
        </section>
        
        <%if (request.getAttribute("questao") != null) { 
			Questao q = (Questao) request.getAttribute("questao");
		%>

        <section id="questao-dados">
            <h4><%=request.getAttribute("nomeProva") %></h4>
            <h5>Prova geral (<%=request.getAttribute("nRespostas")+"/"+ request.getAttribute("nQuestoes") %> questoes)</h5>
        </section>
    </header>
    <!--Bloco titulo-->
    <article class="bloco-questao">
        <header class="bloco-titulo">
            <i class="fas fa-question-circle"></i>
            <h3>Realizando prova</h3>
        </header>
        <!--Questao-->
		
		<form action="questao" method="post">
			<input type="hidden" name="idTentativa" value="<%= request.getAttribute("idTentativa")%>">
			<input type="hidden" name="idQuestao" value="<%= q.getId()%>">
	        <section class="bloco-questao-enun">
	            <div class="bloco-questao-enun-num">
	                <h3><%=request.getAttribute("nRespostas")%></h3>
	            </div>
	            <p><%=q.getTexto() %></p>
	        </section>
	
	        <!-- Alternativas -->
	        <section class="bloco-questao-alt">
	            <div class="bloco-questao-alt-escolha">
	                <h4>A</h4>
	                <input type="radio" name="alternativa" value="a" required>
	
	            </div>
	            <p><%=q.getAlternativaA() %></p>
	        </section>
	
	        <section class="bloco-questao-alt">
	            <div class="bloco-questao-alt-escolha">
	                <h4>B</h4>
	                <input type="radio" name="alternativa" value="b">
	
	            </div>
	            <p><%=q.getAlternativaB() %></p>
	        </section>
	
	        <section class="bloco-questao-alt">
	            <div class="bloco-questao-alt-escolha">
	                <h4>C</h4>
	                <input type="radio" name="alternativa" value="c">
	
	            </div>
	            <p><%=q.getAlternativaC() %></p>
	        </section>
	
	        <section class="bloco-questao-alt">
	            <div class="bloco-questao-alt-escolha">
	                <h4>D</h4>
	                <input type="radio" name="alternativa" value="d">
	
	            </div>
	            <p><%=q.getAlternativaD() %></p>
	        </section>
	
	        <section class="bloco-questao-alt">
	            <div class="bloco-questao-alt-escolha">
	                <h4>E</h4>
	                <input type="radio" name="alternativa" value="e">
	
	            </div>
	            <p><%=q.getAlternativaE() %></p>
	        </section>
	
	        <!-- Botao-->
	        <section id="questao-bloco-botao">
	            <a href="#" class="questao-link">
	                <input type="submit" class="questao-botao" value="PROXIMA">
	            </a>
	        </section>
		</form>
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
    
    <%} %>

    <!-- NOSSO CODIGO -->
</main>
<%@ include file="../atento-footer.jsp" %>