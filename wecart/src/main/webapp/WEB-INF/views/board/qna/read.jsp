<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
    <html lang="ko">
        
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            
            <title>WeCart</title>
            
            <script src="https://kit.fontawesome.com/a623128410.js" crossorigin="anonymous"></script>
            <link href="https://fonts.googleapis.com/css2?family=Jua&family=Source+Sans+Pro:ital,wght@1,700&display=swap"
            rel="stylesheet">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" defer></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.serializeJSON/3.2.1/jquery.serializejson.min.js" defer></script>

            <link rel="stylesheet" href="/resources/css/header_footer/main_header.css">
            <link rel="stylesheet" href="/resources/css/header_footer/home_header.css">
            <link rel="stylesheet" href="/resources/css/header_footer/footer.css">
            <link rel="stylesheet" href="/resources/css/board/qna/style.css">
            <script src="/resources/js/board/qna/script.js" defer ></script>
            
</head>
<body>
    
            <!-- <div class="wrapper_contatiner">
            <div class="wrapper">
                
                <header>
                    <div class="container">
                        <div class="site_name">
                            <div class="WeCart">
                                <span>우리동네<br>장바구니</span>
                            </div> 
                        </div> 
                        
                        <ul class="headerbar_menu">
                    <li>가격비교</li>
                    <li>커뮤니티</li>
                    <li>Q&A</li>
                </ul>
                
                <ul class="header_login">
                    <li>개포동 <i class="fa-solid fa-location-dot"></i></li>
                    <li><i class="fa-regular fa-comment-dots"></i></li>
                    <li><i class="fa-regular fa-bell"></i></li>
                    <li><i class="fa-solid fa-piggy-bank"></i></li>
                    <li>Juuu</li>
                </ul> 
                
            </div>
            
        </header> -->
        <% Object auth = session.getAttribute("__AUTH__"); %>
		
		<% if(auth != null) { %>
			<jsp:include page="../../header_footer/main_header.jsp" flush="true" />
		<% } else { %>
			<jsp:include page="../../header_footer/home_header.jsp" flush="true" />
		<% } %>
	
	
        <main>
            <!--*********************************************메인 내용은 여기부터*********************************************-->
            
            <main id="board_main">
                <div id="qna_board_read">
                    <div class="qna_board_name">문의게시판</div>
                    <div class="qna_board_writer">${readVO.member_id}</div>
                    <fmt:formatDate value="${readVO.write_dt}" pattern="yyyy-MM-dd" var="formatDate" />
                    <div class="qna_board_writedt">${formatDate}</div>
                    <div class="qnd_board_views"><span class="fas fa-eye"></span>${readVO.views}</div>
                    <div class="qna_board_title">
                        <c:if test="${readVO.secret_yn == 1}">
                            <span class="fas fa-lock"></span>
                        </c:if>
                        ${readVO.title}
                    </div>
                    <div class="qna_board_contents">${readVO.content}</div>
                    <div class="qna_board_attach"><button id="download_button"><span class="fas fa-paperclip"></span>첨부파일</button>
                        <div id="qna_board_attach_download">
                            <ul>
                                <li><span class="fas fa-paperclip"></span> 파일 다운로드1</li>
                                <li><span class="fas fa-paperclip"></span> 파일 다운로드2</li>
                                <li><span class="fas fa-paperclip"></span> 파일 다운로드3</li>
                            </ul>
                        </div>
                    </div>
                </div>
    
                <hr>
                <div class="board_commant">
    
                    <div id="board_commant_head">
                        <div>${commnetCnt}개의 댓글</div>
                        <div>
                            <div><span class="fas fa-arrow-left-long"/>&nbsp;이전&nbsp;</div>
                            <div>다음&nbsp;<span class="fas fa-arrow-right-long"/></div>
                        </div>
                    </div>
    
                    <form id="comment-form" class="board_commant_write" action="/board/qna/read/commentwrite" method="post">
                        <input type="hidden" name="post_no" value="${readVO.post_no}">
                        <input type="hidden" name="member_id" value="334"> 
                        <!-- 멤버아이디는 세션에 올라간 로그인된 사용자아이디 사용, 밑에 댓글작성자(로그인된유저)도 같은데이터사용 -->
                        <input type="hidden" name="secret_yn" value="0">
                        <input type="hidden" name="like_cnt" value="0">
                        <input type="hidden" name="comment_root">
                        <input type="hidden" name="comment_step" value="0">
                        <input type="hidden" name="comment_indent" value="0">
                        <div>댓글작성자(로그인된유저)</div>
                        <input type="text" name="content" placeholder="댓글을 남겨보세요.">
                        <div class="board_commant_write_footer" >
                            <div class="fas fa-unlock"></div>
                            <button class="board_commant_submit">등록</button>
                        </div>
                    </form>
                    <c:forEach items="${commentVO}" var="commentList">
                        <div class="board_commant_read" style="padding-left: ${commentList.comment_indent * 20}px;">
                            <div class="board_commant_read_header">
                                <div class="board_commant_read_header_namegroup">
                                    <div class="fas fa-piggy-bank"></div>
                                    <div>
                                        <div>${commentList.member_id}</div>
                                        <fmt:formatDate value="${commentList.write_dt}" pattern="yyyy-MM-dd" var="commentFormatDate" />
                                        <div>${commentFormatDate}</div>
                                    </div>
                                </div>
                                <div class="fas fa-bars">
                                    <div class="board_commant_ud">
                                        <ul>
                                            <li>수정</li>
                                            <li>삭제</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="board_commant_read_main">
                                ${commentList.content}
                            </div>
                            <div class="board_commant_read_footer">
                                <button class="board_commant_commant">답글쓰기</button>
                                <div><span class="fas fa-heart"/>${commentList.like_cnt}</div>
                            </div>
                        </div>
                        <hr>
                        
                        <div class="board_commant_commant_write hidden">
                            <form class="board_commant_write" action="/board/qna/read/commentwrite" method="post">
                                <input type="hidden" name="post_no" value="${readVO.post_no}">
                                <input type="hidden" name="member_id" value="334"> 
                                <input type="hidden" name="secret_yn" value="0">
                                <input type="hidden" name="like_cnt" value="0">
                                <input type="hidden" name="comment_root" value="${commentList.comment_root}">
                                <input type="hidden" name="comment_step" value="${commentList.comment_step + 1}">
                                <input type="hidden" name="comment_indent" value="${commentList.comment_indent + 1}">
                                <div>댓글작성자(로그인된유저)</div>
                                <input type="text" name="content" placeholder="댓글을 남겨보세요.">
                                <div class="board_commant_write_footer" >
                                    <div class="fas fa-unlock"></div>
                                    <button class="board_commant_submit" onclick="commant_submit">등록</button>
                                </div>
                            </form>
                        </div>
                    </c:forEach>
                </div>
            </main>


            <!--*********************************************메인 내용은 여기까지*********************************************-->
        </main>
        


    <!-- </div>
           <footer>
               <div class="footerText">
                    <p>
                       WeCart
                       <span>
                           <a href="">사업자 정보</a>
                           <a href="">이용약관</a>
                           <a href="">개인정보처리방침</a>
                       </span>
                    </p>
                   
                    <p>
                       Woojungjo
                       <a href="https://github.com/zuxico123">감성현</a>
                       <a href="https://github.com/KimYongSae">김용세</a>
                       <a href="https://github.com/JeongHwan95">김정환</a>
                       <a href="https://github.com/comdesk">김지연</a>
                       <a href="https://github.com/Juyeonjoo">조연주</a>
                       <span class="copyright">&copy; 2023 WeCart, Inc. All Rights Reserved</span>
                    </p>
               </div>
           </footer>
       </div> -->
       <jsp:include page="../../header_footer/footer.jsp" flush="true" />
        
</body>


</html>