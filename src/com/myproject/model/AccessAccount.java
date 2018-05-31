package com.myproject.model;

import java.io.Serializable;
import java.util.Date;

public class AccessAccount implements Serializable {
    private Short accessAccountId;

    private String appkey;

    private Short departmentId;
    
    private Short prodSrvId;

    private String username;

    private String description;

    private String secret;

    private Date opendate;

    private Date accountExpire;

    private Date pwExpire;

    private Integer creator;

    private Date createTime;

    private Integer lastUserId;

    private Date lastUpdateTime;

    private Date lastAccessTime;

    private String status;

    private static final long serialVersionUID = 1L;

    public Short getAccessAccountId() {
        return accessAccountId;
    }

    public void setAccessAccountId(Short accessAccountId) {
        this.accessAccountId = accessAccountId;
    }

    public String getAppkey() {
        return appkey;
    }

    public void setAppkey(String appkey) {
        this.appkey = appkey;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public Date getOpendate() {
        return opendate;
    }

    public void setOpendate(Date opendate) {
        this.opendate = opendate;
    }

    public Date getAccountExpire() {
        return accountExpire;
    }

    public void setAccountExpire(Date accountExpire) {
        this.accountExpire = accountExpire;
    }

    public Date getPwExpire() {
        return pwExpire;
    }

    public void setPwExpire(Date pwExpire) {
        this.pwExpire = pwExpire;
    }

    public Integer getCreator() {
        return creator;
    }

    public void setCreator(Integer creator) {
        this.creator = creator;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLastUserId() {
        return lastUserId;
    }

    public void setLastUserId(Integer lastUserId) {
        this.lastUserId = lastUserId;
    }

    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public Date getLastAccessTime() {
        return lastAccessTime;
    }

    public void setLastAccessTime(Date lastAccessTime) {
        this.lastAccessTime = lastAccessTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

	public Short getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Short departmentId) {
		this.departmentId = departmentId;
	}

	public Short getProdSrvId() {
		return prodSrvId;
	}

	public void setProdSrvId(Short prodSrvId) {
		this.prodSrvId = prodSrvId;
	}
}