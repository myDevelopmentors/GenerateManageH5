package com.myproject.model;

import java.io.Serializable;

public class FuncTree implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
    private Short funcTreeId;

    private Short fId;
    
    private FuncTree parent;

    private String code;

    private String ord;

    private String name;

    private String description;

    private String openIcon;

    private String closeIcon;

    private Short disp;

    private Short status;

    private String privilegeCode;

    private Permission permission;
    
    public Short getFuncTreeId() {
        return funcTreeId;
    }

    public void setFuncTreeId(Short funcTreeId) {
        this.funcTreeId = funcTreeId;
    }

    public Short getfId() {
        return fId;
    }

    public void setfId(Short fId) {
        this.fId = fId;
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

    public String getOpenIcon() {
        return openIcon;
    }

    public void setOpenIcon(String openIcon) {
        this.openIcon = openIcon;
    }

    public String getCloseIcon() {
        return closeIcon;
    }

    public void setCloseIcon(String closeIcon) {
        this.closeIcon = closeIcon;
    }

    public Short getDisp() {
        return disp;
    }

    public void setDisp(Short disp) {
        this.disp = disp;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public String getPrivilegeCode() {
        return privilegeCode;
    }

    public void setPrivilegeCode(String privilegeCode) {
        this.privilegeCode = privilegeCode;
    }

	public FuncTree getParent() {
		return parent;
	}

	public void setParent(FuncTree parent) {
		this.parent = parent;
	}

	public Permission getPermission() {
		return permission;
	}

	public void setPermission(Permission permission) {
		this.permission = permission;
	}

    
}