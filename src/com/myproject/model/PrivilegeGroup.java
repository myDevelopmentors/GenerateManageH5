package com.myproject.model;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author lihongtu
 *
 */
public class PrivilegeGroup implements Serializable {
	
	private static final long serialVersionUID = 1L;
    
	private Short privilegeGroupId;

    private Short fId;

    private PrivilegeGroup parent;
    
    private String code;

    private String ord;

    private String name;

    private String description;

    private List<Permission> children;

    public Short getPrivilegeGroupId() {
        return privilegeGroupId;
    }

    public void setPrivilegeGroupId(Short privilegeGroupId) {
        this.privilegeGroupId = privilegeGroupId;
    }

    public Short getfId() {
        return fId;
    }

    public void setfId(Short fId) {
        this.fId = fId;
    }

    
    public PrivilegeGroup getParent() {
		return parent;
	}

	public void setParent(PrivilegeGroup parent) {
		this.parent = parent;
	}

	public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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

	public List<Permission> getChildren() {
		return children;
	}

	public void setChildren(List<Permission> children) {
		this.children = children;
	}
    
    
//	public Permission getPermission() {
//		return permission;
//	}
//
//	public void setPermission(Permission permission) {
//		this.permission = permission;
//	}
    
}