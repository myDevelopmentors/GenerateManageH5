package com.myproject.model;

import java.io.Serializable;

/**
 * 
 * @author lihongtu
 *
 */
public class Permission implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
    private Short privilegeId;

    private String privilegeCode;

    private Short privilegeGroupId;

    private String ord;

    private String name;

    private String description;

    private Short status;

    private String link;

    private Short requestMethod;

    public Short getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Short privilegeId) {
        this.privilegeId = privilegeId;
    }

    public String getPrivilegeCode() {
        return privilegeCode;
    }

    public void setPrivilegeCode(String privilegeCode) {
        this.privilegeCode = privilegeCode;
    }

    public Short getPrivilegeGroupId() {
        return privilegeGroupId;
    }

    public void setPrivilegeGroupId(Short privilegeGroupId) {
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

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Short getRequestMethod() {
        return requestMethod;
    }

    public void setRequestMethod(Short requestMethod) {
        this.requestMethod = requestMethod;
    }
}