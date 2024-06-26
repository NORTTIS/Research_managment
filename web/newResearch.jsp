<%-- 
    Document   : newResearch
    Created on : Jun 4, 2024, 12:50:08 PM
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

        <!-- New Reseach -->
        <section class="container mt-5">
            <div class="newResearch-content col-6 mx-auto">
                <h1>New Research</h1>
                <form action="#" method="post" class="form">
                    <label for="Research name">Research name</label>
                    <input
                        type="text"
                        name="researchName"
                        id="researchName"
                        class="form-control mb-4"
                        required
                    />

                    <label for="category">Category</label>
                    <select
                        id="category"
                        name="category"
                        required
                        class="form-control mb-4"
                    >
                        <option value="" disabled selected>
                            Select a category
                        </option>
                        <option value="science">Science</option>
                        <option value="technology">Technology</option>
                        <option value="engineering">Engineering</option>
                        <option value="mathematics">Mathematics</option>
                    </select>

                    <label for="supervisor">supervisor</label>
                    <select
                        id="supervisor"
                        name="supervisor"
                        required
                        class="form-control mb-4"
                    >
                        <option value="" disabled selected>
                            choose your supervisor
                        </option>
                        <option value="science">MR.B</option>
                        <option value="technology">MR.C</option>
                        <option value="engineering">MR.D</option>
                        <option value="mathematics">MR.E</option>
                    </select>

                    <button type="submit" class="btn btn-info col-3">
                        Create
                    </button>
                </form>
            </div>
        </section>

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
