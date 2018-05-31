package com.myproject.model;

import java.io.Serializable;

public class Ap implements Serializable {
    private Integer apId;

    private Integer userId;

    private Short privilegeId;

    private Integer grantor;

    private Short operable;

    private Short grantable;

    private static final long serialVersionUID = 1L;

    public Integer getApId() {
        return apId;
    }

    public void setApId(Integer apId) {
        this.apId = apId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Short getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Short privilegeId) {
        this.privilegeId = privilegeId;
    }

    public Integer getGrantor() {
        return grantor;
    }

    public void setGrantor(Integer grantor) {
        this.grantor = grantor;
    }

    public Short getOperable() {
        return operable;
    }

    public void setOperable(Short operable) {
        this.operable = operable;
    }

    public Short getGrantable() {
        return grantable;
    }

    public void setGrantable(Short grantable) {
        this.grantable = grantable;
    }
}