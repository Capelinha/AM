<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	        <h1>
	        Departamentos 
	        <small></small>
	      	</h1>
	      	<div class="botao-cadastrar">
	      		<a href="#">Cadastrar <i class="fa fa-plus"></i> </a>
	      	</div>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Principal</a></li>
	            <li class="active">Departamentos</li>
	        </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	        <div class="row">
	            <div class="col-xs-12">
	                <div class="box">
	                    <div class="box-header">
	                        <h3 class="box-title">Lista de departamentos</h3>
	                    </div>
	                    <!-- /.box-header -->
	                    <div class="box-body">
	                    
	                    	<!-- Dialogo de cadastro -->
	                    	<dialog id="dialogo-departamentos">
								<div class="box box-warning">
						            <div class="box-header with-border">
						              <h3 class="box-title">Novo departamento</h3>
						            </div>
						            <!-- /.box-header -->
						            <form role="form">
							            <div class="box-body">
							                <!-- text input -->
							                <div class="form-group">
							                  <label>Nome</label>
							                  <input type="hidden" name="id-dept" id="dialogo-departamento-id">
							                  <input type="text" name="nome-dept" id="dialogo-departamento-nome" class="form-control" placeholder="Nome ..." requerid>
							                </div>
							              
							            </div>
						            	<!-- /.box-body -->
						                <div class="box-footer">
						                    <button type="button" class="btn btn-default">Cancelar</button>
						                    <button type="submit" class="btn btn-info pull-right">Cadastrar</button>
						                </div>
						           </form>
						       </div>
							</dialog>
							
	                        <table id="tabela" class="table table-bordered table-hover">
	                            <thead>
	                                <tr>
	                                    <th># ID</th>
	                                    <th>Nome</th>
	                                    <th>Opções</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td class="tabla-id">15</td>
	                                    <td>Recursos Humanos</td>
	                                    <td class="tabela-opcoes">
	                                        <a href="#">
	                                            <i class="fa fa-pencil-square-o tabela-icone"></i>
	                                        </a>
	                                    </td>
	                                </tr>
	                            </tbody>
	                            <tfoot>
	                                <tr>
	                                    <th># ID</th>
	                                    <th>Nome</th>
	                                    <th>Opções</th>
	                                </tr>
	                            </tfoot>
	                        </table>
	                    </div>
	                    <!-- /.box-body -->
	                </div>
	                <!-- /.box -->
	            </div>
	            <!-- /.col -->
	        </div>
	        <!-- /.row -->
	
	    </section>
	    <!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<%@ include file="footer.jsp" %>
	<script src="js/dialog-polyfill.js"></script>
	<script>
	
		var dialog = document.getElementById("dialogo-departamentos");
	    dialogPolyfill.registerDialog(dialog);
    
	    $(function() {
	        $('#tabela').DataTable({
	            'paging': true,
	            'lengthChange': false,
	            'searching': false,
	            'ordering': true,
	            'info': true,
	            'autoWidth': false,
	            createdRow: function (row, data, index) {
	            	$('.fa-pencil-square-o', row).click(function(){
	            		dialog.showModal();
	            		$('#dialogo-departamento-id').val(data[0]);
	            		$('#dialogo-departamento-nome').val(data[1]);
	            	}); 
	            }
	        })
	        
	        $('.botao-cadastrar').click(function(){
	        	 dialog.showModal();
	        	
	        });
	        
	        $('#dialogo-departamentos .btn-default').click(function(){
	        	document.getElementById("dialogo-departamentos").close();
	        	$('#dialogo-departamentos form').trigger("reset");
	        	
	        });
	        
	        $('#dialogo-departamentos .btn-info').click(function(){
	        	var valido = true;
	        	
	        	if ($('#dialogo-departamento-nome').val() === "") {
        			$('#dialogo-departamento-nome').parent().addClass("has-error");
        			valido = false;
        		}	
	        	
	        	setTimeout(function(){
	        		$('#dialogo-departamento-nome').parent().removeClass("has-error");
        		}, 1000);
	        	
	        	if(valido){
	        		document.getElementById("dialogo-departamentos").close();
	        	}
	        });       
	        
	    })
	    
	    
	</script>

</body>

</html>