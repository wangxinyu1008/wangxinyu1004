<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<form action="/doadd" method="post">
<table border="1px" width="700px">
    <tr>
        <th colspan="2">会议室预定</th>
    </tr>
    <tr>
        <td align="right">类型：</td>
        <td>
            <select name="meetingName">
                <option value="一号会议室">一号会议室</option>
                <option value="二号会议室">二号会议室</option>
                <option value="三号会议室">三号会议室</option>
            </select>
        </td>
    </tr>
    <tr>
        <td align="right">申请人：</td>
        <td>
            <input type="text" name="advanceName" class="advanceName">
        </td>
    </tr>
    <tr>
        <td align="right">预定日期：</td>
        <td>
            <input type="text" name="meetingOrder" class="meetingOrder">&nbsp;日期格式yyyy-MM-dd
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="申请" class="commit">&nbsp;&nbsp;
            <input type="reset" value="重置">
        </td>
    </tr>
</table>
</form>
</center>
<script>
    $(document).ready(function () {
        $(".commit").click(function () {
            var advanceName=$(".advanceName").val();
            var meetingOrder=$(".meetingOrder").val();
            var reg=/^\d{4}-\d{2}-\d{2}$/;
            if(advanceName==""||meetingOrder==""){
                alert("请填写完整信息")
                return false;
            }
            if(reg.test(meetingOrder)==false){
                alert("日期格式不正确")
                return false;
            }
        })
    })
</script>
</body>
</html>
