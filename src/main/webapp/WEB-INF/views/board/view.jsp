<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/headerfooter/header.jsp" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>디테일</title>
    <link rel="stylesheet" href="/css/boardcss.css">
</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의 게시판</strong>
        </div>
        
        <div class="board_view_wrap">
            <div class="board_view">
            <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${jboard.JSEQ}</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>${jboard.NAME}</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd><fmt:formatDate value="${jboard.JDATE}"/></dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>${jboard.VIEWS}</dd>
                    </dl>
                </div>
                <div class="title">
                    ${jboard.SUBJECT}
                </div>
                <div class="title">
                    <img src="image/${jboard.IMAGE}" style="height:250px; width:250px;">
                </div>
                
                <div class="cont">
                    ${jboard.CONTENT}
                </div>
                <c:choose>
                	<c:when test="${jboard.REP=='Y'}">
                		<div class="cont">
                    		${jboard.REPLYJBOARD}
                		</div>
                	</c:when>
                	<c:otherwise>
                	<form name="frm" action="reply" method="post">
                		<div class="cont">
                    		<textarea rows="10" cols="10" name="replyjboard" style="width:100%;"></textarea>
                			<input type="hidden" value="renum" name="renum">
                			<input type="hidden" value="${jboard.JSEQ}" name="jseq">
                			<input type="submit" value="답글작성">
                			
                		</div>
                	</form>
                	</c:otherwise>
                </c:choose>
            </div>
            <div class="bt_wrap">
                <a href="board" class="on">목록</a>
		        <a href="#" onclick="editPwdcheck('${jboard.PASS}','${jboard.JSEQ}')">수정</a>
		        <a href="#" onclick="deletePwdcheck('${jboard.PASS}','${jboard.JSEQ}')">삭제</a>
            </div>
        </div>
    </div>
</body>
<%@ include file="../include/headerfooter/footer.jsp" %> 
</html>