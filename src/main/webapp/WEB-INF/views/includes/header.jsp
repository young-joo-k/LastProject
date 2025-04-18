<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix ="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ShowFesta</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/assets/img/favicon.png" rel="icon">
  <link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
  <link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/assets/vendor/swiper/swiper.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS Files -->
  <link href="/resources/assets/css/variables.css" rel="stylesheet">
  <link href="/resources/assets/css/main.css?after" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="/join/main" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="/resources/assets/img/logo.png" alt=""> -->
        <h1>ShowFesta</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="../join/main">Home</a></li>
          <li><a href="/page/news">News</a></li>
          <li class="dropdown"><a href="category.html"><span>Categories</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="./musical.jsp">뮤지컬</a></li>
              <li><a href="#">콘서트</a></li>
              <li><a href="#">페스티벌</a></li>
              <li><a href="#">지역축제</a></li>
            </ul>
          </li>

          <li><a href="/page/calendar">Calendar</a></li>
          <li><a href="qna.html">Notice</a></li>
        </ul>
      </nav><!-- .navbar -->
      <div class="position-relative">
<!--       el이랑 jstl로 조건문 만들어 보기 -->
		<a href="#" class="mx-2" id="myPage" style="display: ${empty user ? 'inline' : 'none'}"><span class="bi-person-fill"></span></a>
		<a href="/join/login" class="mx-2" id="logIn" style="display: ${empty user ? 'inline' : 'none'}">Sign-In</a>
		<a href="/join/register" class="mx-2" id="register" style="display: ${empty user ? 'inline' : 'none'}">Sign-Up</a>
		<a ${empty user ? 'style="display:none;"' : ''}>${user.name }
		        <c:if test="${user.checked == 1}">(사업자)</c:if>
	    </a>
		<a href="/join/logout" class="mx-2" id="logoutLink" style="display: ${not empty user ? 'inline' : 'none'}">Sign-Out</a>

		<!-- JavaScript -->
        <a href="#" class="mx-2 js-search-open"><span class="bi-search"></span></a>
        <i class="bi bi-list mobile-nav-toggle"></i>

        <!-- ======= Search Form ======= -->
        <div class="search-form-wrap js-search-form-wrap">
          <form action="search-result.html" class="search-form">
            <span class="icon bi-search"></span>
            <input type="text" placeholder="Search" class="form-control">
            <button class="btn js-search-close"><span class="bi-x"></span></button>
          </form>
        </div><!-- End Search Form -->

      </div>

    </div>

  </header><!-- End Header -->

