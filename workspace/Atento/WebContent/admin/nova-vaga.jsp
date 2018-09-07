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
	            <div class="col-md-6">
	                <div class="box box-primary">
	                    <div class="box-header with-border">
	                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Geral</font></font></h3>
	                    </div>
	                    <!-- /.box-header -->
	                    <div class="box-body">
	                        <form role="form">
	                            <!-- text input -->
	                            <div class="form-group">
	                                <label>Título*</label>
	                                <input type="text" class="form-control" placeholder="Título ...">
	                            </div>
	                            <div class="form-group">
	                                <label>Qtde vagas*</label>
	                                <input type="number" class="form-control" placeholder="Qtde vagas ...">
	                            </div>
	                            <div class="form-group">
					                <label>Data desejada</label>
					
					                <div class="input-group date">
					                  <div class="input-group-addon">
					                    <i class="fa fa-calendar"></i>
					                  </div>
					                  <input type="text" class="form-control pull-right" id="datepicker">
					                </div>
					                <!-- /.input group -->
					            </div>
	                            <div class="form-group">
	                                <label>Area de atuação*</label>
	                                <input type="text" class="form-control" placeholder="Area ...">
	                            </div>
	                            <label>Salário</label>
	                            <div class="input-group">
					                <span class="input-group-addon"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">R$</font></font></span>
					                <input type="number" class="form-control" step="1">
					                <span class="input-group-addon"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.00</font></font></span>
					            </div>
	                            <div class="form-group">
	                                <label>Departamento*</label>
	                                <input type="text" class="form-control" placeholder="Departamento ...">
	                            </div>
	                            
	                        </form>
	                    </div>
	                    <!-- /.box-body -->
	                </div>
	                
	                <div class="box box-info">
	                    <div class="box-header with-border">
	                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Local</font></font></h3>
	                    </div>
	                    <!-- /.box-header -->
	                    <div class="box-body">
	                        <form role="form">
	                        	<div class="form-group">
	                                <label>Endereço*</label>
	                                <input type="text" class="form-control" placeholder="Endereço ...">
	                            </div>
	                            <div class="form-group">
	                                <label>Cidade*</label>
	                                <input type="text" class="form-control" placeholder="Cidade ...">
	                            </div>
	                            <div class="form-group">
	                                <label>Estado*</label>
	                                <input type="text" class="form-control" placeholder="Estado ...">
	                            </div>
	                            <div class="form-group">
	                                <label>País*</label>
	                                <input type="text" class="form-control" placeholder="País ...">
	                            </div>
	                        </form>
	                    </div>
	                    <!-- /.box-body -->
	                </div>
	            </div>
	
	            <div class="col-md-6">
	            	<div class="box box-success">
	                    <div class="box-header with-border">
	                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Detalhes</font></font></h3>
	                    </div>
	                    <!-- /.box-header -->
	                    <div class="box-body">
	                        <form role="form">
	                        	<div class="form-group">
	                                <label>Anos Exp profissional</label>
	                                <input type="number" class="form-control" placeholder="Anos ...">
	                            </div>
	
	                            <!-- textarea -->
	                            <div class="form-group">
	                                <label>Descrição*</label>
	                                <textarea class="form-control" rows="3" placeholder="Descrição ..."></textarea>
	                            </div>
	                            <!-- textarea -->
	                            <div class="form-group">
	                                <label>Benefícios*</label>
	                                <textarea class="form-control" rows="3" placeholder="Benefícios ..."></textarea>
	                            </div>
	                            <!-- textarea -->
	                            <div class="form-group">
	                                <label>Requisitos*</label>
	                                <textarea class="form-control" rows="3" placeholder="Requisitos ..."></textarea>
	                            </div>
	                            <div class="form-group">
					                <label>Tags de habilidades</label>
					                <select class="form-control select2" multiple="multiple" data-placeholder="Selecione as tags"
					                        style="width: 100%;">
					                  <option>Alabama</option>
					                  <option>Alaska</option>
					                  <option>California</option>
					                  <option>Delaware</option>
					                  <option>Tennessee</option>
					                  <option>Texas</option>
					                  <option>Washington</option>
					                </select>
					             </div>
	                        	
	                        </form>
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
					              		<form role="form">
							                <div class="form-group">
								                <label>Título da prova</label>
								                <select class="form-control" style="width: 100%;">
								                  <option selected="selected">Nenhuma</option>
								                  <option>Geral</option>
								                  <option>Storytelling</option>
								                </select>
								           </div>
						              	</form>
						            </div>
						            <!-- /.box-body -->
						            <div class="box-footer">
						                <button type="submit" class="btn btn-default">Cancelar</button>
						                <button type="submit" class="btn btn-info pull-right">Adicionar</button>
						              </div>
						          </div>
							</dialog>
							
	                        <table id="tabela" class="table table-bordered table-hover">
	                            <thead>
	                                <tr>
	                                    <th>Título</th>
	                                    <th>Opções</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td>Storytelling</td>
	                                    <td class="tabela-opcoes">
	                                        <a href="#">
	                                            <i class="fa fa-trash-o tabela-icone"></i>
	                                        </a>
	                                    </td>
	                                </tr>
	                            </tbody>
	                            <tfoot>
	                                <tr>
	                                    <th>Título</th>
	                                    <th>Opções</th>
	                                </tr>
	                            </tfoot>
	                        </table>
	                        
	                        <div class="box-footer">
				                <button type="button" action="adocionarProva();" id="botao-adicionar-prova-vaga"class="btn btn-success pull-right">Adicionar</button>
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
	                        <div class="box-footer">
				                <button type="submit" class="btn btn-default">Cancelar</button>
				                <button type="submit" class="btn btn-danger pull-right" style="margin-left: 10px">Salvar como rascunho  </button>
				                <button type="submit" class="btn btn-danger pull-right">Salvar</button>
				            </div>
	                    </div>
	                    <!-- /.box-body -->
	                </div>
	                        
	            </div>
	
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
		
		function adicionarProva(){
			
		}	
	
	    $(function() {
	    	
	    	
	        $('#tabela').DataTable({
	            'paging': true,
	            'lengthChange': false,
	            'searching': false,
	            'ordering': true,
	            'info': true,
	            'autoWidth': false
	        })
	        
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
	        
	                
	      	//Date picker
	        $('#datepicker').datepicker({
	          autoclose: true
	        })
	    })
	    
	    
	</script>

</body>

</html>