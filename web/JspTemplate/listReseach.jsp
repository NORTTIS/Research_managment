<%-- 
    Document   : listReseach
    Created on : Jun 9, 2024, 8:05:39 PM
    Author     : Norttie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="content-right col-lg-8">
    <h2 class="content-title">Complete Research</h2>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col" class="rs-name">
                    Research Name
                </th>
                <th scope="col">Category</th>
                <th scope="col">CreateBy</th>
                <th scope="col">Supervisor</th>
                <th scope="col">like</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listR}" varStatus="i" var="r">
                <tr data-href="researchDetail.jsp">
                    <th scope="row">${i}+1</th>
                    <td>${r.Rname}</td>
                    <td>${r.cid}</td>
                    <td>${r.accountid}</td>
                    <td>${r.supervisorid}</td>
                    <td>9999+</td>
                </tr>
            </c:forEach>


        </tbody>
    </table>
    <div class="d-flex justify-content-between">
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
        <ul class="pagination pagination-lg">
            <c:forEach begin="1" end="${numPage}" var="i">
                <li class="page-item"> <a class="page-link" href="Page?index=${i}">${i}</a></li>
                </c:forEach>
        </ul>
    </div>

</div>