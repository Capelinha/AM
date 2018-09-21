<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Cadastro</h2>
    </header>

    <form name="cadastro" id="form-cadastro">
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
                            <input type="text" name="endereco" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="cep"><b>CEP </b></label>
                            <br>
                            <input type="number" name="cep" value="" placeholder="" min="0" max="99999999">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="cidade"><b>Cidade </b></label>
                            <br>
                            <input type="text" name="cidade" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="estado"><b>Estado</b></label>
                            <br>
                            <input type="text" name="estado" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="pais"><b>País</b></label>
                            <br>
                            <input type="text" name="pais" value="" placeholder="">
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
                            <input type="text" name="cargo-atual" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="anos"><b>Anos experiencia </b></label>
                            <br>
                            <input type="number" name="anos" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>

                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="pretensao"><b>Pretensão</b></label>
                            <br>
                            <input type="number" name="pretensao" value="" placeholder="" step="any">
                            <br>

                        </fieldset>
                    </td>

                    <td>
                        <fieldset class="form-campo">
                            <label for="nasc"><b>Data nascimento</b></label>
                            <br>
                            <input type="date" name="nasc" value="" placeholder="">
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
			                    <option>Alabama</option>
			                    <option>Alaska</option>
			                    <option>California</option>
			                    <option>Delaware</option>
			                    <option>Tennessee</option>
			                    <option>Texas</option>
			                    <option>Washington</option>
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
                            <input type="url" name="facebook" value="" placeholder="">
                            <br>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="facebook-n-amigos"><b>Número de amigos</b></label>
                            <br>
                            <input type="number" name="facebook-n-amigos" value="0" placeholder="" min="0">
                            <br>
                        </fieldset>
                    </td>
                    
                    <td>
                        <fieldset class="form-campo">
                            <label for="facebook-freq"><b>Frequência de uso</b></label>
                            <br>
                            <select name="facebook-freq">
                            	<option value="0" selected>Não uso</option>
							    <option value="3">Uso muito</option>
							    <option value="2">Uso as vezes</option>
							    <option value="1">Uso pouco</option>
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
                            <input type="url" name="twiter" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="twitter-n-seguidores"><b>Número de seguidores</b></label>
                            <br>
                            <input type="number" name="twitter-n-seguidores" value="0" placeholder="" min="0">
                            <br>
                        </fieldset>
                    </td>
                    
                    <td>
                        <fieldset class="form-campo">
                            <label for="twitter-freq"><b>Frequência de uso</b></label>
                            <br>
                            <select name="twitter-freq">
                           		<option value="0" selected>Não uso</option>
							    <option value="3">Uso muito</option>
							    <option value="2">Uso as vezes</option>
							    <option value="1">Uso pouco</option>
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
                            <input type="url" name="linkedin" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fieldset class="form-campo">
                            <label for="linkdin-n-conexoes"><b>Número de conexões</b></label>
                            <br>
                            <input type="number" name="linkdin-n-conexoes" value="0" placeholder="" min="0">
                            <br>
                        </fieldset>
                    </td>
                    
                    <td>
                        <fieldset class="form-campo">
                            <label for="linkdin-freq"><b>Frequência de uso</b></label>
                            <br>
                            <select name="linkdin-freq">
                            	<option value="3" selected>Não uso</option>
							    <option value="2">Uso muito</option>
							    <option value="1">Uso as vezes</option>
							    <option value="0">Uso pouco</option>
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
                            <input type="url" name="youtube" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
            </table>
            
            <fieldset id="form-acoes">
                <input type="submit" onclick="window.location.href='cadastro-3.jsp'" class="form-botao" value="AVANÇAR" name="btn-proximo">
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
	    
	    
</script>
<%@ include file="atento-footer.jsp" %>