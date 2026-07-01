package dao;

import java.sql.*;
import java.util.*;
import model.Complaint;

public class ComplaintDAO {

    Connection con;

    // Add Complaint
    public boolean addComplaint(Complaint c) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            String sql = "INSERT INTO complaints(user_id,title,description,status) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, c.getUserId());
            ps.setString(2, c.getTitle());
            ps.setString(3, c.getDescription());
            ps.setString(4, "Pending");

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Admin - View All Complaints
    public List<Complaint> getAllComplaints() {

        List<Complaint> list = new ArrayList<>();

        try {

            con = DBConnection.getConnection();

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("SELECT * FROM complaints");

            while (rs.next()) {

                Complaint c = new Complaint();

                c.setId(rs.getInt("complaint_id"));
                c.setUserId(rs.getInt("user_id"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                c.setStatus(rs.getString("status"));

                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Student - View Own Complaints
    public List<Complaint> getComplaintsByUserId(int userId) {

        List<Complaint> list = new ArrayList<>();

        try {

            con = DBConnection.getConnection();

            String sql = "SELECT * FROM complaints WHERE user_id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Complaint c = new Complaint();

                c.setId(rs.getInt("complaint_id"));
                c.setUserId(rs.getInt("user_id"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                c.setStatus(rs.getString("status"));

                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    // Resolve Complaint
public boolean resolveComplaint(int complaintId){

    boolean status = false;

    try{

        con = DBConnection.getConnection();

        String sql = "UPDATE complaints SET status='Resolved' WHERE complaint_id=?";

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, complaintId);

        status = ps.executeUpdate() > 0;

    }catch(Exception e){
        e.printStackTrace();
    }

    return status;
}
}
