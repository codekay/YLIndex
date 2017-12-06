<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/utils.js"></script>
<div class="slider">
<div class="callbacks_container">
    <ul class="rslides" id="slider">
        <li>
            <div class="slider-img">
                <img src="images/bg2.jpg" class="img-responsive" alt="education" style="width: 100%">
            </div>
            <div class="slider-info">
                <h3>业务指南</h3>
                <h5><a href="#" class="view rew3" data-toggle="modal" data-target="#myModal5">更多</a></h5>
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

<script>

    getSlideDataSuccess = function (data) {
        var d = data.data;
        console.log(d.length);
        for(var i = 0; i < d.length;i++) {
            console.log(d[i].slideImg);
            $("#slider").append("<li>\n" +
                "            <div class=\"slider-img\">\n" +
                "                <img src=\"" + d[i].slideImg + "\" class=\"img-responsive\" alt=\"education\" style = \"width:100% \">\n" +
                "            </div>\n" +
                "            <div class=\"slider-info\">\n" +
                "                <h3>"+ d[i].title+"</h3>\n" +
                "                <h5><a href=\"#\" class=\"view rew3\" data-toggle=\"modal\" data-target=\"#myModal5\">更多</a></h5>\n" +
                "            </div>\n" +
                "        </li>");
        }
        startSlide();
    }
    $(function () {
        getData("${pageContext.request.contextPath}/showSlide.do",getSlideDataSuccess)
    })
</script>
