<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container">
        <table id="noticeView" style="text-align: center;">
			<thead>
				<tr>
					<th colspan="4">${n.title }</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th >No. ${n.boardnum }</th>
					<th >작성자: ${n.userId }</th>
					<th >작성일: ${n.regDate }</th>
					<th >조회수: ${n.hit }</th>
				</tr>
				<tr>
					<td colspan="4" style="white-space: normal;">${n.content }</td>
				</tr>
			</tbody>
		</table>
		<div class="deatilButton">
			<span><a href="notice">목록</a></span>
			<span><a href="detailUpdata">수정</a></span>
			<span><a href="/" onclick="postDel()">삭제</a></span>
		</div>
	</div>
	<script>
		function postDel(){
			if(confirm("게시글을 삭제 하시겠습니까?")){
				location.href="notice?b=${n.boardnum }";
				alert("삭제 되었습니다.");
			}
			else {
				location.href="detail?id=${n.boardnum}";
				alert("취소 되었습니다.");
			}
		}
	</script>