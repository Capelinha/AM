<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <section class="content-header">
	        <h1>
	          Provas
	          <small></small>
	        </h1>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="fa fa-dashboard"></i> Principal</a></li>
	            <li class="active">Provas</li>
	        </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	        <div class="row">
	            <div class="col-xs-12">
	                <div class="box">
	                    <div class="box-header">
	                        <h3 class="box-title">Lista de provas</h3>
	                    </div>
	                    <!-- /.box-header -->
	                    <div class="box-body">
	                        <table id="tabela" class="table table-bordered table-hover">
	                            <thead>
	                                <tr>
	                                    <th>Título</th>
	                                    <th>Area</th>
	                                    <th>N° de questões</th>
	                                    <th>Opções</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	
	                                <tr>
	                                    <td>Storytelling</td>
	                                    <td>Marketing</td>
	                                    <td>30</td>
	                                    <td class="tabela-opcoes">
	                                        <a href="#">
	                                            <i class="fa fa-pencil-square-o tabela-icone"></i>
	                                        </a>
	                                    </td>
	                                </tr>
	
	                            </tbody>
	                            <tfoot>
	                                <tr>
	                                    <th>Título</th>
	                                    <th>Area</th>
	                                    <th>N° de questões</th>
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
	    })
	</script>

</body>

</html>