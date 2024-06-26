

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="header" style="background-color: #fff;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-2">
                <a href="index.jsp"><img
                        src="./assets/image/research-Logo.webp"
                        alt="logo"
                        class="logo"
                        /></a>
            </div>



            <div class="nav col-lg-7">
                <a href="home.jsp" class="nav__item ">Home</a>
                <c:if test="${sessionScope.acc.permission=='user'}">
                    <a href="myResearch.jsp" class="nav__item"
                       >My Research</a
                    >
                    <a href="newResearch.jsp" class="nav__item"
                       >New Research</a
                    >
                </c:if>
                <c:if test="${sessionScope.acc.permission=='admin'}">

                    <a href="admin.jsp" class="nav__item ">Admin</a>
                    <a href="newAdmin.jsp" class="nav__item"
                       >Add New Admin</a
                    >
                </c:if>

                <c:if test="${sessionScope.acc.permission=='supervisor'}">
                    <a href="supervisor.jsp" class="nav__item"
                       >Research Dependence</a
                    >
                </c:if>

            </div>

            <div class="user col-lg-3">
                <div class="user_control dropdown">

                    <c:if test="${not empty sessionScope.acc.avatar}">
                        <a href="profile.jsp">
                            <img
                                src="./assets/image/${sessionScope.acc.avatar}"
                                alt="avatar"
                                class="avatar"

                                />
                        </a>
                    </c:if>


                    <c:if test="${empty sessionScope.acc.avatar}">
                        <a href="profile.jsp">
                            <img
                                src="./assets/image/Avatar.png"
                                alt="avatar"
                                class="avatar"

                                />
                        </a>
                    </c:if>  

                </div>
                <div class="user__name">${sessionScope.acc.userName}</div>
                <c:choose>
                    <c:when test="${not empty sessionScope.acc}">
                        <a class="logout-btn" href="login.jsp">log out</a>
                    </c:when>
                    <c:otherwise>
                        <a class="logout-btn" href="login.jsp">log in</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</header>
