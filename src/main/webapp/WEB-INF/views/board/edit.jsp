<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/headerfooter/header.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수정</title>
    <link rel="stylesheet" href="css/css.css">
</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>수정하기</strong>
        </div>
        <form name="editform" method="post" action="edit" >
        <input type="hidden" name="jseq" value="${jboard.JSEQ}">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" value="${jboard.SUBJECT}" name="subject"></dd>
                    </dl>
                </div>
                <div class="title">
                    <img src="image/${jboard.IMAGE}" style="height:250px; width:250px;">
                </div>
                <div class="info">
                	<dl>
                        <dt>중요</dt>
                        <dd><input type="checkbox" name="mustread" value="Y"></dd>
                    </dl>
                    <dl>
                        <dt>비밀여부</dt>
                        <dd><input type="checkbox" name="secret" value="Y"></dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" value="${jboard.NAME}" name="name"></dd>
                    </dl>
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input id="pass" name="pass" type="password" placeholder="비밀번호 입력"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea rows="10" cols="10" name="content" style="width:100%;">${jboard.CONTENT}</textarea>
                </div>
                
                <div class="cont">
                    <label>이미지 사진</label><input type="button" value="파일선택" onClick="selectEditImg()"><br>
					<div id="image" style="float: left"></div>
					<div>
						<input type="hidden" name="image">
					</div>
					<!-- 멀티파트 쓰면 오류나서 여기서 두개실행 해서 따로 하는것 -->
					<img src="" id="previewimg" width="150" style="display: none" />
                </div>
            </div>
            <div class="bt_wrap">
                <a href="#" class="on" onclick="writeSubmit('edit')">수정</a>
                <a href="board">돌아가기</a>
            </div>
        </div>
        ${message}
        </form>
    </div>
</body>
<%@ include file="../include/headerfooter/footer.jsp" %> 
</html>