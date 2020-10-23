package com.ellison.project.bean;

/**
 * @author ellison
 * @date 2020年09月27日
 * @desc 用一句话描述这个类的作用
 */
public class PayUrlBean {
    private int ID;
    private int code;
    private String msg;
    private String type;
    private String url;

    public int getCode() {
        return this.code;
    }

    public int getID() {
        return this.ID;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setCode(int paramInt) {
        this.code = paramInt;
    }

    public void setID(int paramInt) {
        this.ID = paramInt;
    }

    public void setMsg(String paramString) {
        this.msg = paramString;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public void setUrl(String paramString) {
        this.url = paramString;
    }
}
