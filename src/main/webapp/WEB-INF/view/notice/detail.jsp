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
					<td colspan="4">${n.content }</td>
				</tr>
			</tbody>
		</table>
	</div>