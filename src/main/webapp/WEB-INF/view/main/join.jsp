<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="margin: 30px;">
    <form action="join.html" name="addjoin" method="post">
        <table>
          <tr>
            <td>아이디:</td>
            <td><input type="text" name="userId"></td>
          </tr>
          <tr>
            <td>비밀번호:</td>
            <td><input type="password" name="userPs"></td>
          </tr>
          <tr>
            <td>이름:</td>
            <td><input type="text" name="userName"></td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="submit" value="회원가입" onclick="checkfield()">
              <input type="button" value="취소" onclick="location.href = 'index'">
            </td>
          </tr>
        </table>
    </form>
</div>