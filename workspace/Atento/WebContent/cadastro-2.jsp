<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="atento-header.jsp" %>
<main class="contact-form">
    <header id="titulo-pagina">
        <i class="fas fa-file-alt" id="titulo-pagina-icone"></i>
        <h2>Cadastro</h2>
    </header>

    <form name="cadastro" id="form-cadastro">
        <section class="bloco-form-cadastro" id="form-cad-bloco">
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

        <section class="bloco-form-cadastro" id="form-cad-bloco">
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

        <section class="bloco-form-cadastro">
            <header class="bloco-titulo">
                <i class="fas fa-share-square"></i>
                <h3>Social</h3>
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
                    <td colspan="2">
                        <fieldset class="form-campo">
                            <label for="linkedin"><b>Link LinkedIn</b></label>
                            <br>
                            <input type="url" name="linkedin" value="" placeholder="">
                            <br>

                        </fieldset>
                    </td>
                </tr>
            </table>

            <fieldset id="form-acoes">
                <input type="submit" class="form-botao" value="AVANÇAR" onclick="window.location.href='cadastro-3.jsp'" name="btn-proximo">
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