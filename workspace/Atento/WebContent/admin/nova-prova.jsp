<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	        <h1>
		        Nova prova
		        <small></small>
		    </h1>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Principal</a></li>
	            <li class="active">Provas</li>
	            <li class="active">Nova prova</li>
	        </ol>
	    </section>
	    <!-- Dialogo de adicionar prova -->
        <dialog id="dialogo-vaga-add-prova">
		    <div class="box box-warning">
		        <div class="box-header with-border">
		            <h3 class="box-title">Adicionar questão</h3>
		        </div>
		        <!-- /.box-header -->
		        <div class="box-body">
		            <form role="form">
		
		                <div class="form-group">
		                    <label>Título*</label>
		                    <input type="text" class="form-control" name="titulo-questao" placeholder="Título ...">
		                </div>
		
		                <!-- textarea -->
		                <div class="form-group">
		                    <label>Texto*</label>
		                    <textarea class="form-control" rows="3" name="texto-questao" placeholder="Texto ..."></textarea>
		                </div>
		
		                <div class="form-group">
		                    <label>Alternativa correta</label>
		                    <select class="form-control" name="alt-correta" style="width: 100%;">
		                        <option selected="selected">A</option>
		                        <option>B</option>
		                        <option>C</option>
		                        <option>D</option>
		                        <option>E</option>
		                    </select>
		                </div>
		
		                <!-- textarea -->
		                <div class="form-group">
		                    <label>Alternativa A*</label>
		                    <textarea class="form-control" name="alt-A" rows="3" placeholder="Descrição ..."></textarea>
		                </div>
		
		                <!-- textarea -->
		                <div class="form-group">
		                    <label>Alternativa B*</label>
		                    <textarea class="form-control" name="alt-B" rows="3" placeholder="Descrição ..."></textarea>
		                </div>
		
		                <!-- textarea -->
		                <div class="form-group">
		                    <label>Alternativa C*</label>
		                    <textarea class="form-control" name="alt-C" rows="3" placeholder="Descrição ..."></textarea>
		                </div>
		
		                <!-- textarea -->
		                <div class="form-group">
		                    <label>Alternativa D*</label>
		                    <textarea class="form-control" name="alt-D" rows="3" placeholder="Descrição ..."></textarea>
		                </div>
		
		                <!-- textarea -->
		                <div class="form-group">
		                    <label>Alternativa E*</label>
		                    <textarea class="form-control" name="alt-E" rows="3" placeholder="Descrição ..."></textarea>
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
		
		<form role="form">
		    <!-- Main content -->
		    <section class="content">		
		        <div class="row">	
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
		                                <input type="text" class="form-control" name="titulo" placeholder="Título ..." required>
		                            </div>
		                            <div class="form-group">
		                                <label>Area do conhecimento*</label>
		                                <input type="text" class="form-control" name="area" placeholder="Area ..." required>
		                            </div>
		                            
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		            </div>
		                
		
		            <div class="col-md-6">
	
		                <div class="box box-success">
		                    <div class="box-header with-border">
		                        <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Questões</font></font></h3>
		                    </div>
		                    <!-- /.box-header -->
		                    <div class="box-body">

		                        <table id="tabela" class="table table-bordered table-hover">
		                            <thead>
		                                <tr>
		                               		<th>ID #</th>
		                                    <th>Título</th>
		                                    <th>Opções</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                            	  <!--
			                                <tr>
			                                	<th class="tabla-id">2</th>
			                                    <td>Storytelling</td>
			                                    <td class="tabela-opcoes">
			                                        <a href="#">
			                                            <i class="fa fa-trash-o tabela-icone"></i>
			                                        </a>
			                                        
			                                        <a href="#">
			                                            <i class="fa fa-pencil tabela-icone"></i>
			                                        </a>
			                                    </td>
			                                </tr>
		                                 -->
		                            </tbody>
		                            <tfoot>
		                                <tr>
		                                	<th>ID #</th>
		                                    <th>Título</th>
		                                    <th>Opções</th>
		                                </tr>
		                            </tfoot>
		                        </table>
		                        
		                        <div class="box-footer">
					                <button type="button" id="botao-adicionar-prova-vaga"class="btn btn-success pull-right">Adicionar</button>
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
					                <button type="reset" class="btn btn-default">Cancelar</button>
					                <button type="submit" class="btn btn-danger pull-right">Salvar</button>
					            </div>
		                    </div>
		                    <!-- /.box-body -->
		                </div>
		                        
		            </div>
		
		        </div>
		        <!-- /.row -->
		
		    </section>
		</form>
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
	    	
	    	function validarForm(){
	    		
	        	//Armazenar de há algum erro de campo vazio na tabela do dialogo
	        	var erro = true;
	        	
	    		$('#dialogo-vaga-add-prova *').filter(':input').each(function(){
	        		//Verificar de o campo está vazio
	        		if (typeof $(this).attr("name") != "undefined") {
	        			
	        			//Remover classes de erro e sucesso de formulario para remerifica-lo
	        			$(this).parent().removeClass("has-error");
	        			$(this).parent().removeClass("has-success");
	        			
	        			//Se um input estiver vazio colocar classe de erro senao colocar classe de sucesso
	        			if($(this).val() === ""){
	        				$(this).parent().addClass("has-error");
	        				erro = false;
	        			}else{
	        				$(this).parent().addClass("has-success");
	        			}
	        		}
	        		
	        		setTimeout(function(){
	        			//Remover todos os indicativos de input correto e incorreto 
	    	        	$('#dialogo-vaga-add-prova *').filter(':input').each(function(){
	    	        		if (typeof $(this).attr("name") != "undefined") {
	    	        			$(this).parent().removeClass("has-error");
	    	        			$(this).parent().removeClass("has-success");
	    	        		}		
	    	        	});
	        		}, 1000);
	        		
	        	});
	    		
	    		return erro;
	    	}
	    	
	    	function fecharDialogo(){
	    		//Resetar o formulario e fechar o dialogo
	        	$('#dialogo-vaga-add-prova form').trigger("reset");
	        	document.getElementById("dialogo-vaga-add-prova").close();
	    	}
	    	
	    	function gerarDados(){
	    		var dados = "";
	    		//Para cada input dentro do dialogo de questao
	        	$('#dialogo-vaga-add-prova *').filter(':input').each(function(){
	        		//Verificar de o campo está vazio
	        		if (typeof $(this).attr("name") != "undefined") {
	        			//Se não estiver vazio criar um input escondido para cada dado da alternativa.
	        			dados += '<input type="hidden" class="questao-tabela-dados" name="questoes[' + $(this).attr("name") + '][]" value="' + $(this).val() + '" required>';
	        		}
	        	});
	    		
	        	return dados;
	    	}
	    	
	    	function adicionarQuestao(){
	        	//Adquirir titulo da questão nova
	        	var titulo = $('#dialogo-vaga-add-prova input[name="titulo-questao"]').val();
	        	//Criar coluna de opções da tabela
	        	var opcoes = '<a href="#"> <i class="fa fa-trash-o tabela-icone"></i> </a> <a href="#"> <i class="fa fa-pencil tabela-icone"></i> </a>';
	        	//Criar variavel para dados da questão
	        	
	        	
	        	//Se não existir um erro no formulario
	        	if(validarForm()){
	        		
	        		var dados = gerarDados();
	        		
	        		//Adiciona uma linha na tabela de quetões e adicionar os campos invisiveis junto com o titulo
	        		tabelaQuestoes.row.add(['-', titulo + dados, opcoes]).draw( true );
	        		//Desativar evento padrão add questão
               		$('#dialogo-vaga-add-prova .btn-info').unbind("click",adicionarQuestao); 
	        		fecharDialogo();
	        	}
	        	
	        }
	    	
	    	function alterarQuestao(event){
	    		//Receber a linha que está sendo editada
	    		var row = event.data;
	    		//Receber o novo título da questão
	    		var titulo = $('#dialogo-vaga-add-prova input[name="titulo-questao"]').val();
	    		
	    		//Se os campos do form estiverem válidos
	    		if(validarForm()){
	    			//Alterar campos da tabela
       				$(row).children('td').eq(1).html(titulo + gerarDados());
	    			//Remover evento de editar
       				$('#dialogo-vaga-add-prova .btn-info').unbind("click",alterarQuestao); 
	    			//Fecahar dialogo
       				fecharDialogo();
	    		}
       			
       	    }
	    	
	    	//Define a tabela de questões
	    	var tabelaQuestoes = $('#tabela').DataTable({
	            'paging': true,
	            'lengthChange': false,
	            'searching': false,
	            'ordering': true,
	            'info': true,
	            'autoWidth': false,
	             createdRow: function (row, data, index) {
	            	 //Quando estiver criando uma linha execute isso
	                 //Adiciona as classes de estilo
	                 $("td:first-child", row).addClass('tabla-id');           
	                 $("td:last-child", row).addClass('tabela-opcoes');
	                 
	                //Adiciona o evnto ao clicar em exluir linha
	                 $('.fa-trash-o', row).click(function(){
	     	        	tabelaQuestoes.row(row).remove().draw();
	     	         });
	                  
	                 //Adiciona o evnto ao clicar em editar linha
	                 $('.fa-pencil', row).click(function(){
	                	 //Preencher formulario de questão
	                	 $('.questao-tabela-dados', row).filter(':input').each(function(i, e){
	                		 $('#dialogo-vaga-add-prova *').filter(':input').each(function(j, a){
	                		 	if($(e).attr("name").includes($(a).attr("name"))){
	                		 		$(a).val($(e).val());
	                		 	}
	                		 });
	                	 });
	                	 
	                	 //Abrir dialogo
	                	 dialogProva.showModal();
	                	 
	                	 //Evento de editar questão no botao
	                	 $("#dialogo-vaga-add-prova .btn-info").on("click", row, alterarQuestao);
		     	     });
	             }
	        })
	        
	        //Polyfill para dialogo funcionar no edge
	        var dialogProva = document.getElementById("dialogo-vaga-add-prova");
	        dialogPolyfill.registerDialog(dialogProva);
	        
	        //Evento de click no botão de adicionar prova
	        $('#botao-adicionar-prova-vaga').click(function(){
	        	 dialogProva.showModal();
	        	 $('#dialogo-vaga-add-prova .btn-info').click(adicionarQuestao);
	        });
	        
	        //Evento de click no cancelar do dialogo
	        $('#dialogo-vaga-add-prova .btn-default').click(function(){
	        	//Fechar dialogo
	        	$('#dialogo-vaga-add-prova .btn-info').unbind("click",adicionarQuestao); 
	        	$('#dialogo-vaga-add-prova .btn-info').unbind("click",alterarQuestao); 
	        	
	        	fecharDialogo();
	        });
	        
	        //Evento de adicionar questão
	        $('#dialogo-vaga-add-prova .btn-info').click(adicionarQuestao);
	        
	        $('.select2').select2();
	        
	                
	      	//Date picker
	        $('#datepicker').datepicker({
	          autoclose: true
	        })
	    })
 
	</script>

</body>

</html>