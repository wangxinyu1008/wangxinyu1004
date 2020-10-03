<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/2
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<table border="1px" width="500px">
    <tr style="text-align: center;background-color: darkgray" id="shou">
        <td>预定编号</td>
        <td>会议室</td>
        <td>预订人</td>
        <td>日期</td>
    </tr>
    <c:if test="${meetingRooms.size()>0}">
        <c:forEach items="${meetingRooms}" var="item2">
            <tr style="text-align: center" class="tr">
                <td>${item2.id}</td>
                <td>${item2.advanceName}</td>
                <td>${item2.meetingName}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item2.meetingOrder}" type="both"/></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
    <span style="margin-left: 420px"><a href="/toadd">预定会议室</a></span>
</center>
<script>
    $(document).ready(function () {
        $(".tr:odd").css("background-color","darkgoldenrod");
    })
</script>
</body>
</html>
