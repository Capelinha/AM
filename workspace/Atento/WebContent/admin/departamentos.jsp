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

</body>

</html>