<!DOCTYPE html>
<html lang="en">
<head>
    <title>yl-index</title>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Craft web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--// Meta tag Keywords -->

    <!-- css 文件引用 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css"> <!-- Bootstrap核心css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel='stylesheet' type='./text/css' href='${pageContext.request.contextPath}/css/jquery.easy-gallery.css'/>
    <!-- For-gallery-CSS -->

    <!-- js -->
    <script type="text/javascript" src="./js/jquery-2.1.4.min.js"></script>
    <!--记载数据的工具类-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/utils.js"></script>

    <!-- 在线字体 -->
    <link href="//fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Hind+Vadodara:300,400,500,600,700&amp;subset=gujarati,latin-ext"
          rel="stylesheet">
</head>
<body>
<div class="Main-agile">
    <!-- 标题头 -->
    <jsp:include page="common/head.jsp"/>
    <!--导航栏-->
    <jsp:include page="common/navigation.jsp"/>
    <!-- //header -->
    <!-- 轮播图 -->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>
                    <div class="slider-img">
                        <img src="images/bg2.jpg" class="img-responsive" alt="education">
                    </div>
                    <div class="slider-info">
                        <h3>业务指南</h3>
                        <h5><a href="#" class="view rew3" data-toggle="modal" data-target="#myModal5">更多</a></h5>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/bg3.jpg" class="img-responsive" alt="education">
                    </div>
                    <div class="slider-info">
                        <h3>业务指南</h3>
                        <h5><a href="#" class="view rew3" data-toggle="modal" data-target="#myModal5">Read More</a></h5>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/bg1.jpg" class="img-responsive" alt="education">
                    </div>
                    <div class="slider-info">
                        <h3>Global Business Guide</h3>
                        <h5><a href="#" class="view rew3" data-toggle="modal" data-target="#myModal5">更多</a></h5>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/bg4.jpg" class="img-responsive" alt="education">
                    </div>
                    <div class="slider-info">
                        <h3>Global Business Guide</h3>
                        <h5><a href="#" class="view rew3" data-toggle="modal" data-target="#myModal5">Read More</a></h5>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- 模态框 -->
    <div class="modal fade" id="myModal5" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <!-- 模态框内容-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4>博客帖子</h4>
                    <h5>Lorem ipsum dolor sit amet</h5>
                    <img src="images/b3.jpg" alt="blog-image"/>
                    <span>Lorem ipsum dolor sit amet, Sed ut perspiciatis unde omnis iste natus error sit voluptatem , eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.accusantium doloremque laudantium, totam rem aperiamconsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>
                </div>
            </div>

        </div>
    </div>
    <!-- //Modal5 -->
    <!-- //Slider -->
    <!-- //header -->
    <!-- banner-bottom -->
    <div class="agileits_services_grids_bottom">
        <div class="container">
            <div class="col-md-3 agileits_service_grid_btm_left">
                <div class="agileits_service_grid_btm_left1">
                    <img src="images/ban2.jpg" alt=" " class="img-responsive"/>
                    <div class="agileits_service_grid_btm_left2">
                        <h5>Lorem Ipsum</h5>
                        <p>Morbi ac sapien id lectus fermentum aliquet. Nunc consectetur risus et
                            felis bibendum, at egestas dui pharetra.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 agileits_service_grid_btm_left">
                <div class="agileits_service_grid_btm_left1">
                    <img src="images/ban1.jpg" alt=" " class="img-responsive"/>
                    <div class="agileits_service_grid_btm_left2">
                        <h5>Lorem Ipsum</h5>
                        <p>Morbi ac sapien id lectus fermentum aliquet. Nunc consectetur risus et
                            felis bibendum, at egestas dui pharetra.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 agileits_service_grid_btm_left">
                <div class="agileits_service_grid_btm_left1">
                    <img src="images/ban3.jpg" alt=" " class="img-responsive"/>
                    <div class="agileits_service_grid_btm_left2">
                        <h5>Lorem Ipsum</h5>
                        <p>Morbi ac sapien id lectus fermentum aliquet. Nunc consectetur risus et
                            felis bibendum, at egestas dui pharetra.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 agileits_service_grid_btm_left">
                <div class="agileits_service_grid_btm_left1">
                    <img src="images/ban4.jpg" alt=" " class="img-responsive"/>
                    <div class="agileits_service_grid_btm_left2">
                        <h5>Lorem Ipsum</h5>
                        <p>Morbi ac sapien id lectus fermentum aliquet. Nunc consectetur risus et
                            felis bibendum, at egestas dui pharetra.</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->

<!-- 关于我们 -->
<jsp:include page="module/aboutUsPage.jsp"/>

<!-- 服务 -->
<jsp:include page="module/serviceTypePage.jsp"/>

<!-- 博客 -->
<jsp:include page="module/blogsPage.jsp"/>

<!-- 我们的团队 -->
<jsp:include page="module/ourTeamPage.jsp"/>

<!-- 成功案例 -->
<jsp:include page="module/successCasePage.jsp"/>

<!-- 联系我们 -->
<jsp:include page="module/contactUsPage.jsp"/>

<!-- 页脚 -->
<jsp:include page="common/foot.jsp"/>

<!-- bootstrap基础js-->
<script type="text/javascript" src="./js/bootstrap.js"></script>

<!-- Baneer-js -->
<script src="./js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            pager: false,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });
    });
</script>
<!-- //Baneer-js -->

<!-- For-Gallery-js -->
<!-- script for 产品展示 -->
<script type='text/javascript' src='./js/jquery.easy-gallery.js'></script>
<script type='text/javascript'>
    //init Gallery
    $('.portfolio').easyGallery();
</script>
<script src="./js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
</script>
<!-- //script for portfolio -->
<!-- //For-Gallery-js -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="./js/move-top.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- smooth scrolling-bottom-to-top -->
<script type="text/javascript">
    $(document).ready(function () {
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling-bottom-to-top -->

</body>
</html>