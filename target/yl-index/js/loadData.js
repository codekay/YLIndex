document.write("<script type=\"text/javascript\" src=\"" + ${pageContext.request.contextPath} + "/js/utils.js\"></script>")
successCase = function(data) {
    console.log("调用成功");
    var data = data.data;
    for(var i = 0;i<data.length;i++){

    }
}
$(function () {
    console.log("successCasePage页面加载完成");
    getData("${pageContext.request.contextPath}/showCase.do",successCase)
})

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