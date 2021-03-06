<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <title>Genie Travel</title>
</head>
<body style="margin: 0px; background-color: #FFFACD;">
    <header style="text-align: center;">
        <div class="title">
            <h1><a href="#"  >Genie Travel</a></h1>
            <div class="join">
                <button onclick="location.href='login'">로그인</button>
                <button onclick="location.href='join'">회원가입</button>
            </div>
        </div>
        <nav>
            <div>
                <a href="#">여행 용품</a>
                <a href="#">나의 여행계획</a>
                <a href="boardList">자유 게시판</a>
                <a href="#">공지사항</a>
            </div>
        </nav>
    </header>
    <div>
        <img src="img/08.jpg" alt="이미지가 없습니다." width="100%" height="300">
    </div>
    
    <!-- main 부분 -->
    <div style="display: flex;">
        <div style="width: 50%">
            <table id="noticeView">
                <caption style="margin: 20px; font-size: 30px;">공지사항</caption>
                <thead>
                    <tr>
                        <th >No.</th>
                        <th >제목</th>
                        <th >작성자</th>
                        <th >게시일</th>
                        <th >조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>안녕하세요</td>
                        <td>운영자</td>
                        <td>2022.06.07</td>
                        <td>1</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div style="width: 50%">
            <table id="noticeView">
                <caption style="margin: 20px; font-size: 30px;">자유게시판</caption>
                <thead>
                    <tr>
                        <th >No.</th>
                        <th >제목</th>
                        <th >작성자</th>
                        <th >게시일</th>
                        <th >조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>안녕하세요</td>
                        <td>운영자</td>
                        <td>2022.06.07</td>
                        <td>1</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!--footer 부분-->
    <br><br><br><br><br><br>
    <footer>
        푸터 영역
    </footer>

</body>
</html>