package com.myproject.model;

import java.io.Serializable;

public class Service implements Serializable {
    private Short serviceId;

    private String serviceCode;

    private String name;

    private String url;

    private static final long serialVersionUID = 1L;

    public Short getServiceId() {
        return serviceId;
    }

    public void setServiceId(Short serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceCode() {
        return serviceCode;
    }

    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}