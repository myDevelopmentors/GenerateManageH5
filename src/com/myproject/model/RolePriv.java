package com.myproject.model;

import java.io.Serializable;

public class RolePriv implements Serializable {
    private Integer rolePrivId;

    private Integer roleId;

    private Integer privilegeId;

    private Integer operable;

    private Integer grantable;

    private static final long serialVersionUID = 1L;

    public Integer getRolePrivId() {
        return rolePrivId;
    }

    public void setRolePrivId(Integer rolePrivId) {
        this.rolePrivId = rolePrivId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Integer privilegeId) {
        this.privilegeId = privilegeId;
    }

    public Integer getOperable() {
        return operable;
    }

    public void setOperable(Integer operable) {
        this.operable = operable;
    }

    public Integer getGrantable() {
        return grantable;
    }

    public void setGrantable(Integer grantable) {
        this.grantable = grantable;
    }
}