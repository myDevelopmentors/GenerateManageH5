package com.myproject.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Role implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
    private Integer roleId;

    private String roleCode;

    private String name;

    private String description;

    private Integer roleType;

    private List<Permission> permissionsList = new ArrayList<Permission>();
    
    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
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

    public Integer getRoleType() {
        return roleType;
    }

    public void setRoleType(Integer roleType) {
        this.roleType = roleType;
    }

	public List<Permission> getPermissionsList() {
		return permissionsList;
	}

	public void setPermissionsList(List<Permission> permissionsList) {
		this.permissionsList = permissionsList;
	}
    
    
    
}