package in.co.sunrays.model;

import in.co.sunrays.advjava.dto.StudentDTO;
import in.co.sunrays.resources.MessageHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Student Model contains Students data and performs Database add/update/delete
 * and add operation.
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS 
 */

public class StudentModel {

	static {
		try {
			Class.forName(MessageHandler.getValue("database.driver"));
		} catch (Exception e) {

		}
	}

	private String rollNo;

	private String firstName;

	private String lastName;

	private String session;

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the rollNo
	 */
	public String getRollNo() {
		return rollNo;
	}

	/**
	 * @param rollNo
	 *            the rollNo to set
	 */
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}

	/**
	 * @return the session
	 */
	public String getSession() {
		return session;
	}

	/**
	 * @param session
	 *            the session to set
	 */
	public void setSession(String session) {
		this.session = session;
	}

	private Connection getConnection() {

		Connection conn = null;

		try {
			conn = DriverManager.getConnection(
					MessageHandler.getValue("database.url"),
					MessageHandler.getValue("database.user"),
					MessageHandler.getValue("database.password"));

			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;

	}

	public void add() throws Exception {

		Connection conn = getConnection();

		PreparedStatement stmt = conn
				.prepareStatement("insert into student( rollNo,"
						+ "first_name, last_name, session) value (?,?,?,?)");

		stmt.setString(1, rollNo);
		stmt.setString(2, firstName);
		stmt.setString(3, lastName);
		stmt.setString(4, session);

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();

		conn.close();

	}

	public void update() throws Exception {

		Connection conn = getConnection();

		PreparedStatement stmt = conn.prepareStatement("update student set "
				+ "first_name = ?, last_name =? , session =? where rollno =?");

		stmt.setString(1, firstName);
		stmt.setString(2, lastName);
		stmt.setString(3, session);
		stmt.setString(4, rollNo);

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();

		conn.close();

	}

	public void delete() throws Exception {

		Connection conn = getConnection();

		PreparedStatement stmt = conn
				.prepareStatement("delete from student where rollno = ?");

		stmt.setString(1, rollNo);

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();
	}

	public StudentDTO get(String rollNo) throws Exception {

		Connection conn = getConnection();

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

		conn.close();

		return dto;
	}

	public List getList() throws Exception {

		String sql = "select rollNo, first_name, last_name, session from student";

		Connection conn = getConnection();

		PreparedStatement stmt = conn.prepareStatement(sql);

		ResultSet rs = stmt.executeQuery();

		ArrayList list = new ArrayList();
		StudentDTO dto = null;

		while (rs.next()) {
			dto = new StudentDTO();
			dto.setRollNo(rs.getString(1));
			dto.setFirstName(rs.getString(2));
			dto.setLastName(rs.getString(3));
			dto.setSession(rs.getString(4));
			list.add(dto);
		}

		stmt.close();
		conn.close();

		return list;
	}

	public List getList(String fn) throws Exception {

		String sql = "select rollNo, " + "first_name, last_name, session "
				+ "from student where first_name like '" + fn + "' ";

		Connection conn = getConnection();

		PreparedStatement stmt = conn.prepareStatement(sql);

		ResultSet rs = stmt.executeQuery();

		ArrayList list = new ArrayList();
		StudentDTO dto = null;

		while (rs.next()) {
			dto = new StudentDTO();
			dto.setRollNo(rs.getString(1));
			dto.setFirstName(rs.getString(2));
			dto.setLastName(rs.getString(3));
			dto.setSession(rs.getString(4));
			list.add(dto);
		}

		stmt.close();
		conn.close();

		return list;
	}

	public static void main(String[] args) throws Exception {

		// StudentDTO dto = StudentServices.get("123");
		// System.out.println(dto.getFirstName());
		StudentModel model = new StudentModel();
		List l = model.getList();
		Iterator<StudentDTO> it = l.iterator();
		StudentDTO d = null;
		while (it.hasNext()) {
			d = it.next();
			System.out.println(d.getFirstName());
		}

	}

}
