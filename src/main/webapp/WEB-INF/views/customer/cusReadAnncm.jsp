<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <!-- bootstrap css -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
  <!-- my css -->
  <link rel="stylesheet" type="text/css" href="../resources/css/frameCss.css">
  <link rel="stylesheet" type="text/css" href="../resources/css/commonCss.css">
  <link rel="stylesheet" type="text/css" href="../resources/css/commonFormCss.css">

  <!-- font css -->
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">

  <!-- script -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript"></script>

  <script type="text/javascript" src="../resources/js/commons/loginBox.js"></script>
  <script type="text/javascript" src="../resources/js/frame/dropdown.js"></script>
  <script type="text/javascript" src="../resources/js/frame/jquery-3.6.0.min.js"></script>

  <title>barom</title>
</head>

<body>

  <jsp:include page="../commons/mainNav.jsp"></jsp:include>

  <!-- header part end-->

  <!-- body part start -->

  <section class="container-fluid">

    <div class="row mt-4">

      <jsp:include page="../commons/loginBox.jsp"></jsp:include>

      <div class="col">
        <!-- page Title -->
        <div class="row mt-1 conTitleArea">
          <h3 class="conTItle"><i class="bi bi-list"></i> 공지사항 상세보기</h3>
        </div>

        <!-- 페이지별 내용 시작-->


        <div class="formTable">
          <div class="row formTitleArea"></div>
          <table id="tblBasic1">
            <tbody>
              <tr>
                <th scope="row" style="width: 8%" class="">제 목</th>
                <td colspan="5">${AnncmDetails.announcementVo.anncm_title }</td>
              </tr>
  
              <tr>
                <th scope="row" style="width: 8%">등록일자</th>
                <td class="" id="">${AnncmDetails.announcementVo.anncm_writedate }</td>
                <th scope="row">게시기간</th>
                <td class="" id=""></td>
                <th scope="row">조 회</th>
                <td style="text-align: center;" id="">${AnncmDetails.announcementVo.anncm_readcount }</td>
              </tr>
  
  
              <tr>
                <th scope="row" style="width: 8%">첨 부</th>
                <td colspan="5">
  
                  <ul class="" id="fileList">
  
                    <c:forEach items="${AnncmDetails.anncmFilesVo }" var="AnncmFilesVo">
                      <a href="/anncmUploadFolder/${AnncmFilesVo.anncm_files_url }">
                        ${AnncmFilesVo.anncm_original_filename }</a><br>
                    </c:forEach>
  
                  </ul>
                </td>
              </tr>
  
              <tr>
                <td colspan="5"> <pre> ${AnncmDetails.announcementVo.anncm_content } </pre></td>
              </tr>
  
            </tbody>
          </table>
        </div>


        <div class="row mt-3">
          <div class="col-2 d-grid">
            <a href="./cusAnncmList" class="btnBasic">목 록</a>
          </div>
          <div class="col-10"></div>
        </div>


        <!-- 페이지별 내용 끝 -->
      </div>

      <jsp:include page="../commons/screenLeft.jsp"></jsp:include>

    </div>
  </section>

  <jsp:include page="../commons/footer.jsp"></jsp:include>

</body>

</html>