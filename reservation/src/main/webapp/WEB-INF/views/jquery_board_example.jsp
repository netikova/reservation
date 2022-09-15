<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시판</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
</head>
<body>
<br/><br/><br/>
<div class="row">
    <div class="col-md-2">

    </div>
    <div class="col-md-8">
        <p style="text-align:right">
            <a href="글쓰기 페이지 URL" class="btn btn-success">글쓰기</a>
            <a href="수정 페이지 URL" class="btn btn-info">수정</a>
            <a href="삭제 페이지 URL" class="btn btn-danger">삭제</a>
        </p>
    </div>
</div>

<div class="row">
    <div class="col-md-2">

    </div>
    <div class="col-md-8">
        <table id="board_table">
            <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th style="width:100px">날짜</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>1</td>
                <td>공지사항1</td>
                <td>2022-09-01</td>
            </tr>
            <tr>
                <td>2</td>
                <td>공지사항2</td>
                <td>2022-08-31</td>
            </tr>
            <tr>
                <td>3</td>
                <td>게시글333</td>
                <td>2022-08-31</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<script
        src="https://code.jquery.com/jquery-3.6.1.js"
        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function() {
        $('#board_table').DataTable();
    });
</script>
</body>
</html>