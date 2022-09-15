<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>AJAX Test</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-4">
<%--        왼쪽--%>
    <button class="left-btn btn btn-info" style="width:150px;">
        시간버튼
    </button>
    </div>
    <div class="col-md-4">
        <%--        오른쪽--%>
        <div id="result-div">
<%--            아무것도 없음--%>

<%--            AJAX를 통해서 서버에서 응답을 받아서 버튼이 만들어지게--%>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<script>
    $(document).ready(function() {
        $(".left-btn").click(function() {
            // 어떤 요소를 클릭했을때 거기에 대한 행동을 하기 위함
            // 백그라운드로 서버(컨트롤러)에 데이터/요청을 보내고 뭔가를 처리한 후 답장/응답(이것도 백그라운드로 받는다)을 받음
            // 이때, URL이 바뀌거나 화면이 새로고침되지 않음
            var date = '2022-09-01';
            $.ajax({
                url: '/timeCheck?date=' + date, //이쪽으로 요청을 하면
                success: function(res) { // 응답으로 'res'변수로 줌
                	alert(res);
                    /* $("#result-div").text(res); */

                }
            });
        });
    });
</script>

</body>
</html>
