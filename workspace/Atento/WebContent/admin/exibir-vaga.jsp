<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	        <h1>
	        Vaga
	        <small></small>
	      </h1>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Principal</a></li>
	            <li class="active">Vagas</li>
	            <li class="active">Detalhes</li>
	        </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	        <div class="row">
	            <div class="col-md-4">
	            
	            	<div class="box box-primary">
			            <div class="box-header with-border">
			              <h3 class="box-title">Dados básicos</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body">
			              <strong><i class="fa fa-tag"></i> Título</strong>
			
			              <p class="text-muted">
			                Analista de RH
			              </p>
			
			              <hr>
			
			              <strong><i class="fa fa-align-justify margin-r-5"></i> Descrição</strong>
			              <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis sit amet ligula commodo consequat.</p>
			
			              <hr>
			
			              <strong><i class="fa  fa-building-o margin-r-5"></i> Departamento</strong>
						  <p class="text-muted">Recursos humanos</p>
	
			              <hr>
			              
			              <strong><i class="fa  fa-user-md margin-r-5"></i> Area de atuação</strong>
						  <p class="text-muted">Duis rhoncus turpis</p>
	
			              <hr>
			               
			              <strong><i class="fa  fa-money margin-r-5"></i> Salário</strong>
						  <p class="text-muted">RS$ 2000,00</p>
	
			              <hr>
			              
			              <strong><i class="fa fa-calendar-o margin-r-5"></i> Data abertuta</strong>
						  <p class="text-muted">15/05/1995</p>
	
			              <hr>
			              
			              <strong><i class="fa fa-calendar-check-o margin-r-5"></i> Data desejada</strong>
						  <p class="text-muted">15/05/2017</p>
	
			              <hr>
			              
			              <strong><i class="fa fa-pencil margin-r-5"></i> Tags de habilidade</strong>
			              <p>
			                <span class="label label-danger">UI Design</span>
			                <span class="label label-success">Coding</span>
			                <span class="label label-info">Javascript</span>
			                <span class="label label-warning">PHP</span>
			                <span class="label label-primary">Node.js</span>
			              </p>
			              
			           </div>
			            <!-- /.box-body -->
			        </div>
			        
			        
	            </div>
	           		
	          	<div class="col-md-4">
	          	
	          		<div class="box box-primary">
			            <div class="box-header with-border">
			              <h3 class="box-title">Local</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body">
			              <strong><i class="fa fa-home margin-r-5"></i> Endereço</strong>
			              <p class="text-muted"> Rua x, 2</p>
			
			              <hr>
			
			              <strong><i class="fa fa-map-signs margin-r-5"></i> Cidade</strong>
			              <p class="text-muted"> São Paulo</p>
			
			              <hr>
			
			              <strong><i class="fa  fa-map-pin margin-r-5"></i> Estado</strong>
			              <p class="text-muted"> São Paulo</p>

			           </div>
			            <!-- /.box-body -->
			        </div>

			        <div class="box box-primary">
			            <div class="box-header with-border">
			              <h3 class="box-title">Detalhes</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body" >
			            
			            	<!-- Dialogo de alterar status -->
				            <dialog id="dialogo-exibir-vaga-status">
								<div class="box box-warning">
						            <div class="box-header with-border">
						              <h3 class="box-title">Alterar status</h3>
						            </div>
						            <!-- /.box-header -->
						            <div class="box-body">
					              		<form role="form">
							                <div class="form-group">
								                <label>Novo status</label>
								                <select class="form-control" style="width: 100%;">
								                  <option selected="selected">Ativa</option>
								                  <option>Concluida</option>
								                  <option>Cancelada</option>
								                </select>
								           </div>
						              	</form>
						            </div>
						            <!-- /.box-body -->
						            <div class="box-footer">
						                <button type="submit" class="btn btn-default">Cancelar</button>
						                <button type="submit" class="btn btn-info pull-right">Alterar</button>
						              </div>
						          </div>
							</dialog>
			              
			            	<strong><i class="fa fa-hand-o-up margin-r-5"></i> Requisitos</strong>
				            <p class="text-muted"> 
				             	<br>
				            	- Aliquam vitae leo rhoncus <br>
				            	- Mollis tortor iaculis <br>
				            	- Malesuada augue <br>
				            	- Sed luctus pulvinar <br>
				            	- Phasellus imperdiet <br>

				            </p>
				
				            <hr>
				            
				            <strong><i class="fa fa-trophy margin-r-5"></i> Benefícios</strong>
				            <p class="text-muted"> 
				            	<br>
				            	- Aliquam vitae leo rhoncus <br>
				            	- Mollis tortor iaculis <br>
				            	- Malesuada augue <br>
				            	- Sed luctus pulvinar <br>
				            	- Phasellus imperdiet <br>

				            </p>
				
				            <hr>
			              
			                <strong><i class="fa fa-info-circle margin-r-5"></i> Status</strong>
			                <p class="text-muted"> Ativa</p>		
			               
			                <div class="box-footer">
				                <button type="button" id="botao-alterar-status-vaga" class="btn btn-success pull-right">Alterar status</button>
				            </div>
			           </div>
			            <!-- /.box-body -->
			        </div>
	            	
	            </div>
	            
	            <div class="col-md-4">
			        
			        <div class="box box-primary">
			            <div class="box-header with-border">
			              <h3 class="box-title">Candidatos</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body" id="exibir-vaga-candidatos">
			              <strong><i class="fa fa-question-circle margin-r-5"></i> Aguardando aprovação</strong>
			              
			              <!-- Candidato da vag -->
			              <a href="#">
				              <div class="exibir-vaga-candidato">
				              	<strong> Mateus Igreja</strong>
				              	<p class="text-muted"> 60% de compatibilidade</p>	
				              	
				              	<hr>
				              	
				              	<strong> E-mail</strong>
				              	<p class="text-muted"> m.oawfwawf@gmail.com</p>
				              	
				              </div>
			              </a>
			              
			              <hr>	
			              
			              <strong><i class="fa fa-check-circle margin-r-5"></i> Aprovados para entrevista</strong>
			              <p class="text-muted"> Nenhum</p>	
			              
			              <hr>	
			              
			              <strong><i class="fa fa-calendar margin-r-5"></i> Entrevista marcada</strong>
			              <p class="text-muted"> Nenhum</p>	
			              
			              <hr>	
			              
			              <strong><i class="fa fa-thumbs-o-up margin-r-5"></i> Aprovados</strong>
			              
			              <!-- Candidato da vag -->
			              <a href="#">
				              <div class="exibir-vaga-candidato">
				              	<strong> Mateus Igreja</strong>
				              	<p class="text-muted"> 60% de compatibilidade</p>	
				              	
				              	<hr>
				              	
				              	<strong> E-mail</strong>
				              	<p class="text-muted"> m.oawfwawf@gmail.com</p>
				              	
				              </div>
			              </a>
			              
			              <!-- Candidato da vag -->
			              <a href="#">
				              <div class="exibir-vaga-candidato">
				              	<strong> Mateus Igreja</strong>
				              	<p class="text-muted"> 60% de compatibilidade</p>	
				              	
				              	<hr>
				              	
				              	<strong> E-mail</strong>
				              	<p class="text-muted"> m.oawfwawf@gmail.com</p>
				              	
				              </div>
			              </a>
			              

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
	
	<script>
	
	    $(function() {
	        $('#tabela').DataTable({
	            'paging': true,
	            'lengthChange': false,
	            'searching': false,
	            'ordering': true,
	            'info': true,
	            'autoWidth': false
	        })
	        
	        var dialogProva = document.getElementById("dialogo-exibir-vaga-status");
	        dialogPolyfill.registerDialog(dialogProva);
	        
	        $('#botao-alterar-status-vaga').click(function(){
	        	 dialogProva.showModal();
	        	
	        });
	        
	        $('#dialogo-exibir-vaga-status .btn-default').click(function(){
	        	document.getElementById("dialogo-exibir-vaga-status").close();
	        	
	        });
	        
	        $('#dialogo-exibir-vaga-status .btn-info').click(function(){
	        	document.getElementById("dialogo-exibir-vaga-status").close();
	        	
	        });
	    })
	</script>
</body>

</html>
        