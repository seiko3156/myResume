<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="/css/boardcss.css">
    <link  rel="stylesheet" href="/css/johndoe.css">
    <script src="/js/johndoe.js" type="text/javascript"></script>  
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
<a href="board" class="btn btn-primary btn-component" data-spy="affix" data-offset-top="600"><i class="ti-shift-left-alt"></i> 게시판 이동</a>
<header class="header">
        <div class="container">
            <ul class="social-icons pt-3">
                <li class="social-item"><a class="social-link text-light" href="#"><i class="ti-facebook" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="#"><i class="ti-twitter" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="#"><i class="ti-google" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="#"><i class="ti-instagram" aria-hidden="true"></i></a></li>
                <li class="social-item"><a class="social-link text-light" href="#"><i class="ti-github" aria-hidden="true"></i></a></li>
            </ul>  
            <div class="header-content">
                <h4 class="header-subtitle" >Hello, I am</h4>
                <h2 class="header-title">SeungJun Ryu</h2><br><br><br>
                <h6 class="header-mono" >개발자를 희망하는 류승준입니다.</h6>
                <button class="btn btn-primary btn-rounded" onclick="location.href='https://drive.google.com/file/d/1KKOHnWThkph2fhQkmP_IoB35Vvog6YXd/view?usp=share_link'"><i class="ti-printer pr-2"></i>이력서 미리보기</button>
            </div>
        </div>
    </header>