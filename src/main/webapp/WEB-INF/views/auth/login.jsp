<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="sub_wrapper">
        <!-- container -->
        <div id="container">
            <div class="subWrap">
                <div id="sub_contents">
                    <h2 class="sub_ctit">로그인</h2>
                    <div id="sub_con">
                        <h4>
                            <span class="join_tit">LOGIN</span>
                            <span class="join_stit"> | 링플에 오신것을 환영합니다. 아이디와 비밀번호는 대소문자를 구분합니다.</span>
                        </h4>
                        <div id="login_box">
                            <div id="login_in">
                                <form action="/auth/login" method="post">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                    <input type="text" name="username" placeholder="username 입력해주세요.">
                                    <input type="password" name="password" placeholder="password를 입력해주세요.">
                                    <button type="submit">로그인</button>
                                </form>
                            </div>
                        </div>

                        <div id="login_b">
                            <ul>
                                <li>
                                    링플의 원활한 서비스 제공을<br /> 위해 회원가입을 해주세요.
                                </li>
                                <li>
                                    <a href="#">회원가입</a>
                                </li>
                            </ul>

                            <ul>
                                <li>
                                    회원님의 아이디를 분실하셨나요? <br />아래의 버튼을 클릭해주세요.
                                </li>
                                <li>
                                    <a href="#">아이디찾기</a>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    회원님의 비밀번호를 분실하셨나요? <br />아래의 버튼을 클릭해주세요.
                                </li>
                                <li>
                                    <a href="#">비밀번호찾기</a>
                                </li>
                            </ul>
                        </div>
                    </div><!-- //sub_con -->
                </div><!-- //sub_contents -->
            </div><!-- //subWrap-->
        </div><!-- //container -->
    </div><!-- //sub_wrapper -->
</body>
</html>
