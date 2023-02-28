package Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private MemberDAO() {
	}
	static private MemberDAO instance = new MemberDAO();
	static public MemberDAO getInstance() {
		return instance;
	}
	public void getConnect() {
		String url="jdbc:mysql://localhost:3307/db?charaterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user="root";
		String pw = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberVO> getAllMemberList(){
		String sql="select * from member";
		getConnect();
		ArrayList<MemberVO> list=new ArrayList<MemberVO>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberVO m = new MemberVO();
				m.setId(rs.getString("id"));
				m.setPw(rs.getString("pw"));
				m.setName(rs.getString("name"));
				m.setAge(rs.getInt("age"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				m.setGender(rs.getString("gender"));
				list.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list;
	}
	public int checkId(String id) {
		String sql="select id,num from member";
		getConnect();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				String dbId = rs.getString("id");
				if(dbId.equals(id)) {
					int num = rs.getInt("num")-1;
					dbClose();
					return num;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return -1;
	}
	
	public void addMember(String id, String pw, String name, int age, String email, String phone, String gender) {
		String sql = "insert into member(id,pw,name,age,email,phone,gender) value(?,?,?,?,?,?,?)";
		getConnect();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			ps.setString(3, name);
			ps.setInt(4, age);
			ps.setString(5, email);
			ps.setString(6, phone);
			ps.setString(7, gender);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
	}
	public MemberVO getAMember(int idx) {
		MemberVO m = getAllMemberList().get(idx);
		return m;
	}
	
	public boolean checkPw(String pw,int idx) {
		ArrayList<MemberVO> list=getAllMemberList();
		if(list.get(idx).getPw().equals(pw)) {
			return true;
		}
		return false;
	}
	public void deleteMember(String id) {
		String sql = "delete from member where id=?";
		getConnect();
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose(); 
		}
	}
	private void dbClose() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
