<%-- 
    Document   : ResearchDetail
    Created on : Jun 4, 2024, 12:50:16 PM
    Author     : Norttie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./assets/css/style.css" />
        <!-- Embed google font -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100&display=swap"
            rel="stylesheet"
        />
        <link
            href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
            rel="stylesheet"
        />
        <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    </head>
    <body>
        <!-- header [component]-->
        <jsp:include page="./JspTemplate/header.jsp"/>

        <!-- research detail -->
        <div class="container mt-5">
            <a href="#" class="btn btn-light">back</a>
            <h1 class="">Research detail</h1>
            <div class="">
                <div class="d-flex flex-column">
                    <p class="research-name">research-name:</p>
                    <p class="create-detail">create at:</p>
                    <p class="create-detail">create by:</p>
                </div>
            </div>
            <h2 class="">Research content</h2>
            <form id="editor-form" action="/submit" method="POST">
                <div id="editor-container" style="height: 200px"></div>
                <input type="hidden" name="content" id="content" />
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>

        <!-- component -->
        <script
            src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"
        ></script>
        <script src="./assets/js/script.js"></script>
        <script>
            var quill = new Quill("#editor-container", {
                theme: "snow",
            });
        </script>
    </body>
</html>

