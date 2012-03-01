<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="MyPage"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }
    </style>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="brand" href="#">Mail Watcher</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li> <a class="home" href="${createLink(uri: '/')}">Home</a></li>

                </ul>
            </div>


        </div>
    </div>
</div>



<div class="container">
    <g:layoutBody/>
    <footer>
        <p>&copy; Mail-Watcher hitesh@intelligrape.com 2012</p>
    </footer>
</div> <!-- /container -->

<!-- Placed at the end of the document so the pages load faster -->
<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>


