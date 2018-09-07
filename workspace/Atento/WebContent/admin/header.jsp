<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Atento RH | Candidatos</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="bower_components/select2/dist/css/select2.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/dialog-polyfill.css" />

    <!--CSS-->
    <link rel="stylesheet" href="css/estilo.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="index.jsp" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>A</b></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Painel</b></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Alternar visão</span>
                </a>
            </nav>

        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="images/user.png" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Mateus Igreja</p>
                        <a href="#"><i class="fa fa-sign-out text-success" style="color:#0081aa"></i><b> Logout</b></a>
                    </div>
                </div>
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">PRINCIPAL</li>

                    <% String uri = request.getRequestURI();
					   String pageName = uri.substring(uri.lastIndexOf("/")+1);
					%>

                        <li <% if(pageName.contains("index")) out.print("class='active'"); %>>
                            <a href="index.jsp">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                                <span class="pull-right-container">
              					</span>
                            </a>
                        </li>

                        <li class="header">Analista RH</li>

                        <li class="treeview<% if(pageName.contains("vagas") || pageName.contains("nova-vaga")) out.print(" active"); %>">
                            <a href="">
                                <i class="fa fa-font-awesome"></i>
                                <span>Vagas</span>
                                <span class="pull-right-container">
                					<i class="fa fa-angle-left pull-right"></i>
              					</span>
                            </a>
                            <ul class="treeview-menu">
                                <li <% if(pageName.contains("vagas")) out.print( "class='active'"); %>><a href="vagas.jsp"><i class="fa fa-th-list"></i> Listar vagas</a></li>
                                <li <% if(pageName.contains("nova-vaga")) out.print( "class='active'"); %>><a href="nova-vaga.jsp"><i class="fa fa-plus"></i> Cadastrar vaga</a></li>
                            </ul>
                        </li>

                        <li <% if(pageName.contains("departamentos")) out.print("class='active'"); %>>
                            <a href="departamentos.jsp">
                                <i class="fa fa-user"></i> <span>Listar departamentos</span>
                                <span class="pull-right-container">
              					</span>
                            </a>
                        </li>

                        <li class="header">Recrutador</li>

                        <li class="treeview<% if(pageName.contains("provas")) out.print(" active"); %>">
                            <a href="#">
                                <i class="fa fa-question-circle"></i>
                                <span>Provas</span>
                                <span class="pull-right-container">
                				<i class="fa fa-angle-left pull-right"></i>
             				 </span>
                            </a>
                            <ul class="treeview-menu">
                                <li <% if(pageName.contains("provas")) out.print("class='active'"); %>><a href="provas.jsp"><i class="fa fa-th-list"></i> Editar prova</a></li>
                                <li><a href="pages/charts/morris.html"><i class="fa fa-plus"></i> Cadastrar prova</a></li>
                            </ul>
                        </li>

                        <li <% if(pageName.contains("candidatos")) out.print( "class='active'"); %>>
                            <a href="candidatos.jsp">
                                <i class="fa fa-user"></i> <span>Listar candidatos</span>
                                <span class="pull-right-container">
             					</span>
                            </a>
                        </li>

                        <li <% if(pageName.contains("vagas")) out.print("class='active'"); %>>
                            <a href="vagas.jsp">
                                <i class="fa fa-font-awesome"></i> <span>Listar vagas</span>
                                <span class="pull-right-container">
              					</span>
                            </a>
                        </li>

                        <li class="header">Relatórios</li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-pie-chart"></i>
                                <span>Relatórios</span>
                                <span class="pull-right-container">
                					<i class="fa fa-angle-left pull-right"></i>
              					</span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> A</a></li>
                                <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> B</a></li>
                            </ul>
                        </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>