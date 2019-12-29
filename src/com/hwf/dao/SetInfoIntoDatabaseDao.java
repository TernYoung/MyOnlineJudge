package com.hwf.dao;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

/**
 * 工具类，向数据库添加信息
 */
public class SetInfoIntoDatabaseDao {
	public static void addProblemTestData(String pid, String inputData, String outputData) {
		if (pid == null || inputData == null || outputData == null)
			return;
		ConnectionDao conn = null;
		PreparedStatement ps = null;

		try {
			conn = new ConnectionDao();
			conn.connection();
			//String sql = "{call addProblemTestData(?,?,?)}";
			String sql = "INSERT INTO problemtestdata (pid,sampleInput,sampleOutput) VALUES (?,?,?);";
			ps = conn.prepareStatement(sql);
			ps.setString(1, pid);
			ps.setString(2, inputData);
			ps.setString(3, outputData);

			ps.execute();
		} catch (ClassNotFoundException | SQLException | ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void updateProblemInputData(String id, String inputData) {
		if (id == null || inputData == null)
			return;
		ConnectionDao conn = null;
		PreparedStatement ps = null;

		try {
			conn = new ConnectionDao();
			conn.connection();
			//String sql = "{call updateProblemInputData(?,?)}";
			String sql = "UPDATE problemtestdata SET sampleInput=? WHERE dataId=?;";
			ps = conn.prepareStatement(sql);
			ps.setString(1, inputData);
			ps.setString(2, id);

			ps.execute();
		} catch (ClassNotFoundException | SQLException | ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void updateProblemOutputData(String id, String outputData) {
		if (id == null || outputData == null)
			return;
		ConnectionDao conn = null;
		PreparedStatement ps = null;

		try {
			conn = new ConnectionDao();
			conn.connection();
			//String sql = "{call updateProblemOutputData(?,?)}";
			String sql = "UPDATE problemtestdata SET sampleOutput=? WHERE dataId=?;";
			ps = conn.prepareStatement(sql);
			ps.setString(1, outputData);
			ps.setString(2, id);

			ps.execute();
		} catch (ClassNotFoundException | SQLException | ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void deleteTestData(String id) {
		if (id == null)
			return;

		ConnectionDao conn = null;
		PreparedStatement ps = null;

		try {
			conn = new ConnectionDao();
			conn.connection();
			//String sql = "{call deleteTestData(?)}";
			String sql = "DELETE FROM problemtestdata WHERE dataId=?;";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);

			ps.execute();
		} catch (ClassNotFoundException | SQLException | ParserConfigurationException | SAXException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void updateUserNickname(String username, String nickname) throws ClassNotFoundException, SQLException, ParserConfigurationException, SAXException, IOException {
		ConnectionDao conn;
		PreparedStatement ps;

		conn = new ConnectionDao();
		conn.connection();
//		String sql = "{call updateUserNickname(?,?)}";
		String sql = "UPDATE usersinfo SET NickName=? WHERE Username=?;";
		ps = conn.prepareStatement(sql);
		ps.setString(1, nickname);
		ps.setString(2, username);

		ps.executeUpdate();
		ps.close();
		conn.close();

	}

	public static void updateUserPassword(String username, String password) throws ClassNotFoundException, SQLException, ParserConfigurationException, SAXException, IOException {
		ConnectionDao conn;
		PreparedStatement ps;

		conn = new ConnectionDao();
		conn.connection();
//		String sql = "{call updateUserPassword(?,?)}";
		String sql = "UPDATE usersinfo SET Passwd=? WHERE Username=?;";
		ps = conn.prepareStatement(sql);
		ps.setString(1, password);
		ps.setString(2, username);

		ps.executeUpdate();
		ps.close();
		conn.close();
	}
}
