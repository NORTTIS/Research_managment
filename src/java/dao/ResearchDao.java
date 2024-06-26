/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Research;

/**
 *
 * @author Norttie
 */
public class ResearchDao extends DBContext {

    public List<Research> getAllResearch(int index) {
        String sql = "select * from [dbo].[Research] r order by r.id offset ? rows fetch first 5 rows only";
        List<Research> lr = new ArrayList<>();

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1,(index - 1) * 5);
            ResultSet rs;
            rs = st.executeQuery();
            while (rs.next()) {
                Research rsearch = new Research(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getDate(7));

                lr.add(rsearch);
            }
        } catch (SQLException e) {
            System.out.println("Error cannot get account");
            return null;
        }
        return lr;
    }

    public int getNumberPage(String sql) {
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = total / 5;
                if (total % 5 != 0) {
                 countPage++;
                }
                return countPage;
            }
        } catch (SQLException e) {
        }
        return 0;
    }
    
//    public static void main(String[] args) {
//       ResearchDao dao = new ResearchDao();
//        String sql = "select count(*) from Research";
//       List<Research> list = dao.getAllResearch(1);
//        for (Research research : list) {
//            System.out.println(research.toString());
//        }
//        System.out.println(dao.getNumberPage(sql));
//    }
}
