<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
컴플리트 에디트 업로드
${image} 
<script type="text/javascript">
	alert('오류1');
	opener.document.editform.image.value='${image}'; // 전송될 히든태그에 이름 삽입
	alert('오류2');
	opener.document.getElementById('image').innerHTML='${image}'; //파일이름 확인을 위한 표시
	alert('오류3');
	opener.document.getElementById('previewimg').setAttribute('src', '/image/' + '${image}' );
	alert('오류4');
	opener.document.getElementById('previewimg').style.display='inline'; //이미지 미리보기
	alert('오류5');
	self.close();
	
</script>

</body>
</html>