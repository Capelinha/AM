<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% if(request.getAttribute("reload") != null)  {
		String uri = request.getRequestURI();
		String pageName = uri.substring(uri.lastIndexOf("/")+1);
		response.sendRedirect(pageName);
	}%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Junte-se hoje à nossa equipe.
Oferecemos oportunidades para pessoas com deficiência e beneficiários
reabilitados da Previdência Social.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <meta name="og:title" content="Atento">
    <meta name="og:image" content="http://www.atento.comimages/facebook-share.jpg">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Atento | Faça parte da Nossa Equipe</title>
    <!-- Le styles -->
    <link href="css/atento.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/jquery.fancybox.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/jquery.mmenu.all.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/owl.carousel.css" media="screen" rel="stylesheet" type="text/css">
    <link href="images/favicon.jpg" rel="shortcut icon" type="image/vnd.microsoft.icon">
    <link href="css/estilo.css" media="screen" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>na
            <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    <!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
    <!-- Select2 -->
    <link rel="stylesheet" href="css/select2.min.css">
</head>

<body class="">
    <div class="wrapper">
        <header class="hidden-xs hidden-sm main-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <a href="/pt/" class="logo">
                            <img src="images/logo.png" alt="logo" width="145" height="30">
                        </a>
                    </div>
                    <div class="col-md-18 col-sm-18 text-right">
                        <ul class="navigation" id="navigation">
                            <li class="">
                                <a href="/pt/quem-somos/" class="nav-blue " data-href="menu-blue">
                                    <span class="icon">
                    <img src="images/menu/about-us.png" alt="about-us">
                </span>
                                    <span class="text">Quem Somos</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="/pt/nossas-solucoes/" class="nav-skyBlue " data-href="menu-skyBlue">
                                    <span class="icon">
                    <img src="images/menu/portfolio.png" alt="portfolio">
                </span>
                                    <span class="text">Nossas Soluções</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="/pt/atento-no-mundo/" class="nav-turquois " data-href="menu-turquois">
                                    <span class="icon">
                    <img src="images/menu/location.png" alt="location">
                </span>
                                    <span class="text">Atento no Mundo</span>
                                </a>
                            </li>
                            <li class="">
                                <a href="/pt/sala-de-imprensa/" class="nav-lightBlue " data-href="menu-lightBlue">
                                    <span class="icon">
                    <img src="images/menu/press-room.png" alt="press-room">
                </span>
                                    <span class="text">Sala de Imprensa</span>
                                </a>
                            </li>
                            <li class="no-cross">
                                <a href="/pt/trabalhe-conosco/" class="nav-orange active" data-href="menu-orange">
                                    <span class="icon">
                    <img src="images/menu/join.png" alt="join">
                </span>
                                    <span class="text">Trabalhe Conosco</span>
                                </a>
                            </li>
                            <li class="triple">
                                <div>
                                    <div class="search text-right" id="btn-search">
                                        <a class="caption no-styles">Buscar</a>
                                        <span class="icon">
                        <img src="images/icons/search.png" alt="search">
                    </span>
                                    </div>
                                    <div class="language text-right">
                                        <a href="#" class="language-select" id="languages">
                                            <span class="caption">
                            Idiomas                        </span>
                                            <span class="glyphicon glyphicon-triangle-bottom"></span>
                                        </a>

                                        <ul class="languages clearfix" id="languages-list">
                                            <li>
                                                <a href="/join-us/join-the-atento-team">English</a>
                                            </li>
                                            <li>
                                                <a href="/es/unete-al-equipo/unete-al-equipo-atento">Español</a>
                                            </li>
                                            <li>
                                                <a href="">Português</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="contact text-right ">
                                        <span class="caption">
                        <a class="no-styles" href="/pt/contato/">
                            Contato                        </a>
                    </span>
                                        <span class="icon">
                        <img src="images/icons/envelope.png" alt="envelope">
                    </span>
                                    </div>
                                </div>
                            </li>
                            <li class="initial-cross"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <header class="visible-xs visible-sm">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-11">
                        <a href="/" class="logo">
                            <img src="images/logo.png" alt="logo" width="145" height="30">
                        </a>
                    </div>
                    <div class="col-sm-18 col-xs-11 text-right">
                        <a href="#" class="navbar-toggle" id="open-mobile">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
        <!-- SUBMENU Join Us -->
        <nav class="menu-orange second-level menu-no-icons hidden-sm hidden-xs">
            <div class="container container-menu">
                <div class="row text-right" style="float:right">
                    <ul class="text-right">
                        <li class="">
                            <a href="/pt/trabalhe-conosco/atento-great-place-to-work/" class="">
                                <span class="text">Atento: Great Place To Work</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="painel-vagas.jsp" class="active">
                                <span class="text">Faça parte da Nossa Equipe</span>
                            </a>
                        </li>
                        <li class="initial-cross"></li>
                    </ul>
                </div>
                
                <div class="row text-right"  style="float:left">
                    <ul class="text-right">
                    
                    	<li class="">
                            <a href="painel-vagas.jsp" class="painel-vagas.jsp">
                                <span class="text">Painel de vagas</span>
                            </a>
                        </li>
                        
                        <li class="active">
                            <a href="#" class="active" id="botao-menu-nosso">
                                <span class="text">Minha conta</span>
                            </a>
                        </li>
                       
                       <%
                          Cookie[] cookies = request.getCookies();
                          boolean achou = false;
                          if(cookies != null){
							  for (int i = 0; i < cookies.length; i++) {
								  Cookie cookie = cookies[i];
								  if(cookie.getName().equals("idSessao")){
									  if(cookie.getValue() != "")
									  	achou = true;
								  }
							  }
                          }
					   %>
					   
					    <li class="<%if(achou){ out.print(" hidden");}%>">
                            <a href="login.jsp" class="">
                                <span class="text">Login</span>
                            </a>
                        </li>
                        
                        <li class="logado <%if(!achou){ out.print(" hidden");}%>">
                            <a href="perfil" class="">
                                <span class="text">Perfil</span>
                            </a>
                        </li>
                        
                        <li class="logado <%if(!achou){ out.print(" hidden");}%>">
                            <a href="escolha-provas.jsp" class="">
                                <span class="text">Provas</span>
                            </a>
                        </li>
                        
                        
                        <li class="logado <%if(!achou){ out.print(" hidden");}%>">
                            <a href="logout" class="">
                                <span class="text">Logout</span>
                            </a>
                        </li>	                        

                        <li class="initial-cross"></li>
                    </ul>
                </div>
                
                <!--        <img src="-->
                <!--images/white-cross.png" alt="" class="cross-top-left">-->
                <!--        <img src="-->
                <!--images/white-cross.png" alt="" class="cross-medium-left">-->
                <!--        <img src="-->
                <!--images/white-cross.png" alt="" class="cross-bottom-left">-->
            </div>
        </nav>
        <section class="search-form">
            <div class="container container-menu">
                <div class="row">
                    <div class="col-md-6"></div>
                    <div class="col-md-16 input-container">
                        <div class="text-right">
                            <form action="/pt/search/result" method="get">
                                <input type="text" name="find" placeholder="Search">

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="submenu-block hidden-sm hidden-xs"></div>
        <!-- height of absolute positioned submenu -->

        <div class="cover">
            <img src="images/headers/join-us/join-the-atento-team.jpg" alt="join-the-atento-team" class="cover-image">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-0 col-md-2 col-sm-offset-0 col-sm-3 col-xs-offset-0 col-xs-6">
                        <figure class="icon subsection">
                            <img src="images/menu/team.png" alt="join-the-atento-team">

                        </figure>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-16">
                        <h2 class="txt-orange">
                    Faça parte da Nossa Equipe                </h2>
                    </div>
                    <div class="col-md-offset-0 col-md-9 col-sm-offset-1 col-sm-10 hidden-xs">
                        <p class="txt-orange">
                            Junte-se hoje à nossa equipe. Oferecemos oportunidades para pessoas com deficiência e beneficiários reabilitados da Previdência Social. </p>
                    </div>
                </div>
            </div>
        </div>
        <nav class="breadcrumbs container">
            <div class="row">
                <ul>
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li class="txt-blue">
                        <a href="/pt/trabalhe-conosco/">
                        Trabalhe Conosco                    </a>
                    </li>
                    <li class="txt-blue">
                        Faça parte da Nossa Equipe </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-6" id="contact-description-text">
                    <div class="color-box color-box-margin box-orange">
                        <p class="text-large">
                            Somos a melhor opção para seu desenvolvimento profissional </p>
                    </div>
                </div>
                <div class="col-md-offset-1 col-md-10">