<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
<head>
    <title>test</title>
</head>
<body>



        <!-- 메인 비주얼 -->
        <div class="m_visual_wrap">
            <div class="m_visual01">
                <div class="main_slide_wrap">
                    <div class="main_slider">
                        <div class="bx-wrapper" style="max-width: 100%;">
                            <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 400px;">
                                <ul id="slider1" style="width: 715%; position: relative; transition-duration: 0.5s; transform: translate3d(-2172px, 0px, 0px);">
                                    <li onclick="javascript:goBanner('2', '2', '', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;" class="bx-clone">
                                        <img src="http://linkplantec.com/upload/1/banner/d1fae95be7064414bff39cb941388b35.jpg">
                                    </li>
                                    <li onclick="javascript:goBanner('2', '2', '#', 'koins');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;">
                                        <img src="http://linkplantec.com/upload/1/banner/451f53d2460c460ab72f98b95630bfcb.jpg">
                                    </li>
                                    <!-- <li><img src="http://linkpt.cdn3.cafe24.com/images/main_img_01.jpg"></li> -->

                                    <li onclick="javascript:goBanner('2', '2', '', '국일인토트');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;">
                                        <img src="http://linkplantec.com/upload/1/banner/60b47d139d4c4e3b91a0edc89c995d88.jpg">
                                    </li>
                                    <!-- <li><img src="http://linkpt.cdn3.cafe24.com/images/main_img_01.jpg"></li> -->

                                    <li onclick="javascript:goBanner('2', '2', '#', '유니콘벨브소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;">
                                        <img src="http://linkplantec.com/upload/1/banner/b35628ba07d149a6a7e7cde934e54426.jpg">
                                    </li>
                                    <!-- <li><img src="http://linkpt.cdn3.cafe24.com/images/main_img_01.jpg"></li> -->

                                    <li onclick="javascript:goBanner('2', '2', '', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;">
                                        <img src="http://linkplantec.com/upload/1/banner/94a53fee4ead487eb47242d69ed1a7cb.jpg">
                                    </li>
                                    <!-- <li><img src="http://linkpt.cdn3.cafe24.com/images/main_img_01.jpg"></li> -->

                                    <li onclick="javascript:goBanner('2', '2', '', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;">
                                        <img src="http://linkplantec.com/upload/1/banner/d1fae95be7064414bff39cb941388b35.jpg">
                                    </li>
                                    <!-- <li><img src="http://linkpt.cdn3.cafe24.com/images/main_img_01.jpg"></li> -->
                                    <li onclick="javascript:goBanner('2', '2', '#', 'koins');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1086px;" class="bx-clone">
                                        <img src="http://linkplantec.com/upload/1/banner/451f53d2460c460ab72f98b95630bfcb.jpg">
                                    </li>
                                </ul>
                            </div>

                            <div class="bx-controls bx-has-pager">
                                <div class="bx-pager bx-default-pager">
                                    <div class="bx-pager-item">
                                        <a href="" data-slide-index="0" class="bx-pager-link">1</a>
                                    </div>
                                    <div class="bx-pager-item">
                                        <a href="" data-slide-index="1" class="bx-pager-link active">2</a>
                                    </div>
                                    <div class="bx-pager-item">
                                        <a href="" data-slide-index="2" class="bx-pager-link">3</a>
                                    </div>
                                    <div class="bx-pager-item">
                                        <a href="" data-slide-index="3" class="bx-pager-link">4</a>
                                    </div>
                                    <div class="bx-pager-item">
                                        <a href="" data-slide-index="4" class="bx-pager-link">5</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //메인 비주얼 -->

        <!-- 솔루션 -->
        <div id="m_contents_01_wrap">
            <p class="m_product_tit">
                <a href="#">솔루션&nbsp;&nbsp;<span>|&nbsp;&nbsp;Solution</span>
                    <img src="http://linkpt.cdn3.cafe24.com/images/mv_btn.jpg" alt="솔루션 더보기">
                </a>
            </p>
            <div class="m_contents_01">
                <div id="m_product_tabs_01" class="product_tabs ui-tabs ui-widget ui-widget-content ui-corner-all">

                    <!-- 상품 탭 -->
                    <ul class="tab_title ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
                        <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabs-1" aria-labelledby="ui-id-1" aria-selected="true" aria-expanded="true">
                            <a href="#tabs-1" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-1">공정/설비종합</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-2" aria-labelledby="ui-id-2" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-2" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-2">안전/환경</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-3" aria-labelledby="ui-id-3" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-3" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-3">회전기계</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-4" aria-labelledby="ui-id-4" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-4" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-4">장치/배관</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-5" aria-labelledby="ui-id-5" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-5" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-5">전기</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-6" aria-labelledby="ui-id-6" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-6" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-6">계장</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-7" aria-labelledby="ui-id-7" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-7" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-7">토목/건축</a>
                        </li>
                    </ul>

                    <!-- 상품 탭 -->
                    <div class="m_product_wrap">
                        <div id="tabs-1" aria-labelledby="ui-id-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-hidden="false">
                            <div class="m_product_con">
                                <ul class="m_product_list lst-photo-board">
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <img src="http://linkplantec.com/upload/1/product/f8e3eb36535f41e9a091871918cbc883.jpg" alt="상품 썸네일">
                                                <div class="tit">
                                                    <p class="split">진행워터웨이</p>
                                                    <p style="margin-top: 0px;">Decontamination기술</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/ec529872cdf14ca6b0107644a3319408.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/ec529872cdf14ca6b0107644a3319408.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">엘켐텍</p>
                                                    <p style="margin-top: 0px;">수전해기술</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>

                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">

                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/ea2c03d5f5d7493fb9dc3c0584887b6a.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/ea2c03d5f5d7493fb9dc3c0584887b6a.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">EM코리아</p>
                                                    <p style="margin-top: 0px;">수전해기술</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/f8e3eb36535f41e9a091871918cbc883.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/f8e3eb36535f41e9a091871918cbc883.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">진행워터웨이</p>
                                                    <p style="margin-top: 0px;">Scale Buster</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/bf911b34fddf419eb2c81f1450aa9e97.png) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/bf911b34fddf419eb2c81f1450aa9e97.png" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">Precog</p>
                                                    <p style="margin-top: 0px;">설비돌발고장예지기술</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">

                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/e8fa785f554d457bad1c5524891c20ce.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/e8fa785f554d457bad1c5524891c20ce.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">Areva</p>
                                                    <p style="margin-top: 0px;">수전해기술</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //솔루션 -->

        <!-- 배너-->
        <div id="m_banner_wrap" class="m_banner_slider">
            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 156px;"><ul id="slider2" style="width: 315%; position: relative; transition-duration: 0s; transform: translate3d(-1240px, 0px, 0px);"><li onclick="javascript:goBanner('3', '2', '', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1240px;" class="bx-clone">
                <img src="http://linkplantec.com/upload/1/banner/8f08d09ebfc741368d8c914d837b9da8.png" style="width: 1240px; height: 153px;">
            </li>
            <li onclick="javascript:goBanner('3', '2', '', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1240px;">
                <img src="http://linkplantec.com/upload/1/banner/8f08d09ebfc741368d8c914d837b9da8.png" style="width: 1240px; height: 153px;">
            </li>
            <li onclick="javascript:goBanner('3', '2', '', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1240px;" class="bx-clone">
                <img src="http://linkplantec.com/upload/1/banner/8f08d09ebfc741368d8c914d837b9da8.png" style="width: 1240px; height: 153px;">
            </li></ul></div></div>
        </div>
        <!-- //배너-->

        <!--기자재 -->
        <div id="m_contents_02_wrap">
            <p class="m_product_tit">
                <a href="#">기자재&nbsp;&nbsp;<span>|&nbsp;&nbsp;Materials</span>
                    <img src="http://linkpt.cdn3.cafe24.com/images/mv_btn.jpg" alt="기자재 더보기">
                </a>
            </p>
            <div class="m_contents_02">
                <div id="m_product_tabs_02" class="product_tabs ui-tabs ui-widget ui-widget-content ui-corner-all">

                    <!-- 상품 탭 -->
                    <ul class="tab_title2 ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">


                        <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabs-1" aria-labelledby="ui-id-8" aria-selected="true" aria-expanded="true">
                            <a href="#tabs-1" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-8">공정/설비종합</a>
                        </li>

                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-2" aria-labelledby="ui-id-9" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-2" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-9">안전/환경</a>
                        </li>

                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-3" aria-labelledby="ui-id-10" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-3" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-10">회전기계</a>
                        </li>

                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-4" aria-labelledby="ui-id-11" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-4" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-11">장치/배관</a>
                        </li>

                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-5" aria-labelledby="ui-id-12" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-5" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-12">전기</a>
                        </li>

                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-6" aria-labelledby="ui-id-13" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-6" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-13">계장</a>
                        </li>

                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-7" aria-labelledby="ui-id-14" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-7" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-14">토목/건축</a>
                        </li>
                    </ul>

                    <!-- 상품 탭 -->
                    <div class="m_product_wrap">
                        <div id="tabs-1" aria-labelledby="ui-id-8" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-hidden="false">
                            <div class="m_product_con">
                                <ul class="m_product_list lst-photo-board">
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/c7191fc9c2b54e4f9b9ef49c2c78836e.jpg') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/c7191fc9c2b54e4f9b9ef49c2c78836e.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">아주엔지니어링</p>
                                                    <p style="margin-top: 0px;">케미칼주입설비</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/e3ddd65ba72d4bd1b38e892b6dbf0408.jpg') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/e3ddd65ba72d4bd1b38e892b6dbf0408.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">휴비스워터</p>
                                                    <p style="margin-top: 0px;">수처리설비</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/4bab422017214e59aa8fdb142375d9ec.jpg') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/4bab422017214e59aa8fdb142375d9ec.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">하몬코리아</p>
                                                    <p style="margin-top: 0px;">Cooling Tower</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/8169a330aef9492eaf524f8a034680b4.png') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/8169a330aef9492eaf524f8a034680b4.png" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">광신</p>
                                                    <p style="margin-top: 0px;">Air Dryer</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/5d5ca4a28d2e4f2bbca14e79601c7796.jpg') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/5d5ca4a28d2e4f2bbca14e79601c7796.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">Hana Plant</p>
                                                    <p style="margin-top: 0px;">Air Dryer</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/3a0a08bf7b2746738daa8e21d8eb6437.gif') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/3a0a08bf7b2746738daa8e21d8eb6437.gif" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">세양</p>
                                                    <p style="margin-top: 0px;">Air Dryer</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 기자재 -->

        <!-- 배너-->
        <div id="m_banner_wrap" class="m_banner_slider">
            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;">
                <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 157px;">
                    <ul id="slider3" style="width: 315%; position: relative; transition-duration: 0s; transform: translate3d(-1240px, 0px, 0px);">
                        <li onclick="javascript:goBanner('26', '2', '/', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1240px;" class="bx-clone">
                            <img src="http://linkplantec.com/upload/1/banner/8de1ae4358734ab18ee764dc3ce76fd5.png" style="width: 1240px; height: 153px;">
                        </li>
                        <li onclick="javascript:goBanner('26', '2', '/', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1240px;">
                            <img src="http://linkplantec.com/upload/1/banner/8de1ae4358734ab18ee764dc3ce76fd5.png" style="width: 1240px; height: 153px;">
                        </li>
                        <li onclick="javascript:goBanner('26', '2', '/', '링크플랜텍소개');" style="cursor: pointer; float: left; list-style: none; position: relative; width: 1240px;" class="bx-clone">
                            <img src="http://linkplantec.com/upload/1/banner/8de1ae4358734ab18ee764dc3ce76fd5.png" style="width: 1240px; height: 153px;">
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- //배너-->
        <!-- EPC/유지보수 -->
        <div id="m_contents_04_wrap">
            <p class="m_product_tit">
                <a href="#">EPC·유지보수&nbsp;&nbsp;<span>|&nbsp;&nbsp;EPC/Maintenance</span>
                    <img src="http://linkpt.cdn3.cafe24.com/images/mv_btn.jpg" alt="시공장비 더보기">
                </a>
            </p>
            <div class="m_contents_04">
                <div id="m_product_tabs_04" class="product_tabs ui-tabs ui-widget ui-widget-content ui-corner-all">
                    <!-- 상품 탭 -->
                    <ul class="tab_title3 ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
                        <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabs-1" aria-labelledby="ui-id-15" aria-selected="true" aria-expanded="true">
                            <a href="#tabs-1" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-15">엔지니어링</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-2" aria-labelledby="ui-id-16" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-2" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-16">기계/장치</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-3" aria-labelledby="ui-id-17" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-3" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-17">부대공사</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-4" aria-labelledby="ui-id-18" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-4" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-18">설비검사</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-5" aria-labelledby="ui-id-19" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-5" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-19">전기/계장</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-6" aria-labelledby="ui-id-20" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-6" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-20">토목/건축</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-7" aria-labelledby="ui-id-21" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-7" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-21">안전/환경</a>
                        </li>
                        <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-8" aria-labelledby="ui-id-22" aria-selected="false" aria-expanded="false">
                            <a href="#tabs-8" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-22">특수작업</a>
                        </li>
                    </ul>

                    <!-- 상품 탭 -->
                    <div class="m_product_wrap">
                        <div id="tabs-1" aria-labelledby="ui-id-15" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-hidden="false">
                            <div class="m_product_con">
                                <ul class="m_product_list lst-photo-board">
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url('http://linkplantec.com/upload/1/product/a26bb7d3bf624c07bede6851ab17eb0d.jpg') !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/a26bb7d3bf624c07bede6851ab17eb0d.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">태성플랜트검정</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/7cd69e6c2a994a1dbdabd4942cba24fc.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/7cd69e6c2a994a1dbdabd4942cba24fc.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">삼두</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/5a29f77181824c7da6549e121de3a1ff.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/5a29f77181824c7da6549e121de3a1ff.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">제이오</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/6942f8fc0e7d43f489e7f5fb56faafb7.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/6942f8fc0e7d43f489e7f5fb56faafb7.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">제일엔지니어링</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="lst-photo-wrap">
                                            <a href="#">
                                                <div class="img_wrap">
                                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/product/7e6d0dfa9c7448848e6a544a60a20f0b.jpg) !important; height:124px; display: block; overflow: hidden;
								background-repeat: no-repeat; background-position: center center; background-size: cover;">
                                                        <img src="http://linkplantec.com/upload/1/product/7e6d0dfa9c7448848e6a544a60a20f0b.jpg" alt="상품 썸네일" onerror="this.src='#'" style="display: none;">
                                                    </div>
                                                </div>
                                                <div class="tit">
                                                    <p class="split">필즈엔지니어링</p>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //EPC/유지보수-->


        <!-- 링크 배너 -->
        <div id="m_contents_05_wrap">
            <a href="javascript:goBanner('4', '2', '', '링크플랜텍소개');" style="cursor: pointer;">
                <img src="http://linkplantec.com/upload/1/banner/a4ae65d40b8a49a49d68b38fd8803cc0.jpg" alt="링크플랜텍소개">
            </a>
            <a href="javascript:goBanner('5', '2', '#', '드론');" style="cursor: pointer;">
                <img src="http://linkplantec.com/upload/1/banner/525432e19af94f658016dc82dcf288e8.jpg" alt="드론">
            </a>
        </div>
        <!-- //링크 배너 -->

        <!-- 파워링크 -->
        <div id="m_contents_06_wrap">
            <p class="m_product_tit t_center">링플 파트너스</p>
            <div class="bx-wrapper" style="max-width: 910px; margin: 0px auto;">
                <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 126px;">
                    <ul class="m_contents_06 bxsliderss " id="b_partners" style="width: 1515%; position: relative; transition-duration: 0s; transform: translate3d(-1258px, 0px, 0px);">
                        <li style="float: left; list-style: none; position: relative; width: 130px;" class="bx-clone">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/362cca841b704b0cac7c734b0f2cf7bb.png) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/362cca841b704b0cac7c734b0f2cf7bb.png" alt="존슨콘트롤즈" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">존슨콘트롤즈 </p>
                                <!-- <p class="m_con_06_stit"></p>-->
                            </a>
                        </li>
                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/d5b24b9ac377486c9b25a54f8781fc35.jpg) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/d5b24b9ac377486c9b25a54f8781fc35.jpg" alt="ABB" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">ABB </p>
                                <!-- <p class="m_con_06_stit"></p>-->
                            </a>
                        </li>
                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/778ba514a6fa4edfab7dbf5853356b5a.gif) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/778ba514a6fa4edfab7dbf5853356b5a.gif" alt="EM코리아" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">EM코리아 </p>
                                <!-- <p class="m_con_06_stit"></p>-->
                            </a>
                        </li>

                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/993c4e4680c14fec87232bcaf002b74d.gif) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/993c4e4680c14fec87232bcaf002b74d.gif" alt="koins" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">koins </p>
                                <!-- <p class="m_con_06_stit">Koins 는 세계일류의 배관 검사 정비 갱생 전문기업을 지향합니다.</p>-->
                            </a>
                        </li>

                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/09b6a1961d804b90811cb67c9dd2d23f.gif) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/09b6a1961d804b90811cb67c9dd2d23f.gif" alt="국일인도트" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">국일인도트 </p>
                                <!-- <p class="m_con_06_stit"></p>-->
                            </a>
                        </li>

                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/8d14c1f12b254e959536a936be15915d.png) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/8d14c1f12b254e959536a936be15915d.png" alt="윈텍글로비스" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">윈텍글로비스 </p>
                                <!-- <p class="m_con_06_stit"></p>-->
                            </a>
                        </li>

                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/a60cf6fb86db451a9705570624840749.jpg) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/a60cf6fb86db451a9705570624840749.jpg" alt="유니콘밸브" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">유니콘밸브 </p>
                            </a>
                        </li>

                        <li style="float: left; list-style: none; position: relative; width: 130px;">
                            <a href="#">
                                <div class="img_wrap">
                                    <div class="img" style="background-image: url(http://linkplantec.com/upload/1/corporation/362cca841b704b0cac7c734b0f2cf7bb.png) !important; height: 100px; display: block; overflow: hidden; background-repeat: no-repeat; background-position: center center; background-size: contain;">
                                        <img src="http://linkplantec.com/upload/1/corporation/362cca841b704b0cac7c734b0f2cf7bb.png" alt="존슨콘트롤즈" style="display: none;">
                                    </div>
                                </div>
                                <p class="m_con_06_tit">존슨콘트롤즈 </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- //container -->


</div>
<!-- //wrapper -->
<script>
    $(document).ready(function() {
        $(".bxsliderss img").error(function() {
            $(".bxsliderss img").attr("src", "#");
        });
    });
</script>



</body>
</html>
