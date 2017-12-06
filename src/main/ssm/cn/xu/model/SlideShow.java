package cn.xu.model;

public class SlideShow {

    private int id ;
    //标题
    private String  title;
    //简介
    private String intro ;
    //详情
    private String detail ;
    //轮播图片
    private String slideImg ;
    //是否显示
    private int isShow ;


    @Override
    public String toString() {
        return "SlideShow{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", intro='" + intro + '\'' +
                ", detail='" + detail + '\'' +
                ", slideImg='" + slideImg + '\'' +
                ", isShow=" + isShow +
                '}';
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getIsShow() {
        return isShow;
    }

    public void setIsShow(int isShow) {
        this.isShow = isShow;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getSlideImg() {
        return slideImg;
    }

    public void setSlideImg(String slideImg) {
        this.slideImg = slideImg;
    }
}
