<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exemplo.aspx.cs" Inherits="exemplo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Menu com efeito fade-in com JQuery</title>

<style type="text/css">
        body {
                background-color:#354027;
                margin:0;
        }
        
        /* No Firefox com correção de estrutura de tópicos */
        a:active { 
                outline: none; 
        }
        
        /* No Firefox com correção de estrutura de tópicos */
        a:focus { 
                -moz-outline-style: none; 
        }
        
        /* Menu */
        ul#menu {
                width:80%;
                height:102px;
                background:url(bg.png) repeat-x;
                list-style:none;
                margin:0;
                padding:0;
                padding-top:20px;
                padding-left:20%;
        }
        
        /* Exibem elementos float LI - horizontais  */
        ul#menu li {
                float:left;
        }
        
        /* Link - atributos comuns */
        ul#menu li a {
                background:url(images/sprite.png) no-repeat scroll top left;
                display:block;
                height:81px;
                position:relative;
        }
        
        /* *Especifique a largura e atributos de posição especificamente para a classe de plano de fundo: "home" */
        ul#menu li a.home {
                width:159px;
        }
        
        /* *Especifique a largura e atributos de posição especificamente para a classe de plano de fundo: "portfolio" */
        ul#menu li a.portfolio {
                width:157px;
                background-position:-159px 0px;
        }
        
        /* Span (on hover) - atributos comuns */
        ul#menu li a span {
                background:url(images/sprite.png) no-repeat scroll bottom left;
                display:block;
                position:absolute;
                top:0;
                left:0;
                height:100%;
                width:100%;
                z-index:100;
        }
        
        /* Span (on hover) - display pointer (ponteiro de exibição)*/
        ul#menu li a span:hover {
                cursor:pointer;
        }
        
        /* background position focalizado para a classe: "home" */
        ul#menu li a.home span {
                background-position:0px -81px;
        }
        
        /* background position focalizado para a classe: "portfolio" */
        ul#menu li a.portfolio span {
                background-position:-159px -81px;
        }
</style>

<!-- Include jQuery Biblioteca -->
<script src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js" type="text/javascript"></script>

<!-- Vamos fazer a animação. -->
<script type="text/javascript">
    $(function () {
        // Definir a opacidade no carregamento da página
        $("ul#menu span").css("opacity", "0");
        // on mouse over
        $("ul#menu span").hover(function () {
            // animar a opacidade a plena
            $(this).stop().animate({
                opacity: 1
            }, 'slow');
        },
        // on mouse out
                function () {
                    // animar a opacidade
                    $(this).stop().animate({
                        opacity: 0
                    }, 'slow');
                });
    });
</script>

</head>

<body>
        <ul id="menu">
        <li><a href="#" class="home"><span></span></a></li>
        <li><a href="#" class="portfolio"><span></span></a></li>
    </ul>
</body>

</html>