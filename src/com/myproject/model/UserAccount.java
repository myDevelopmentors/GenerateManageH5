package com.myproject.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class UserAccount implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
    private Integer userId;

    private String userCode;

    private String name;
    
    private Integer departmentId;    
    
    private String username;

    private String description;

    private String salt;

    private String pw;

    private Date opendate;

    private Short accountExpire;

    private Short pwExpire;

    private Date lastLog;

    private Date lastPw;

    private Short pwErrorCount;

    private Short logRec;

    private Short opRec;

    private Date lockDatetime;

    private Date unlockDatetime;

    private Integer creatorUserId;

    private Date createDatetime;

    private Integer lastOpUserId;

    private Date lastOpDatetime;

    private Short status;

    private Date cancelDatetime;

	protected Map<String, String> sqlMap;
    
    private List<Role> rolesList = new ArrayList<Role>();
    
    private List<Permission> permissionsList = new ArrayList<Permission>();
    
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    
    public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
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

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public Date getOpendate() {
        return opendate;
    }

    public void setOpendate(Date opendate) {
        this.opendate = opendate;
    }

    public Short getAccountExpire() {
        return accountExpire;
    }

    public void setAccountExpire(Short accountExpire) {
        this.accountExpire = accountExpire;
    }

    public Short getPwExpire() {
        return pwExpire;
    }

    public void setPwExpire(Short pwExpire) {
        this.pwExpire = pwExpire;
    }

    public Date getLastLog() {
        return lastLog;
    }

    public void setLastLog(Date lastLog) {
        this.lastLog = lastLog;
    }

    public Date getLastPw() {
        return lastPw;
    }

    public void setLastPw(Date lastPw) {
        this.lastPw = lastPw;
    }

    public Short getPwErrorCount() {
        return pwErrorCount;
    }

    public void setPwErrorCount(Short pwErrorCount) {
        this.pwErrorCount = pwErrorCount;
    }

    public Short getLogRec() {
        return logRec;
    }

    public void setLogRec(Short logRec) {
        this.logRec = logRec;
    }

    public Short getOpRec() {
        return opRec;
    }

    public void setOpRec(Short opRec) {
        this.opRec = opRec;
    }

    public Date getLockDatetime() {
        return lockDatetime;
    }

    public void setLockDatetime(Date lockDatetime) {
        this.lockDatetime = lockDatetime;
    }

    public Date getUnlockDatetime() {
        return unlockDatetime;
    }

    public void setUnlockDatetime(Date unlockDatetime) {
        this.unlockDatetime = unlockDatetime;
    }

    public Integer getCreatorUserId() {
        return creatorUserId;
    }

    public void setCreatorUserId(Integer creatorUserId) {
        this.creatorUserId = creatorUserId;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public Integer getLastOpUserId() {
        return lastOpUserId;
    }

    public void setLastOpUserId(Integer lastOpUserId) {
        this.lastOpUserId = lastOpUserId;
    }

    public Date getLastOpDatetime() {
        return lastOpDatetime;
    }

    public void setLastOpDatetime(Date lastOpDatetime) {
        this.lastOpDatetime = lastOpDatetime;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public Date getCancelDatetime() {
        return cancelDatetime;
    }

    public void setCancelDatetime(Date cancelDatetime) {
        this.cancelDatetime = cancelDatetime;
    }

	public List<Role> getRolesList() {
		return rolesList;
	}

	public void setRolesList(List<Role> rolesList) {
		this.rolesList = rolesList;
	}

	public List<Permission> getPermissionsList() {
		return permissionsList;
	}

	public void setPermissionsList(List<Permission> permissionsList) {
		this.permissionsList = permissionsList;
	}

	public Map<String, String> getSqlMap() {
		return sqlMap;
	}

	public void setSqlMap(Map<String, String> sqlMap) {
		this.sqlMap = sqlMap;
	}
    
    
    
}