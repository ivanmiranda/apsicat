<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<ciclo reciente>
    <title>APSICAT - {titulo}</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="{intro}" />
    <meta name="author" content="Redacción" />
    <meta name="copyright" content="Algunos Derechos Reservados - apsicat.com" />

    <meta itemprop="name" content="APSICAT - {titulo}" />
    <meta itemprop="description" content="{intro}" />
    <meta itemprop="image" content="http://apsicat.com/html/images/blog/{imagen}" />
    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@publisher_handle" />
    <meta name="twitter:title" content="APSICAT - {titulo}" />
    <meta name="twitter:description" content="{intro}" />
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="http://apsicat.com/html/images/blog/{imagen}" />
    <!-- Open Graph data -->
    <meta property="og:title" content="APSICAT - {titulo}" />
    <meta property="og:type" content="blog" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="http://apsicat.com/html/images/blog/{imagen}" />
    <meta property="og:description" content="{intro}" />
    <meta property="og:site_name" content="APSICAT - Somos tu alternativa" /meta property="fb:admins" content="183559165001409" />
</ciclo reciente>
    
    <!-- core CSS -->
    <link href="{BASE_URL}html/css/bootstrap.min.css" rel="stylesheet">
    <?php if(APP_PROTOCOL == "https://") { ?>
    <link href="{BASE_URL}html/css/font-awesome-ssl.min.css" rel="stylesheet">
    <?php } else { ?>
    <link href="{BASE_URL}html/css/font-awesome.min.css" rel="stylesheet">
    <?php } ?>
    <link href="{BASE_URL}html/css/animate.min.css" rel="stylesheet">
    <link href="{BASE_URL}html/css/prettyPhoto.css" rel="stylesheet">
    <link href="{BASE_URL}html/css/main.css" rel="stylesheet">
    <link href="{BASE_URL}html/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="{BASE_URL}html/images/ico/favicon.gif">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{BASE_URL}html/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{BASE_URL}html/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{BASE_URL}html/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="{BASE_URL}html/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>+52 (55) 4149 8791</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <span style="color:#fff;">Siguenos </span>
                            <ul class="social-share">
                                <li><a href="http://www.facebook.com/apsicat"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="http://www.twitter.com/apsicat"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="skype:evangelina541?call"><i class="fa fa-skype"></i></a></li>
                                <li><a href="http://apsicat.com/blog/rss"><i class="fa fa-rss-square"></i></a></li>
                            </ul>
                            <!--
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Buscar">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                            //-->
                       </div>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Ocultar navegación</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{BASE_URL}"><img src="{BASE_URL}html/images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="{BASE_URL}">Inicio</a></li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">Servicios Terapeuticos <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="{BASE_URL}info/individual">Terapia Individual</a></li>
                                <li><a href="{BASE_URL}info/pareja">Terapia de Pareja</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="{BASE_URL}blog">Blog</a></li> 
                        <li><a href="{BASE_URL}contacto">Contacto</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
