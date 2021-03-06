<#include "../security/security.ftl"/>
<#macro main title>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${title}</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="/css/themify-icons.min.css" type="text/css">
        <link rel="stylesheet" href="/css/elegant-icons.min.css" type="text/css">
        <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="/css/nice-select.min.css" type="text/css">
        <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="/css/style.css" type="text/css">
    </head>

    <body>

    <#include "./header.ftl"/>

    <main>
        <@content/>
    </main>

    <#include "./partners.ftl"/>
    <#include "./footer.ftl"/>

    <!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.countdown.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery.zoom.min.js"></script>
    <script src="/js/jquery.dd.min.js"></script>
    <script src="/js/jquery.slicknav.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
    </body>
    </html>
</#macro>