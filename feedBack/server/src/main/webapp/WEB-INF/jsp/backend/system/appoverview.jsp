<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="ch" uri="http://www.chanhong.com" %>
<html>
<head>
    <title>后台管理平台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/theme/default/module.css" type="text/css"/>
</head>
<body>
<div class="action" style="margin-top: 50px;">
    &nbsp;
</div>
<table cellpadding="0" cellspacing="0" width="100%" class="box">
    <tr>

        <td valign="top">
            <div style="float: left; padding-right: 5px;margin-top: 10px; padding-left: 5px; padding-bottom: 5px">
                <a href="${pageContext.request.contextPath}/backend/appform.html">
                    <button class="editBtn bluewB">添加应用</button>
                </a>
            </div>
            <div class="tv_main">
                <div class="channel">
                    <ul class="list">
                        <c:forEach items="${apps}" var="app">
                            <li class="c1">
                                <p>
                                    <a class="edit" href="${pageContext.request.contextPath}/backend/appform.html?appId=${app.id}">编辑</a>
                                </p>

                                <p>
                                    <img src="${applicationWebAddress}${app.actualFileName}" style="margin-top:0px;margin-left:0px; height:60px; width: 60px;" />
                                </p>
                                <p class="name">${app.appname}</p>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>


        <td/>
    <tr/>


</table>
</body>
</html>