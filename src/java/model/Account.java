/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Norttie
 */
public class Account {
    private int id;
    private String email;
    private String userName;
    private String passWord;
    private String permission = "user";
    private String avatar="Avatar.png";
    private String desc;
    private String address;

    public Account() {
    }

    public Account(String email, String userName, String passWord,String permission) {
        this.email = email;
        this.userName = userName;
        this.passWord = passWord;
        this.permission = permission;
    }

    public Account(int id, String email, String userName, String passWord,String permitsion,String avatar) {
        this.id = id;
        this.email = email;
        this.userName = userName;
        this.passWord = passWord;
        this.permission = permitsion;
        this.avatar = avatar;
    }

    public Account(int id, String email, String userName, String passWord,String permitsion, String avatar, String desc, String address) {
        this.id = id;
        this.email = email;
        this.userName = userName;
        this.passWord = passWord;
        this.permission = permitsion;
        this.avatar = avatar;
        this.desc = desc;
        this.address = address;
    }
    
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", email=" + email + ", userName=" + userName + ", passWord=" + passWord + ", permission=" + permission + ", avatar=" + avatar + '}';
    }
}
