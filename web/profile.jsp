<%-- 
    Document   : profile
    Created on : Jun 11, 2024, 8:20:46 PM
    Author     : Norttie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Profile</title>
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./assets/css/style.css" />
        <!-- Embed google font -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100&display=swap"
            rel="stylesheet"
            />
        <style>
            .no-border {
                border: none;
                outline: none;
                box-shadow: none;
            }
            .opa-05{
                opacity: 0.5;
            }
        </style>
    </head>
    <body style="background-color: #eaf8ff;">
        <!-- header [component]-->
        <jsp:include page="./JspTemplate/header.jsp" />
        <!--end header-->
        <section >
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body text-center">
                                <img src="./assets/image/${sessionScope.acc.avatar}" alt="avatar"
                                     class="rounded-circle img-fluid" style="width: 150px;">
                                <h5 class="my-3">${sessionScope.acc.userName}</h5>
                                <p class="text-muted mb-1">${sessionScope.acc.desc}</p>
                                <p class="text-muted mb-4">${sessionScope.acc.address}</p>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <form action="profile" method="POST" id="myForm" enctype="multipart/form-data">
                                    
                                    <div class="row">
                                        <input type="text" name="id" value="${sessionScope.acc.id}" hidden />
                                    </div>
                                        
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Full Name</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="name" value="${sessionScope.acc.userName}" />
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Email</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <!--<input type="text" class="mb-0 no-border text-muted " name="email" value="" />-->
                                            <p class="text-muted">${sessionScope.acc.email}</p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Description</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="desc" value="${sessionScope.acc.desc}"/>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Address</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="text" class="mb-0 no-border text-muted " name="address" value="${sessionScope.acc.address}"/>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p class="mb-0">Avatar</p>
                                        </div>
                                        <div class="col-sm-9">
                                            <input type="file" class="mb-0 no-border text-muted "  name="file" accept="image/"/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="btn btn-primary col-1 ml-auto" id="submitBtn">sửa</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            document.getElementById('submitBtn').addEventListener('click', function () {
                document.getElementById('myForm').submit();
            });
        </script>
    </body>
</html>
