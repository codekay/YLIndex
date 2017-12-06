<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div class="portfolio" id="portfolio">
    <div class="container">
        <div class="agileits-title">
            <h3>产品展示</h3>
        </div>
        <div class="sap_tabs">
            <div id="horizontalTab">
                <ul class="resp-tabs-list">
                    <li class="resp-tab-item"><span>All</span></li>
                    <li class="resp-tab-item"><span>Corporate 1</span></li>
                    <li class="resp-tab-item"><span>Corporate 2</span></li>
                    <li class="resp-tab-item"><span>Corporate 3</span></li>
                </ul>
                <div class="clearfix"> </div>
                <div class="resp-tabs-container">
<%--
    主页9张图片显示
--%>
                    <div class="tab-1 resp-tab-content" id = "customer-show-case">

                        <div class="clearfix"> </div>
                    </div>
<%--
    第一部分三张图片显示
--%>
                    <div class="tab-1 resp-tab-content" id = "customer-show-case-section1">
                        <%--<div class="col-md-4 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g1.jpg' data-big-src='images/g1.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-4 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g10.jpg' data-big-src='images/g10.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-4 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g11.jpg' data-big-src='images/g11.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>--%>
                        <div class="clearfix"> </div>
                    </div>
<%--
    第二部分4张图片显示
--%>
                    <div class="tab-1 resp-tab-content" id = "customer-show-case-section2">
                        <%--<div class="col-md-3 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g5.jpg' data-big-src='images/g5.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-3 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g7.jpg' data-big-src='images/g7.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-3 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g8.jpg' data-big-src='images/g8.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-3 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g6.jpg' data-big-src='images/g6.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>--%>
                        <div class="clearfix"> </div>
                    </div>
<%--
    第三部分3张图片显示
--%>
                    <div class="tab-1 resp-tab-content" id = "customer-show-case-section3">
                        <%--<div class="col-md-4 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g2.jpg' data-big-src='images/g2.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-4 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g4.jpg' data-big-src='images/g4.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="col-md-4 portfolio-grids">
                            <div class="gallery-grid">
                                <img src='images/g7.jpg' data-big-src='images/g7.jpg' class="img-responsive" alt=" " />
                                <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>--%>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    successCase = function(data) {
        console.log("调用成功");
        if(data.code == 1) {
            var data = data.data;
            for (var i = 0; i < data.length; i++) {
                $("#customer-show-case")
                    .prepend("<div class=\"col-md-4 portfolio-grids\">\n" +
                        "<div class=\"gallery-grid\">\n" +
                        "    <img src='" + data[i].img + "' data-big-src='" + data[i].img + "' class=\"img-responsive\" alt=\" \"/>\n" +
                        "    <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n" +
                        "</div>\n" +
                        "</div>")
                <!---->

                //将案例添加到对应id的div中，达到分组效果
                var appendId = "#customer-show-case-section" + data[i].typeId;
                $(appendId)
                    .prepend("<div class=\"col-md-4 portfolio-grids\">\n" +
                    "<div class=\"gallery-grid\">\n" +
                    "    <img src='" + data[i].img + "' data-big-src='" + data[i].img + "' class=\"img-responsive\" alt=\" \"/>\n" +
                    "    <p  style='opacity:0;display:none'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n" +
                    "</div>\n" +
                    "</div>")
            }


        }
    }
    $(function () {
        getData("${pageContext.request.contextPath}/showCase.do",successCase)
    })
</script>