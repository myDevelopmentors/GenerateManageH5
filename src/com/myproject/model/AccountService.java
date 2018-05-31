package com.myproject.model;

import java.io.Serializable;

public class AccountService implements Serializable {
    private Integer accountServiceId;

    private Short accessAccountId;

    private Short serviceId;

    private String status;

    private static final long serialVersionUID = 1L;

    public Integer getAccountServiceId() {
        return accountServiceId;
    }

    public void setAccountServiceId(Integer accountServiceId) {
        this.accountServiceId = accountServiceId;
    }

    public Short getAccessAccountId() {
        return accessAccountId;
    }

    public void setAccessAccountId(Short accessAccountId) {
        this.accessAccountId = accessAccountId;
    }

    public Short getServiceId() {
        return serviceId;
    }

    public void setServiceId(Short serviceId) {
        this.serviceId = serviceId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}