package com.sise.pojo;

import javax.persistence.*;

@Entity
@Table(name="illustration")
public class Illustration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long iid;
    private String name;
    private String makingdesc;
    private String img;


    public Long getIid() {
        return iid;
    }

    public void setIid(Long iid) {
        this.iid = iid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMakingdesc() {
        return makingdesc;
    }

    public void setMakingdesc(String makingdesc) {
        this.makingdesc = makingdesc;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

}
