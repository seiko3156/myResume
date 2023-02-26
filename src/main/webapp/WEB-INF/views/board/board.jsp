<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/headerfooter/header.jsp" %> 
    <div class="board_wrap">
        <div class="board_title">
            <strong>문의사항</strong>
            
            	${list.CONTENT}
            
            <p>문의 남겨주시면 빠르게 답변드리겠습니다</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">글번호</div>
                    <div class="secret">공개여부</div>
                    <div class="title">제목</div>
                    <div class="rep">답변여부</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                <div>
                <c:forEach items="${listJboard}" var="list">
                	<c:choose>
                		<c:when test="${list.MUSTREAD=='Y'}">
	                    	<div class="num"><span style="color:red;font-weight:bold;">(중요!)</span>&nbsp;${list.JSEQ}</div>
	                    </c:when>
	                    <c:otherwise>
	                    	<div class="num">${list.JSEQ}</div>
	                    </c:otherwise>
	                </c:choose>
	                <c:choose>
                		<c:when test="${list.SECRET=='Y'}">
	                    	<div class="secret"><img src="image/lock.jpg" style="width:20px;height:20px;"></div>
	                    </c:when>
	                    <c:otherwise>
	                    	<div class="secret"><img src="image/open.jpg" style="width:20px;height:20px;"></div>
	                    </c:otherwise>
	                </c:choose>
	                <c:choose>
                		<c:when test="${list.SECRET=='Y'}">
	                    	<div class="title" style="text-align: center;"><a href="#" onclick="boardPwdCheck('${list.PASS}','${list.JSEQ}')">${list.SUBJECT}</a></div>
	                    </c:when>
	                    <c:otherwise>
	                    	<div class="title"  style="text-align: center;"><a href="view?jseq=${list.JSEQ}">${list.SUBJECT}</a></div>
	                    </c:otherwise>
	                </c:choose>
	                <c:choose>
                		<c:when test="${list.REP=='Y'}">
	                    	<div class="rep">(답변완료)</div>
	                    </c:when>
	                    <c:otherwise>
	                    	<div class="rep">(미답변)</div>
	                    </c:otherwise>
	                </c:choose>      
	                    
	                    <div class="writer">${list.NAME}</div>
	                    <div class="date"><fmt:formatDate value="${list.JDATE}"/></div>
	                    <div class="count">${list.VIEWS}</div>
                </c:forEach>    
                </div>
            </div>
           <!--페이징  --> 
           <div class="board_page" id="paging" align="center" style="font-size:110%;" >
			<c:url var="action" value="board" />
			<c:if test="${paging.prev}">
				<a href="${action}?page=${paging.beginPage-1}">◀</a>&nbsp;
			</c:if>
	<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" var="index">
			<c:choose>
        	<c:when test="${paging.page==index}">
        		<span style="color:red;font-weight:bold">${index}&nbsp;</span>
        	</c:when>
	        <c:otherwise>
				<a href="${action}?page=${index}">${index}</a>&nbsp;
			</c:otherwise>
			</c:choose>
	</c:forEach>
	<c:if test="${paging.next}">
			<a href="${action}?page=${paging.endPage+1}">▶</a>&nbsp;
	</c:if>	
</div>
            <div class="bt_wrap">
                <a href="writeForm" class="on">문의 남기기</a>
            </div>
        </div>
    </div>
<%@ include file="../include/headerfooter/footer.jsp" %> 
</body>
</html> 