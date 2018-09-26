<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../atento-header.jsp" %>
<%@ page import="com.atento.entidade.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<main class="contact-form">
	<%! 
   		public String validarStr(String p) { 
      		return (p != null) ? p : "";
   		} 
	%>
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Editar perfil</h2>
    </header>
    <%if (request.getAttribute("tags") != null && request.getAttribute("candidato") != null) {
    	
		ArrayList<Tag> tags = (ArrayList<Tag>) request.getAttribute("tags");
		Candidato c = (Candidato) request.getAttribute("candidato");

	%>

    <form name="cadastro" id="form-cadastro" action="atualizar-perfil" method="post" onsubmit="return validarForm();">
    	<section class="bloco-form-cadastro form-cad-bloco">
	        <header class="bloco-titulo">
	            <i class="fas fa-user-alt"></i>
	            <h3>Pessoal</h3>
	        </header>
	        <!--Campos-->
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="nome"><b>Nome *</b></label>
                            <br>
                            <input type="text" name="nome" placeholder="" value="<%=validarStr(c.getNome()) %>" required>
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="sobrenome"><b>Sobrenome *</b></label>
                            <br>
                            <input type="text" name="sobrenome" placeholder="" value="<%=validarStr(c.getSobrenome()) %>" required>
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="telefone"><b>Telefone </b></label>
                            <br>
                            <input type="number" pattern="[1-9]{2}\-[2-9][0-9]{7,8}" name="telefone" value="<%=validarStr(c.getTelefone()) %>" placeholder="">
                            <br>
                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="celular"><b>Celular </b></label>
                            <br>
                            <input type="number" pattern="[1-9]{2}\-[2-9][0-9]{7,8}" name="celular" value="<%=validarStr(c.getCelular()) %>" value="" placeholder="">
                            <br>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="senha"><b>Senha atual *</b></label>
                            <br>
                            <input type="password" name="senha-atual" id="senha-atual" value="" placeholder="" >
                            <br>
                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="senha"><b>Senha *</b></label>
                            <br>
                            <input type="password" name="senha" id="senha" value="" placeholder="" >
                            <br>
                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="conformacao"><b>Confirmação *</b></label>
                            <br>
                            <input type="password" name="conformacao" id="conf-senha" value="" placeholder="" >
                            <br>
                        </fieldset>
                    </td>

                </tr>
            </table>
	       
	
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
    
        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo">
                <i class="fas fa-home"></i>
                <h3>Local</h3>
            </header>
            <!--Campos-->
            <!--Local-->
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="endereco"><b>Endereço</b></label>
                            <br>
                            <input type="text" name="endereco" value="<%=validarStr(c.getEndereco().getEndereco()) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="cep"><b>CEP </b></label>
                            <br>
                            <input type="number" name="cep" value="<%=validarStr(c.getEndereco().getCep()) %>" placeholder="" min="0" max="99999999">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="cidade"><b>Cidade </b></label>
                            <br>
                            <input type="text" name="cidade" value="<%=validarStr(c.getEndereco().getCidade()) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="estado"><b>Estado</b></label>
                            <br>
                            <input type="text" name="estado" value="<%=validarStr(c.getEndereco().getEstado())%>" placeholder="">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="pais"><b>País</b></label>
                            <br>
                            <input type="text" name="pais" value="<%=validarStr(c.getEndereco().getPais()) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>

                </tr>
            </table>

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

        <!--Profissional-->

        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo">
                <i class="fas fa-user-md"></i>
                <h3>Profissional</h3>
            </header>
            <!--Campos-->
            <table>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="cargo-atual"><b>Cargo atual </b></label>
                            <br>
                            <input type="text" name="cargo-atual" value="<%=validarStr(c.getCargoAtual()) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="anos"><b>Anos experiencia </b></label>
                            <br>
                            <input type="number" name="anos" value="<%=c.getAnosExp() %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="pretensao"><b>Pretensão</b></label>
                            <br>
                            <input type="number" name="pretensao" value="<%=c.getPretSalarial() %>" placeholder="" step="any">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="nasc"><b>Data nascimento</b></label>
                            <br>
                            <%SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); %>
                            <input type="date" name="nasc" value="<%=sdf.format(new Date(c.getDataNasc().getTime())) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>

                </tr>

                
            </table>

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
        
        <!-- Tags -->
        
        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo">
                <i class="fas fa-tags"></i>
                <h3>Tags</h3>
            </header>
            <!--Campos-->
            
            <table>
                <tr>
                    <td colspan="2">
                        <p>Selecione <b>tags que se enquadram no seu perfil</b>. Quanto mais tags selecionadas <b>mais visibilidade</b> seu perfil tem. Não se preocupe se não encontrar alguma tag desejada.</p>
                    	<br>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo-select2">
                            <label for="tags"><b>Tags de habilidade</b></label>
                            <br>
                            <select class="form-control" id="form-tags-select" name="tags" multiple="multiple" data-placeholder="Selecione as tags" style="width: 100%;">
			                    <%for(Tag t : tags){
			                    	boolean achouTag = false;
			                    	for(Tag tc : c.getTag()){
			                    		if(tc.getId() == t.getId()){
			            					out.print("<option value=\"" + t.getId() + "\" selected>" + t.getTag() + "</option>");
			                    			achouTag = true;
			                    		}
			                    	}
			                    	if(!achouTag)
			                    		out.print("<option value=\"" + t.getId() + "\">" + t.getTag() + "</option>");
			            		}%>
					        </select>
                            <br>

                        </fieldset>
                    </td>
                </tr>
            </table>

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

        <!--Social-->
        
        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo">
                <i class="fas fa-share-square"></i>
                <h3>Social</h3>
            </header>
            <!--Campos-->
            
            <table>
                <tr>
                    <td colspan="2">
                        <p>Se você quiser, pode informar o <b>link do ser perfil nas redes sociais</b>, isso <b>aumenta a visibilidade do seu perfil</b>. Não esqueça de informar tambem o <b>numero de amigos/seguidores/conexões</b> que você tem e a <b>frequencia de uso</b> da rede social.</p>
                    	<br>
                    </td>
                </tr>

            </table>

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
        
        <!-- Facebook -->

        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo bloco-titulo-right ">
                <h3>Facebook</h3>
                <i class="fab fa-facebook"></i>
            </header>
            <!--Campos-->
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="facebook"><b>Link facebook</b></label>
                            <br>
                            <input type="url" name="facebook" value="<%=validarStr(c.getFacebook().getUrl()) %>" placeholder="">
                            <br>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="facebook-n-amigos"><b>Número de amigos</b></label>
                            <br>
                            <input type="number" name="facebook-n-amigos" value="<%=c.getFacebook().getNumAmigos() %>" placeholder="" min="0">
                            <br>
                        </fieldset>
                    </td>
                    
                    <td>
                        <fieldset class="form-campo">
                            <label for="facebook-freq"><b>Frequência de uso</b></label>
                            <br>
                            <select name="facebook-freq">
                            	<option value="0" <%=(c.getFacebook().getFrequencia() == 0) ? "selected" : "" %>>Não uso</option>
							    <option value="3" <%=(c.getFacebook().getFrequencia() == 3) ? "selected" : "" %>>Uso muito</option>
							    <option value="2" <%=(c.getFacebook().getFrequencia() == 2) ? "selected" : "" %>>Uso as vezes</option>
							    <option value="1" <%=(c.getFacebook().getFrequencia() == 1) ? "selected" : "" %>>Uso pouco</option>
							</select>
                            <br>
                        </fieldset>
                    </td>
                </tr>     
                    
            </table>

            

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
        
        <!-- Twitter -->
        
        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo bloco-titulo-right ">
                <h3>Twitter</h3>
                <i class="fab fa-twitter"></i>
            </header>
            <!--Campos-->
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="twiter"><b>Link Twitter</b></label>
                            <br>
                            <input type="url" name="twiter" value="<%=validarStr(c.getTwitter().getUrl()) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="twitter-n-seguidores"><b>Número de seguidores</b></label>
                            <br>
                            <input type="number" name="twitter-n-seguidores" value="<%=c.getTwitter().getNumAmigos() %>" placeholder="" min="0">
                            <br>
                        </fieldset>
                    </td>
                    
                    <td>
                        <fieldset class="form-campo">
                            <label for="twitter-freq"><b>Frequência de uso</b></label>
                            <br>
                            <select name="twitter-freq">
                           		<option value="0" <%=(c.getTwitter().getFrequencia() == 0) ? "selected" : "" %>>Não uso</option>
							    <option value="3" <%=(c.getTwitter().getFrequencia() == 3) ? "selected" : "" %>>Uso muito</option>
							    <option value="2" <%=(c.getTwitter().getFrequencia() == 2) ? "selected" : "" %>>Uso as vezes</option>
							    <option value="1" <%=(c.getTwitter().getFrequencia() == 1) ? "selected" : "" %>>Uso pouco</option>
							</select>
                            <br>
                        </fieldset>
                    </td>
                </tr>     
            </table>

           

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
        
        <!-- LinkedIn -->
        
        <section class="bloco-form-cadastro form-cad-bloco">
            <header class="bloco-titulo bloco-titulo-right ">
                <h3>LinkdIn</h3>
                <i class="fab fa-linkedin"></i>
            </header>
            <!--Campos-->
            <table>
                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="linkedin"><b>Link LinkedIn</b></label>
                            <br>
                            <input type="url" name="linkedin" value="<%=validarStr(c.getLinkedin().getUrl()) %>" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="linkdin-n-conexoes"><b>Número de conexões</b></label>
                            <br>
                            <input type="number" name="linkdin-n-conexoes" value="<%=c.getLinkedin().getNumAmigos() %>" placeholder="" min="0">
                            <br>
                        </fieldset>
                    </td>
                    
                    <td>
                        <fieldset class="form-campo">
                      		<label for="twitter-freq"><b>Frequência de uso</b></label>
                            <br>
                            <select name="linkdin-freq">
                            	<option value="0" <%=(c.getLinkedin().getFrequencia() == 0) ? "selected" : "" %>>Não uso</option>
							    <option value="3" <%=(c.getLinkedin().getFrequencia() == 3) ? "selected" : "" %>>Uso muito</option>
							    <option value="2" <%=(c.getLinkedin().getFrequencia() == 2) ? "selected" : "" %>>Uso as vezes</option>
							    <option value="1" <%=(c.getLinkedin().getFrequencia() == 1) ? "selected" : "" %>>Uso pouco</option>
							</select>
                            <br>
                        </fieldset>
                    </td>
                </tr>     
            </table>

            

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
        
        <!-- Video -->
        
        <section class="bloco-form-cadastro">
            <header class="bloco-titulo  bloco-titulo-right">
            	<h3>Vídeo</h3>
                <i class="fab fa-youtube"></i>
            </header>
            <!--Campos-->
            
            <table>
            	<tr>
            		<h4>Apresentação pessoal</h4><br>
            	</tr>
                <tr>
                    <td colspan="2">
                        <p>Para completar seu perfil você pode <b>enviar um video</b> para o youtube de até <b>1 minuto</b> fazendo uma <b>apresentação pessoal</b> e anexar o link do video no campo abaixo</p>
                    	<br>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="youtube"><b>Link do vídeo</b></label>
                            <br>
                            <input type="url" name="youtube" value="<%=validarStr(c.getYoutube())%>" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
            </table>
            
            <fieldset id="form-acoes">
                <input type="submit" class="form-botao" value="AVANÇAR" name="btn-proximo">
            </fieldset>

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
    </form>
</main>



<!-- jQuery 3 -->
<script src="js/jquery.min.js"></script>
<!-- Select2 -->
<script src="js/select2.full.min.js"></script>

<script>

    $(function() {
        $('#form-tags-select').select2();
                
    });
    
    function validarForm(){
		var s1 = document.getElementById("senha");
		var s2 = document.getElementById("conf-senha");
		var s3 = document.getElementById("senha-atual");
		
		if(s1.value != ""){
			if(!/[a-zA-Z0-9@#$&_=+?!$%*\-+]{6,}/.test(s1.value)){
				alert("Senha inválida. São necessarios no mínimo 6 caracteres.");
				return false;
			}
			
			if(s1.value != s2.value){
				alert("Senha e confirmação não coencidem. ");
				return false;
			}
		}
		
		
		return true;
	}
	    
	    
</script>
<%} %>
<%@ include file="../atento-footer.jsp" %>