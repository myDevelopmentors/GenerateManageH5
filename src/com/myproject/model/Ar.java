package com.myproject.model;

import java.io.Serializable;

public class Ar implements Serializable {
    private Integer arId;

    private Integer userId;

    private Short roleId;

    private Integer grantor;

    private Short grantable;

    private static final long serialVersionUID = 1L;

    public Integer getArId() {
        return arId;
    }

    public void setArId(Integer arId) {
        this.arId = arId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Short getRoleId() {
        return roleId;
    }

    public void setRoleId(Short roleId) {
        this.roleId = roleId;
    }

    public Integer getGrantor() {
        return grantor;
    }

    public void setGrantor(Integer grantor) {
        this.grantor = grantor;
    }

    public Short getGrantable() {
        return grantable;
    }

    public void setGrantable(Short grantable) {
        this.grantable = grantable;
    }
}