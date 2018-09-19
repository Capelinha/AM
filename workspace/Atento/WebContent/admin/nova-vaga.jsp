<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	        <h1>
		        Nova vaga
		        <small></small>
			    <div class="botao-cadastrar" id="botao-clonar">
			      	<a href="#">Clonar vaga </a>
			    </div>
		    </h1>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Principal</a></li>
	            <li class="active">Vagas</li>
	            <li class="active">Nova vaga</li>
	        </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	    
	    	<!-- Dialogo de clonar vaga -->
            <dialog id="dialogo-vaga-clonar">
				<div class="box box-warning">
		            <div class="box-header with-border">
		              <h3 class="box-title">Clonar vaga</h3>
		            </div>
		            <!-- /.box-header -->
		            <div class="box-body">
	              		<form role="form">
			                <div class="form-group">
				                <label>Título da vaga</label>
				                <select class="form-control " style="width: 100%;">
				                  <option selected="selected">Nenhuma</option>
				                  <option>Analista de RH</option>
				                  <option>Consultor de marketing</option>
				                </select>
				           </div>
		              	</form>
		            </div>
		            <!-- /.box-body -->
		            <div class="box-footer">
		                <button type="submit" class="btn btn-default">Cancelar</button>
		                <button type="submit" class="btn btn-info pull-right">Clonar</button>
		              </div>
		          </div>
			</dialog>
			
	        <div class="row">
	        	<form role="form">	
		            <div class="col-md-6">
		                <div class="box box-primary">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Geral</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">
	                            <!-- text input -->
	                            <div class="form-group">
	                                <label>Título*</label>
	                                <input type="text" name="titulo" class="form-control" placeholder="Título ...">
	                            </div>
	                            <div class="form-group">
	                                <label>Qtde vagas*</label>
	                                <input type="number" class="form-control" name="qtde-vagas" placeholder="Qtde vagas ...">
	                            </div>
	                            <div class="form-group">
					                <label>Data desejada</label>
					
					                <div class="input-group date">
					                  <div class="input-group-addon">
					                    <i class="fa fa-calendar"></i>
					                  </div>
					                  <input type="text" name="data-desejada" class="form-control pull-right" id="datepicker">
					                </div>
					                <!-- /.input group -->
					            </div>
	                            <div class="form-group">
	                                <label>Area de atuação*</label>
	                                <input type="text" name="area-atuacao" class="form-control" placeholder="Area ...">
	                            </div>
	                            <label>Salário</label>
	                            <div class="input-group">
					                <span class="input-group-addon"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">R$</font></font></span>
					                <input type="number" name="salario" class="form-control" step="1">
					                <span class="input-group-addon"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.00</font></font></span>
					            </div>
					            <br>
	                            <fieldset class="form-campo-select2">
		                            <label for="tags"><b>Departamento*</b></label>
		                            <br>
		                            <select class="form-control" id="form-tags-select" name="deartamento" data-placeholder="Selecione um departamento" style="width: 100%;">
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
		                            
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                
		                <div class="box box-success">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tags</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">
		                    			                    	
		                        <table id="tabela-tags" class="table table-bordered table-hover">
		                            <thead>
		                                <tr>
		                                    <th>Tag</th>
		                                    <th>Peso</th>
		                                    <th>Opções</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <!-- <tr>
		                                    <td>Storytelling</td>
		                                    <td class="tabela-opcoes">
		                                        <a href="#">
		                                            <i class="fa fa-trash-o tabela-icone"></i>
		                                        </a>
		                                    </td>
		                                </tr> -->
		                            </tbody>
		                            <tfoot>
		                                <tr>
		                                    <th>Tag</th>
		                                    <th>Peso</th>
		                                    <th>Opções</th>
		                                </tr>
		                            </tfoot>
		                        </table>
		                     
		                        
	                       		<hr style="border: 1px solid #00a65a; margin-bottom: 8px">
	                        	<h4 class="box-title" style="margin: 4px">Adicionar tag</h4>
	                        	<hr style="margin-top: 7px">
	                    		
	                       
		                        <fieldset class="form-campo-select2">
		                            <label for="tags"><b>Tags de habilidade</b></label>
		                            <br>
		                            <select class="form-control" id="form-tags-select" name="tags-add" data-placeholder="Selecione as tags" style="width: 100%;">
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
		                        <br>
		                        
		                        <div class="form-group">
					                <label>Peso</label>
					                <select class="form-control" id="form-tags-peso" name="tags-pesos" style="width: 100%;">
						                <option selected="selected" value="1">1 - 50 prontos</option>
						                <option value="2">2 - 40 prontos</option>
						                <option value="3">3 - 30 prontos</option>
						                <option value="4">4 - 20 prontos</option>
						                <option value="5">5 - 10 prontos</option>
					                </select>
				           		</div>
					           	
		                        
		                        <div class="box-footer">
					                <button type="button" id="botao-adicionar-tag" class="btn btn-success pull-right">Adicionar</button>
					            </div>
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                
		            </div>
		
		            <div class="col-md-6">
		            	<div class="box box-info">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Local</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">
	                        	<div class="form-group">
	                                <label>Endereço*</label>
	                                <input type="text" name="endereco" class="form-control" placeholder="Endereço ...">
	                            </div>
	                            <div class="form-group">
	                                <label>Cidade*</label>
	                                <input type="text" name="cidade" class="form-control" placeholder="Cidade ...">
	                            </div>
	                            <div class="form-group">
	                                <label>Estado*</label>
	                                <input type="text" name="estado" class="form-control" placeholder="Estado ...">
	                            </div>
	                            <div class="form-group">
	                                <label>País*</label>
	                                <input type="text" name="pais" class="form-control" placeholder="País ...">
	                            </div>
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                
		            	<div class="box box-success">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Detalhes</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">
	                        	<div class="form-group">
	                                <label>Anos Exp profissional</label>
	                                <input type="number" name="anos-exp" class="form-control" placeholder="Anos ...">
	                            </div>
	
	                            <!-- textarea -->
	                            <div class="form-group">
	                                <label>Descrição*</label>
	                                <textarea class="form-control" name="descricao" rows="3" placeholder="Descrição ..."></textarea>
	                            </div>
	                            <!-- textarea -->
	                            <div class="form-group">
	                                <label>Benefícios*</label>
	                                <textarea class="form-control" name="beneficios" rows="3" placeholder="Benefícios ..."></textarea>
	                            </div>
	                            <!-- textarea -->
	                            <div class="form-group">
	                                <label>Requisitos*</label>
	                                <textarea class="form-control" name="requisitos" rows="3" placeholder="Requisitos ..."></textarea>
	                            </div>
	                           
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                
		                <div class="box box-success">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Provas</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">
		                    
		                    	<!-- Dialogo de adicionar prova -->
					            <dialog id="dialogo-vaga-add-prova">
									<div class="box box-warning">
							            <div class="box-header with-border">
							              <h3 class="box-title">Adicionar prova</h3>
							            </div>
							            <!-- /.box-header -->
							            <div class="box-body">
						              		
							                <div class="form-group">
								                <label>Título da prova</label>
								                <select class="form-control" id="titulo-prova-dialogo" style="width: 100%;">
								                  <option selected="selected">Geral</option>
								                  <option>Storytelling</option>
								                </select>
								           </div>
								           
								           <div class="form-group">
								                <label>Peso</label>
								                <select class="form-control" id="peso-prova-dialog" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
							              	
							            </div>
							            <!-- /.box-body -->
							            <div class="box-footer">
							                <button type="button" class="btn btn-default">Cancelar</button>
							                <button type="button" class="btn btn-info pull-right">Adicionar</button>
							            </div>
							          </div>
								</dialog>
								
		                        <table id="tabela" class="table table-bordered table-hover">
		                            <thead>
		                                <tr>
		                                    <th>Título</th>
		                                    <th>Peso</th>
		                                    <th>Opções</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <!-- <tr>
		                                    <td>Storytelling</td>
		                                    <td class="tabela-opcoes">
		                                        <a href="#">
		                                            <i class="fa fa-trash-o tabela-icone"></i>
		                                        </a>
		                                    </td>
		                                </tr> -->
		                            </tbody>
		                            <tfoot>
		                                <tr>
		                                    <th>Título</th>
		                                    <th>Peso</th>
		                                    <th>Opções</th>
		                                </tr>
		                            </tfoot>
		                        </table>
		                        
		                        <div class="box-footer">
					                <button type="button" id="botao-adicionar-prova-vaga" class="btn btn-success pull-right">Adicionar</button>
					            </div>
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                
		                <div class="box box-danger">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Opções</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">
		                    	<!-- Dialogo de pesos -->
					            <dialog id="dialogo-vaga-pesos">
									<div class="box box-warning">
							            <div class="box-header with-border">
							              <h3 class="box-title">Pesos</h3>
							            </div>
							            <!-- /.box-header -->
							            <div class="box-body">
						              		
								           <div class="form-group">
								                <label>Link do Facebook</label>
								                <select class="form-control" id="peso-facebook" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
					           			   
					           			   <div class="form-group">
								                <label>Peso para 50 amigos</label>
								                <select class="form-control" id="peso-amigos" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
					           			   
					           			   <div class="form-group">
								                <label>Twitter</label>
								                <select class="form-control" id="peso-twitter" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
					           			   
					           			   <div class="form-group">
								                <label>Peso para 50 seguidores</label>
								                <select class="form-control" id="peso-seguidores" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
					           			   
					           			   <div class="form-group">
								                <label>Linkedin</label>
								                <select class="form-control" id="peso-linkedin" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
					           			   
					           			   <div class="form-group">
								                <label>Peso para 50 conexões</label>
								                <select class="form-control" id="peso-conexoes" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
							              	
							              	<div class="form-group">
								                <label>Video youtube</label>
								                <select class="form-control" id="peso-youtube" style="width: 100%;">
									                <option selected="selected" value="1">1 - 50 prontos</option>
									                <option value="2">2 - 40 prontos</option>
									                <option value="3">3 - 30 prontos</option>
									                <option value="4">4 - 20 prontos</option>
									                <option value="5">5 - 10 prontos</option>
								                </select>
					           			   </div>
							            </div>
							            <!-- /.box-body -->
							            <div class="box-footer">
							                <button type="button" class="btn btn-info pull-right">Salvar</button>
							            </div>
							          </div>
								</dialog>
		                        <div class="box-footer">
					                <button type="button" class="btn btn-default" onclick="window.location.href='vagas.jsp'" style="margin-top: 10px">Cancelar</button>
					                
					                <button type="submit" name="salvar-rascunho" class="btn btn-danger pull-right" style="margin-left: 10px; margin-top: 10px">Rascunho</button>
					                <button type="submit" name="salvar" class="btn btn-danger pull-right" style="margin-left: 10px; margin-top: 10px ">Publicar</button>
					                <button type="button" class="btn btn-info pull-right" id="botao-editar-pesos" style="margin-top: 10px">Editar pesos</button>
					                
					            </div>
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                        
		            </div>
				</form>
		    </div>
	        <!-- /.row -->
	
	    </section>
	    <!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<%@ include file="footer.jsp" %>
	<script src="js/dialog-polyfill.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- InputMask -->
	<script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- bootstrap datepicker -->
	<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

	<script>

	    $(function() {
	    	
	    	var tabelaTags = $('#tabela-tags').DataTable({
	            'paging': true,
	            'lengthChange': false,
	            'searching': false,
	            'ordering': true,
	            'info': true,
	            'autoWidth': false,
	           	 createdRow: function (row, data, index) {
	            	 //Quando estiver criando uma linha execute isso
	                 //Adiciona as classes de estilo        
	                 $("td:last-child", row).addClass('tabela-opcoes');
	                 
	                //Adiciona o evnto ao clicar em exluir linha
	                 $('.fa-trash-o', row).click(function(){
	                	 tabelaTags.row(row).remove().draw();
	     	         });
	                  
	             }
	        })
	        
	        $('#botao-adicionar-tag').click(function(){
	        	var opcoes = '<i class="fa fa-trash-o tabela-icone"></i>';
	        	var dados = '<input type="hidden" class="tags-tabela-dados" name="tags[0][]" value="' + $("#form-tags-select").val() + '" required>';
	        	dados += '<input type="hidden" class="tags-tabela-dados" name="tags[1][]" value="' + $("#form-tags-peso").val() + '" required>';
	        	tabelaTags.row.add([$("#form-tags-select").val() + dados, $("#form-tags-peso").val(), opcoes]).draw( true );   
	        	
	        });
	    	
	    	var dialogPesos = document.getElementById("dialogo-vaga-pesos");
	        dialogPolyfill.registerDialog(dialogPesos);
	        
	        $('#botao-editar-pesos').click(function(){
	        	dialogPesos.showModal();
	        	
	        });
	        
	        $('#dialogo-vaga-pesos .btn-info').click(function(){
	        	document.getElementById("dialogo-vaga-pesos").close();
	        });
	    	
	        var tabelaProvas = $('#tabela').DataTable({
	            'paging': true,
	            'lengthChange': false,
	            'searching': false,
	            'ordering': true,
	            'info': true,
	            'autoWidth': false,
	           	 createdRow: function (row, data, index) {
	            	 //Quando estiver criando uma linha execute isso
	                 //Adiciona as classes de estilo        
	                 $("td:last-child", row).addClass('tabela-opcoes');
	                 
	                //Adiciona o evnto ao clicar em exluir linha
	                 $('.fa-trash-o', row).click(function(){
	                	 tabelaProvas.row(row).remove().draw();
	     	         });
	                  
	             }
	        });
	        
	        var dialogProva = document.getElementById("dialogo-vaga-add-prova");
	        dialogPolyfill.registerDialog(dialogProva);
	        
	        $('#botao-adicionar-prova-vaga').click(function(){
	        	 dialogProva.showModal();
	        	
	        });
	        
	        $('#dialogo-vaga-add-prova .btn-default').click(function(){
	        	document.getElementById("dialogo-vaga-add-prova").close();
	        	
	        });
	        
	        $('#dialogo-vaga-add-prova .btn-info').click(function(){
	        	document.getElementById("dialogo-vaga-add-prova").close();
	        	var opcoes = '<i class="fa fa-trash-o tabela-icone"></i>';
	        	var dados = '<input type="hidden" class="provas-tabela-dados" name="provas[0][]" value="' + $("#titulo-prova-dialogo").val() + '" required>';
	        	dados += '<input type="hidden" class="provas-tabela-dados" name="provas[1][]" value="' + $("#peso-prova-dialog").val() + '" required>';
	        	tabelaProvas.row.add([$("#titulo-prova-dialogo").val() + dados, $("#peso-prova-dialog").val(), opcoes]).draw( true );   	
	        });
	        

	        var dialogVaga = document.getElementById("dialogo-vaga-clonar");
	        dialogPolyfill.registerDialog(dialogVaga);
	        
	        $('#botao-clonar').click(function(){
	        	 dialogVaga.showModal();
	        	
	        });
	        
	        $('#dialogo-vaga-clonar .btn-default').click(function(){
	        	document.getElementById("dialogo-vaga-clonar").close();
	        	
	        });
	        
	        $('#dialogo-vaga-clonar .btn-info').click(function(){
	        	document.getElementById("dialogo-vaga-clonar").close();
	        	
	        });
	        
	        $('.select2').select2();
	        
	        $('#form-tags-select').select2({
	        	tags:true,
	        	insertTag: function (data, tag) {
	        		data.push(tag);
	        	},
	        	createTag: function (params) {

	        	    return {
	        	      id: "-",
	        	      text: params.term
	        	    }
	        	  }
	    	});
	                
	      	//Date picker
	        $('#datepicker').datepicker({
	          autoclose: true
	        })
	    })
	    
	    
	</script>

</body>

</html>