package com.sise.pojo;

import javax.persistence.*;

@Entity
@Table(name="food")
public class Food {
    // 主键
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long fid;

    private String title;

    private String description;

    private String img;

    private String imgdetail;

    private String time;

//    private Long uid;

    @OneToOne()
    @JoinColumn(name = "uid", referencedColumnName = "uid")
    private User user;

    private Long cid;

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImgdetail() {
        return imgdetail;
    }

    public void setImgdetail(String imgdetail) {
        this.imgdetail = imgdetail;
    }

}
