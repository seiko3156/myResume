<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link  rel="stylesheet" href="/css/johndoe.css">
<script src="/js/johndoe.js" type="text/javascript"></script> 

</head>
<body>

<div id= "wrap" align="center" style="width:100%">
	<form name="frmm" action="fileEditupload" method="post" enctype="multipart/form-data">
		<h1>파일선택</h1>
		<input type="file" name="image" onchange="selectedEditImage()">
		<!-- input type="submit" value="파일적용"> -->
	
	</form>
</div>



</body>
</html>