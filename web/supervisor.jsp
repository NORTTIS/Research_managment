<%-- 
    Document   : supervisor
    Created on : Jun 4, 2024, 12:50:33 PM
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
    </head>
    <body>
       <!-- header [component]-->
        <jsp:include page="./JspTemplate/header.jsp" />

        <div class="container mt-5">
            <div class="row">
                <div class="content-left col-lg-4">
                    <div class="category content-left-top">
                        <h2 class="content-title">Student</h2>
                        <ul class="cate-list">
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                            <li class="cate-item">
                                <a href="#">Lorem ipsum dolor sit amet 1.</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content-right col-lg-8">
                    <h2 class="content-title">Student Research</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Research name</th>
                                <th scope="col">Category</th>
                                <th scope="col">Supervisor</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr data-href="#">
                                <th scope="row">1</th>
                                <td>Larry</td>
                                <td>la</td>
                                <td>LarrySupervisor</td>
                                <td>done</td>
                                <td>
                                    <a href="!#" class="btn btn-primary"
                                        >Accept</a
                                    >
                                    <a href="#" class="btn btn-danger"
                                        >reject</a
                                    >
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    
                    <form action="#" class="">
                        <select name="sortBy" id="sortBy">
                            <option value="" disabled selected>
                                Sort by status
                            </option>
                            <option value="done">done</option>
                            <option value="ongoing">ongoing</option>
                            <option value="reject">reject</option>
                        </select>
                        <button type="submit" class="btn btn-cos">sort</button>
                    </form>
                </div>
            </div>
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
    </body>
</html>

