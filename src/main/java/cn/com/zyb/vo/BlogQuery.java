package cn.com.zyb.vo;

/**
* @auther zhangyibing  zhangyibing@bmsoft.com.cn
* @Date 2020/2/28
* @desription 
**/
public class BlogQuery {

    private String title;
    private Long typeId;
    private boolean recommend;

    public BlogQuery() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public boolean isRecommend() {
        return recommend;
    }

    public void setRecommend(boolean recommend) {
        this.recommend = recommend;
    }
}
