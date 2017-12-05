<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/utils.js"></script>
    <title>Success</title>
</head>
<body>
    <h1 id = "test">Success</h1>
    <button type = "button" onclick="ajaxTest()">访问</button>
    <table border="1">
        <tr>
            <th>id</th>
            <th>message</th>
        </tr>
        <c:forEach items="${messages}" var="message">
            <tr>
                <th>${message.id}</th>
                <th>${message.message}</th>
            </tr>
        </c:forEach>

    </table>
</body>
<script>
    function ajaxTest(){
        success = function (data) {
            var data = data.data;
            for(var i=0;i<data.length;i++){
                console.log("id=" +data[i].id + ";message=" +data[i].message);
            }
        }

        getData("${pageContext.request.contextPath}/showService.do",success)
    }
</script>
</html>
