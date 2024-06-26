/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author Norttie
 */
public class AccountDao extends DBContext {

    public Account getAccountByEmail(String email) {
        String sql = "Select * from Account where email =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println("Error cannot get account");
            return null;
        }
        return null;
    }

    public Account getAccountById(String id) {
        String sql = "Select * from Account where id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
                return acc;

            }
        } catch (SQLException e) {
            System.out.println("Error cannot get account");
            return null;
        }

        return null;
    }

    public Account login(String email, String password) {
        String sql = "SELECT * FROM Account WHERE email = ? AND password = ?";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, email);
            st.setString(2, password);
            try (ResultSet rs = st.executeQuery()) {
                if (rs.next()) {
                    return new Account(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getString(8));
                }
            }
        } catch (SQLException e) {
            System.out.println("Error while trying to login: " + e.getMessage());
        }
        return null;
    }

    public void createAccount(String email, String userName, String password, String permission) {
        String sql = "INSERT INTO Account (email,userName,passWord,permission,avatar) values (?,?,?,?,?) ";
        String avatar = "Avatar.png";
        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setString(1, email);
            st.setString(2, userName);
            st.setString(3, password);
            st.setString(4, permission);
            st.setString(5, avatar);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error while trying to login: " + e.getMessage());
        }
    }

    public void updateAccount(String id, String username, String avatar, String desc, String address) {
        String sql = "UPDATE Account SET username = ? , avatar = ? ,[desc] = ?, [address] = ? WHERE id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, avatar);
            st.setString(3, desc);
            st.setString(4, address);
            st.setString(5, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }

    }

//    public static void main(String[] args) {
//       new AccountDao().updateAccount("1", "bacvuUser","avatar","","Hai Duong");
//    }
}
