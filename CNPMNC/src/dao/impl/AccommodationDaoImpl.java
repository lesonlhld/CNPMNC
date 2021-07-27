package dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import dao.AccommodationDao;
import jdbc.JDBCConnection;
import model.Accommodation;

public class AccommodationDaoImpl extends JDBCConnection implements AccommodationDao {

	@Override
	public Boolean insert(Accommodation accommodation) {
		String sql = "INSERT INTO accommodation(address, type_acc, cost, description_acc, contact, status_acc, image) VALUES (?,?,?,?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, accommodation.getAddress());
			ps.setString(2, accommodation.getType_acc());
			ps.setInt(3, accommodation.getCost());
			ps.setString(4, accommodation.getDescription_acc());
			ps.setString(5, accommodation.getContact());
			ps.setString(6, accommodation.getStatus_acc());
			ps.setString(7, accommodation.getImage().toString());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void edit(Accommodation accommodation) {
		String sql = "UPDATE accommodation SET address = ? WHERE id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(4, accommodation.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM orders WHERE order_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Accommodation get(int id) {
		String sql = "SELECT address FROM accommodation WHERE id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Accommodation accommodation = new Accommodation();
				accommodation.setAddress(rs.getString("address"));
				return accommodation;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Accommodation> getAll() {
		List<Accommodation> accommodationList = new ArrayList<Accommodation>();
		String sql = "select * from accommodation";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Accommodation accommodation = new Accommodation();
				accommodation.setId(rs.getInt("id"));
				accommodation.setAddress(rs.getString("address"));
				accommodation.setType_acc(rs.getString("type_acc"));
				accommodation.setCost(rs.getInt("cost"));
				accommodation.setDescription_acc(rs.getString("description_acc"));
				accommodation.setContact(rs.getString("contact"));
				accommodation.setStatus_acc(rs.getString("status_acc"));
				accommodation.setImage(rs.getString("image"));
				accommodationList.add(accommodation);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return accommodationList;
	}

	public List<Accommodation> searchAddress(String address) {
		List<Accommodation> accommodationList = new ArrayList<Accommodation>();
		String sql = "select * from accommodation where address like ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + address + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Accommodation accommodation = new Accommodation();
				accommodation.setId(rs.getInt("id"));
				accommodation.setAddress(rs.getString("address"));
				accommodation.setType_acc(rs.getString("type_acc"));
				accommodation.setCost(rs.getInt("cost"));
				accommodation.setDescription_acc(rs.getString("description_acc"));
				accommodation.setContact(rs.getString("contact"));
				accommodation.setStatus_acc(rs.getString("status_acc"));
				accommodation.setImage(rs.getString("image"));
				accommodationList.add(accommodation);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return accommodationList;
	}
	
	public List<Accommodation> advancedSearch(String address, String costFrom, String costTo, String status, String type_acc){
		List<Accommodation> accommodationList = new ArrayList<Accommodation>();
		String sql = "select * from accommodation where address like ? and cost >= ? and cost <= ? and status_acc like ? and type_acc like ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "%" + address + "%");
			ps.setString(2, costFrom);
			ps.setString(3, costTo);
			ps.setString(4, "%" + status + "%");
			ps.setString(5, "%" + type_acc + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Accommodation accommodation = new Accommodation();
				accommodation.setId(rs.getInt("id"));
				accommodation.setAddress(rs.getString("address"));
				accommodation.setType_acc(rs.getString("type_acc"));
				accommodation.setCost(rs.getInt("cost"));
				accommodation.setDescription_acc(rs.getString("description_acc"));
				accommodation.setContact(rs.getString("contact"));
				accommodation.setStatus_acc(rs.getString("status_acc"));
				accommodation.setImage(rs.getString("image"));
				accommodationList.add(accommodation);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return accommodationList;
	}
}