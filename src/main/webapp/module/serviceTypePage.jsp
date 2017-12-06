<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/utils.js"></script>--%>
<div class="popular-w3" id="services">
	<div class="container">
		<h3 class="ser-w3">产品服务</h3>
		<div class="popular-grids " id = "customer-service">
			<%--<div class="col-md-4 popular-grid">
				<div class="popular-text">
					<h5>Lorem Ipsum is simply text of the printing</h5>
					<div class="detail-bottom">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore sed do eiusmod tempor incididunt ut labore</p>
					</div>
				</div>
				<img src="images/ban2.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-md-4 popular-grid">
				<div class="popular-text sec">
					<h5>Lorem Ipsum is simply text of the printing</h5>
					<div class="detail-bottom">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore sed do eiusmod tempor incididunt ut labore</p>
					</div>
				</div>
				<img src="images/ban3.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-md-4 popular-grid">
				<div class="popular-text">
					<h5>Lorem Ipsum is simply text of the printing</h5>
					<div class="detail-bottom">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore sed do eiusmod tempor incididunt ut labore</p>
					</div>
				</div>
				<img src="images/ban4.jpg" class="img-responsive" alt=""/>
			</div>--%>
			<%--<div class="clearfix"></div>--%>
		</div>
	</div>
</div>

<script>
    $(function () {
        console.log("serviceTypePage页面加载完成");
        success = function (data) {
            console.log("调用回调");
            for(var i = 0; i < data.data.length && i <3;i++){

                if(i == 1) {
                    $("#customer-service").append("<div class=\"col-md-4 popular-grid\">\n" +
                        "<div class=\"popular-text sec\">\n" +
                        "<h5>" + data.data[i].name + "</h5>\n" +
                        "<div class=\"detail-bottom\">\n" +
                        "<p>" + data.data[i].describe + "</p>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<img src=\"" + data.data[i].img + "\" class=\"img-responsive\" alt=\"\"/>\n" +
                        "</div>")
                }else{
                    $("#customer-service").append("<div class=\"col-md-4 popular-grid\">\n" +
                        "<div class=\"popular-text\">\n" +
                        "<h5>" + data.data[i].name + "</h5>\n" +
                        "<div class=\"detail-bottom\">\n" +
                        "<p>" + data.data[i].describe + "</p>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<img src=\"" + data.data[i].img + "\" class=\"img-responsive\" alt=\"\"/>\n" +
                        "</div>")
                }
            }
            $('#customer-service').append("<div class=\"clearfix\"></div>");

        }
        getData("${pageContext.request.contextPath}/showService.do",success);
    })
</script>