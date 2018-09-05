<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
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
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

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
      <a href="index.html" class="logo">
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

        <!-- <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li>
            <a href="#" data-toggle="control-sidebar">
              <b>Cadastrar departamento</b>
              <i class="fa fa-plus"></i>
            </a>
          </li>
        </ul>
      </div> -->
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

          <li >
            <a href="#">
              <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              <span class="pull-right-container">
              </span>
            </a>
          </li>

          <li class="header">Analista RH</li>

          <li class="treeview">
            <a href="#">
              <i class="fa fa-font-awesome"></i>
              <span>Vagas</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="pages/charts/chartjs.html"><i class="fa fa-th-list"></i> Listar vagas</a></li>
              <li><a href="pages/charts/morris.html"><i class="fa fa-plus"></i> Cadastrar vaga</a></li>
            </ul>
          </li>

          <li >
            <a href="#">
              <i class="fa fa-user"></i> <span>Listar departamentos</span>
              <span class="pull-right-container">
              </span>
            </a>
          </li>

          <li class="header">Recrutador</li>

          <li class="treeview active">
            <a href="#">
              <i class="fa fa-question-circle"></i>
              <span>Provas</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li class="active"><a href="pages/charts/chartjs.html"><i class="fa fa-th-list"></i> Editar prova</a></li>
              <li><a href="pages/charts/morris.html"><i class="fa fa-plus"></i> Cadastrar prova</a></li>
            </ul>
          </li>

          <li>
            <a href="#">
              <i class="fa fa-user"></i> <span>Listar candidatos</span>
              <span class="pull-right-container">
              </span>
            </a>
          </li>

          <li>
            <a href="#">
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

    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b></b>
      </div>
      <strong></strong>
    </footer>


  </div>
  <!-- ./wrapper -->

  <!-- jQuery 3 -->
  <script src="bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- FastClick -->
  <script src="bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>
  <!-- Sparkline -->
  <script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
  <!-- jvectormap  -->
  <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- SlimScroll -->
  <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- DataTables -->
  <script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <!-- ChartJS -->
  <script src="bower_components/chart.js/Chart.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="dist/js/pages/dashboard2.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>

  <script>
    $(function () {
      $('#tabela').DataTable({
        'paging'      : true,
        'lengthChange': false,
        'searching'   : false,
        'ordering'    : true,
        'info'        : true,
        'autoWidth'   : false
      })
    })
  </script>
</body>

</html>
