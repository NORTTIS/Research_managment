/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Norttie
 */
public class Research {

    private String id;
    private String Rname;
    private String accountid;
    private String cid;
    private String status;
    private String supervisorid;
    private Date createAt;

    public Research() {
    }

    public Research(String id, String Rname, String accountid, String cid, String status, String supervisorid, Date createAt) {
        this.id = id;
        this.Rname = Rname;
        this.accountid = accountid;
        this.cid = cid;
        this.status = status;
        this.supervisorid = supervisorid;
        this.createAt = createAt;
    }

    public Research(String Rname, String accountid, String cid, String status, String supervisorid, Date createAt) {
        this.Rname = Rname;
        this.accountid = accountid;
        this.cid = cid;
        this.status = status;
        this.supervisorid = supervisorid;
        this.createAt = createAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRname() {
        return Rname;
    }

    public void setRname(String Rname) {
        this.Rname = Rname;
    }

    public String getAccountid() {
        return accountid;
    }

    public void setAccountid(String accountid) {
        this.accountid = accountid;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public String getSupervisorid() {
        return supervisorid;
    }

    public void setSupervisorid(String supervisorid) {
        this.supervisorid = supervisorid;
    }

    @Override
    public String toString() {
        return "Research{" + "id=" + id + ", Rname=" + Rname + ", accountid=" + accountid + ", cid=" + cid + ", status=" + status + ", supervisorid=" + supervisorid + ", createAt=" + createAt + '}';
    }

}
