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
	            <li class="active">Detalhes</li>
	        </ol>
	    </section>
	
	    <!-- Main content -->
	    <section class="content">
	        <div class="row">
	            <div class="col-md-6">
	            
	            	<div class="box box-primary">
			            <div class="box-header with-border">
			              <h3 class="box-title">Dados básicos</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body">
			              <strong><i class="fa fa-user"></i> Nome</strong>
			
			              <p class="text-muted">
			                Mateus de Oliveira Igreja
			              </p>
			
			              <hr>
			
			              <strong><i class="fa fa-user-secret margin-r-5"></i> Cargo atual</strong>
			              <p class="text-muted">Nenhum</p>
			
			              <hr>
			
			              <strong><i class="fa  fa-clock-o margin-r-5"></i> Anos experiencia</strong>
						  <p class="text-muted">10</p>
	
			              <hr>
			              
			              <strong><i class="fa  fa-money margin-r-5"></i> Pretenção salarial</strong>
						  <p class="text-muted">R$ 1000,00</p>
	
			              <hr>
			              
			              <strong><i class="fa fa-calendar-check-o margin-r-5"></i> Data nascimento / Idade</strong>
						  <p class="text-muted">15/05/1995 / 23 anos</p>
	
			              <hr>
			              
			              <strong><i class="fa fa-pencil margin-r-5"></i> Tags de habilidade</strong>
			              <p>
			                <span class="label label-danger">UI Design</span>
			                <span class="label label-success">Coding</span>
			                <span class="label label-info">Javascript</span>
			                <span class="label label-warning">PHP</span>
			                <span class="label label-primary">Node.js</span>
			              </p>
			              
			              <hr>
			
			              <strong><i class="fa fa-file-text-o margin-r-5"></i> Notas</strong>
						  <br>
						  <br>
			              <textarea class="form-control" rows="3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque</textarea>
			           </div>
			            <!-- /.box-body -->
			        </div>
	            </div>
	           		
	          	<div class="col-md-6">
	            	
	            	<div class="box box-primary">
			            <div class="box-header with-border">
			              <h3 class="box-title">Contato</h3>
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body">
			              <strong><i class="fa fa-phone-square margin-r-5"></i> Telefone</strong>
			              <p class="text-muted"> 11 2054-7852</p>
			
			              <hr>
			
			              <strong><i class="fa fa-mobile-phone margin-r-5"></i> Celular</strong>
			              <p class="text-muted"> 11 2054-7852</p>
			
			              <hr>
			
			              <strong><i class="fa  fa-at margin-r-5"></i> E-mail</strong>
			              <p class="text-muted"> m.gawbghuaij@gmail.com</p>

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
        