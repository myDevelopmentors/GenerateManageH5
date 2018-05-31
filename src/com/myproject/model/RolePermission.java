package com.myproject.model;

import java.io.Serializable;

/**
 * 
 * @author lihongtu
 *
 */
public class RolePermission implements Serializable {
	
	private static final long serialVersionUID = 1L;

    private Integer rolePrivId;

    private Short roleId;

    private Short privilegeId;

    private Short operable;

    private Short grantable;

    public Integer getRolePrivId() {
        return rolePrivId;
    }

    public void setRolePrivId(Integer rolePrivId) {
        this.rolePrivId = rolePrivId;
    }

    public Short getRoleId() {
        return roleId;
    }

    public void setRoleId(Short roleId) {
        this.roleId = roleId;
    }

    public Short getPrivilegeId() {
        return privilegeId;
    }

    public void setPrivilegeId(Short privilegeId) {
        this.privilegeId = privilegeId;
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