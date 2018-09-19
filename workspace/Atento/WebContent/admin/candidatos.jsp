<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	        <h1>
	          Candidatos
	          <small></small>
	        </h1>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Principal</a></li>
	            <li class="active">Candidatos</li>
	        </ol>
	    </section>
	    <!-- Main content -->
	    <section class="content">
	        <div class="row">
	            <div class="col-xs-12">
	            	<div class="box box-default collapsed-box">
			            <div class="box-header with-border">
			              <h3 class="box-title">Critérios de pesquisa</h3>
			              <div class="box-tools pull-right">
			                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
			                </button>
			              </div>
			              <!-- /.box-tools -->
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body" style="display: none;">
			              	<table id="criterios-pesquisa">
			              		<tr>
			              			<th> Critério</th>
			              			<th> Palavra-chave</th>
			              		</tr>
			         
			              		<tr>
					                <td class=criterios-pesquisa-chk>
				              			<div class="checkbox">
					                      <label>
					                        <input type="checkbox"> Nome
					                      </label>
					                    </div>
					                </td>
					                
					                <td>
				              			<input type="text" class="form-control" placeholder="Nome ...">
					                </td>
			              		</tr>
			              		
			              		<tr>
					                <td class=criterios-pesquisa-chk>
				              			<div class="checkbox">
					                      <label>
					                        <input type="checkbox"> Status
					                      </label>
					                    </div>
					                </td>
					                
					                <td>
				              			<input type="text" class="form-control" placeholder="Status ...">
					                </td>
			              		</tr>
			              		
			              		<tr>
					                <td class=criterios-pesquisa-chk>
				              			<div class="checkbox">
					                      <label>
					                        <input type="checkbox"> Score mínimo
					                      </label>
					                    </div>
					                </td>
					                
					                <td>
				              			<input type="text" class="form-control" placeholder="Score ...">
					                </td>
			              		</tr>
			              		
			              		<tr>
					                <td class=criterios-pesquisa-chk>
				              			<div class="checkbox">
					                      <label>
					                        <input type="checkbox"> Id da vaga
					                      </label>
					                    </div>
					                </td>
					                
					                <td>
				              			<input type="text" class="form-control" placeholder="Id da vaga ...">
					                </td>
			              		</tr>
			              	</table>
			              	<div class="box-footer">
			                <button type="submit" class="btn btn-default">Cancelar</button>
			                <button type="submit" class="btn btn-info pull-right">Pesquisar</button>
			              </div>
			            </div>
			            <!-- /.box-body -->
		          	</div>
	                <div class="box">
	                    <div class="box-header">
	                        <h3 class="box-title">Listar candidatos</h3>
	                    </div>
	                    <!-- /.box-header -->
	                    <div class="box-body">
	                        <table id="tabela" class="table table-bordered table-hover">
	                            <thead>
	                                <tr>
	                                    <th># ID</th>
	                                    <th>Nome</th>
	                                    <th>E-mail</th>
	                                    <th>Notas</th>
	                                    <th>Título vaga</th>
	                                    <th>Score</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	
	                                <tr>
	                                    <td class="tabla-id">15</td>
	                                    <td>Mateus</td>
	                                    <td>m.ijubawf@gmail.com</td>
	                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing...</td>
	                                    <td>Analista de RH</td>
	                                    <td>1000</td>
	                                </tr>
	
	                            </tbody>
	                            <tfoot>
	                                <tr>
	                                    <th># ID</th>
	                                    <th>Nome</th>
	                                    <th>E-mail</th>
	                                    <th>Notas</th>
	                                    <th>Título vaga</th>
	                                    <th>Score</th>
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
	
	 <script>
	  $(document).ready(function () {
	  	$('#tabela').DataTable({
	          'paging': true,
	          'lengthChange': false,
	          'searching': false,
	          'ordering': true,
	          'info': true,
	          'autoWidth': false,
	           	 createdRow: function (row, data, index) {
	                 $(row).click(function(){
	                	 window.location.href='exibir-candidato.jsp'
	                 });
	             }
	      });
	  });
	 </script>
	 
 </body>

</html>