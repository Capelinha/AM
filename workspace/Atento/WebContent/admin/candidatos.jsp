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
	                                </tr>
	                            </thead>
	                            <tbody>
	
	                                <tr>
	                                    <td class="tabla-id">15</td>
	                                    <td>Mateus</td>
	                                    <td>m.ijubawf@gmail.com</td>
	                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing...</td>
	                                    <td>Analista de RH</td>
	                                </tr>
	
	                            </tbody>
	                            <tfoot>
	                                <tr>
	                                    <th># ID</th>
	                                    <th>Nome</th>
	                                    <th>E-mail</th>
	                                    <th>Notas</th>
	                                    <th>Título vaga</th>
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
	          'autoWidth': false
	      });
	  });
	 </script>
	 
 </body>

</html>