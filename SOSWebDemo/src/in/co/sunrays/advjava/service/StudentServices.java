package in.co.sunrays.advjava.service;

import in.co.sunrays.advjava.dto.StudentDTO;
import in.co.sunrays.resources.MessageHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * TBD
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS 
 */

public class StudentServices {

	private static Connection conn = null;

	static {
		try {
			Class.forName(MessageHandler.getValue("database.driver"));

			conn = DriverManager.getConnection(
					MessageHandler.getValue("database.url"),
					MessageHandler.getValue("database.user"),
					MessageHandler.getValue("database.password"));

			conn.setAutoCommit(false);
		} catch (Exception e) {
			System.out.println("Error in loading driver or making connection");
			e.printStackTrace();
		}

	}

	public static void add(StudentDTO dto) throws Exception {

		PreparedStatement stmt = conn
				.prepareStatement("insert into student( rollNo,"
						+ "first_name, last_name, session) value (?,?,?,?)");

		stmt.setString(1, dto.getRollNo());
		stmt.setString(2, dto.getFirstName());
		stmt.setString(3, dto.getLastName());
		stmt.setString(4, dto.getSession());

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();

	}

	public static void update(StudentDTO dto) throws Exception {

		PreparedStatement stmt = conn.prepareStatement("update student set "
				+ "first_name = ?, last_name =? , session =? where rollno =?");

		stmt.setString(1, dto.getFirstName());
		stmt.setString(2, dto.getLastName());
		stmt.setString(3, dto.getSession());
		stmt.setString(4, dto.getRollNo());

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();

	}

	public static void delete(String rollNo) throws Exception {

		PreparedStatement stmt = conn
				.prepareStatement("delete from student where rollno = ?");

		stmt.setString(1, rollNo);

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();
	}

	public static StudentDTO get(String rollNo) throws Exception {

		String sql = "select rollNo, first_name, last_name, session from student where rollno = ?";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, rollNo);

		ResultSet rs = stmt.executeQuery();

		StudentDTO dto = new StudentDTO();

		if (rs.next()) {

			dto.setRollNo(rollNo);
			dto.setFirstName(rs.getString(2));
			dto.setLastName(rs.getString(3));
			dto.setSession(rs.getString(4));
		}

		stmt.close();

		return dto;
	}

	public static List getList() throws Exception {

		String sql = "select rollNo, first_name, last_name, session from student";

		PreparedStatement stmt = conn.prepareStatement(sql);

		ResultSet rs = stmt.executeQuery();

		ArrayList l = new ArrayList();
		StudentDTO dto = null;

		while (rs.next()) {
			dto = new StudentDTO();
			dto.setRollNo(rs.getString(1));
			dto.setFirstName(rs.getString(2));
			dto.setLastName(rs.getString(3));
			dto.setSession(rs.getString(4));
			l.add(dto);
		}

		stmt.close();

		return l;
	}

	public static List getList(String fn) throws Exception {

		String sql = "select rollNo, " + "first_name, last_name, session "
				+ "from student where first_name like '" + fn + "' ";

		PreparedStatement stmt = conn.prepareStatement(sql);

		ResultSet rs = stmt.executeQuery();

		ArrayList l = new ArrayList();
		StudentDTO dto = null;

		while (rs.next()) {
			dto = new StudentDTO();
			dto.setRollNo(rs.getString(1));
			dto.setFirstName(rs.getString(2));
			dto.setLastName(rs.getString(3));
			dto.setSession(rs.getString(4));
			l.add(dto);
		}

		stmt.close();

		return l;
	}

	protected void finalize() throws Exception {
		conn.close();
	}

	public static void main(String[] args) throws Exception {

		// StudentDTO dto = StudentServices.get("123");
		// System.out.println(dto.getFirstName());
		List l = StudentServices.getList();
		Iterator<StudentDTO> it = l.iterator();
		StudentDTO d = null;
		while (it.hasNext()) {
			d = it.next();
			System.out.println(d.getFirstName());
		}

	}

}
