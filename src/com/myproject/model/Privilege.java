package com.myproject.model;

import java.io.Serializable;

public class Privilege implements Serializable {
    private Integer privilegeId;

    private String privilegeCode;

    private Integer privilegeGroupId;

    private String ord;

    private String name;

    private String description;

    private Integer status;

    private String link;

    private Integer requestMethod;

    private static final long serialVersionUID = 1L;

    public Integer getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Integer privilegeId) {
        this.privilegeId = privilegeId;
    }

    public String getPrivilegeCode() {
        return privilegeCode;
    }

    public void setPrivilegeCode(String privilegeCode) {
        this.privilegeCode = privilegeCode;
    }

    public Integer getPrivilegeGroupId() {
        return privilegeGroupId;
    }

    public void setPrivilegeGroupId(Integer privilegeGroupId) {
        this.privilegeGroupId = privilegeGroupId;
    }

    public String getOrd() {
        return ord;
    }

    public void setOrd(String ord) {
        this.ord = ord;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Integer getRequestMethod() {
        return requestMethod;
    }

    public void setRequestMethod(Integer requestMethod) {
        this.requestMethod = requestMethod;
    }
}