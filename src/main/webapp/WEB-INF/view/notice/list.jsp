<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container">
        <!-- 검색기능 -->
        <div class="search">
            <form action="" method="get">
                <select name="title">
                    <option value="title">제목</option>
                    <option value="Writer">작성자</option>
                </select>
                <input type="text" >
                <input type="submit" value="검색">
            </form>
        </div>
        <!-- 게시판 테이블-->
        <div >
        	<div>
		        <table>
		                <thead>
		                    <tr>
		                        <th >No.</th>
		                        <th width="900">제목</th>
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
        <!-- 페이징 -->
        <div>
            <div class="pageview">
                1/5 page
            </div>
            <div class="pageing">
                <button>이전</button>
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <span>5</span>
                <button>다음</button>
            </div>
        </div>
        <!-- 버튼 -->
        <div class="legi">
            <button>글쓰기</button>
        </div>
    </div>