package com.myproject.model;

import java.io.Serializable;

public class IpRule implements Serializable {
    private Integer ipRuleId;

    private Short accessAccountId;

    private Short seg1from;

    private Short seg1to;

    private Short seg2from;

    private Short seg2to;

    private Short seg3from;

    private Short seg3to;

    private Short seg4from;

    private Short seg4to;

    private static final long serialVersionUID = 1L;

    public Integer getIpRuleId() {
        return ipRuleId;
    }

    public void setIpRuleId(Integer ipRuleId) {
        this.ipRuleId = ipRuleId;
    }

    public Short getAccessAccountId() {
        return accessAccountId;
    }

    public void setAccessAccountId(Short accessAccountId) {
        this.accessAccountId = accessAccountId;
    }

    public Short getSeg1from() {
        return seg1from;
    }

    public void setSeg1from(Short seg1from) {
        this.seg1from = seg1from;
    }

    public Short getSeg1to() {
        return seg1to;
    }

    public void setSeg1to(Short seg1to) {
        this.seg1to = seg1to;
    }

    public Short getSeg2from() {
        return seg2from;
    }

    public void setSeg2from(Short seg2from) {
        this.seg2from = seg2from;
    }

    public Short getSeg2to() {
        return seg2to;
    }

    public void setSeg2to(Short seg2to) {
        this.seg2to = seg2to;
    }

    public Short getSeg3from() {
        return seg3from;
    }

    public void setSeg3from(Short seg3from) {
        this.seg3from = seg3from;
    }

    public Short getSeg3to() {
        return seg3to;
    }

    public void setSeg3to(Short seg3to) {
        this.seg3to = seg3to;
    }

    public Short getSeg4from() {
        return seg4from;
    }

    public void setSeg4from(Short seg4from) {
        this.seg4from = seg4from;
    }

    public Short getSeg4to() {
        return seg4to;
    }

    public void setSeg4to(Short seg4to) {
        this.seg4to = seg4to;
    }
}