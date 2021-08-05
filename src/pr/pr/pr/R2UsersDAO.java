package pr.pr.pr;
import java.sql.*;

public class R2UsersDAO {
	private static final String URL = "jdbc:mysql://localhost/ict03";
	private static final String DBID = "root";
	private static final String DBPW = "mysql";
	
	private static final int SUCCESS = 1;
	private static final int FAIL = 1;
	
	private R2UsersDAO() {
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e){
			// 에러의 발생 근원지를 찾아 단계별로 출력
			e.printStackTrace();
		}
	}
	/* 싱글톤 패턴 - 자바가 동작할 때 최초 한번만 메모리를 할당하고 할당된 메모리에서만 사용 - 메모리 고정 
	 * 외부에서 new 키워드를 이용해 객체를 생성할 수 없도록 private 작성
	 * 외부에서 사용할 때는 getter 와 setter 같은 getInstance() 메서드를 이용해 객체를 반환
	 */
	private static R2UsersDAO dao = new R2UsersDAO();
	
	public static R2UsersDAO getInstance() {
		return dao;
	}
	
	public int usersJoin(R1UsersVO user) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DriverManager.getConnection(URL, DBID, DBPW);
			String sql = "INSERT INTO users2 VALUES (?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUid());
			pstmt.setString(2, user.getUpw());
			pstmt.setString(3, user.getUname());
			pstmt.setString(4, user.getEmail());
			
			pstmt.executeUpdate();
			return SUCCESS;
		}catch(SQLException e){
			System.out.println("에러: " + e);
		}finally{
			try{
				if(con != null && !con.isClosed()){
					con.close();
				}
				if(pstmt != null && !pstmt.isClosed()){
					pstmt.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return FAIL;
	}
	
	public int usersLogin(R1UsersVO user) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DriverManager.getConnection(URL, DBID, DBPW);
			String sql = "SELECT * FROM users WHERE uid = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUid());
			pstmt.executeQuery();
			if(rs.next()) {
				return SUCCESS;				
			}else {
				return FAIL;
			}
		}catch(SQLException e){
			System.out.println("에러: " + e);
		}finally{
			try{
				if(con != null && !con.isClosed()){
					con.close();
				}
				if(pstmt != null && !pstmt.isClosed()){
					pstmt.close();
				}
				if(rs != null && !rs.isClosed()){
					rs.close();
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return FAIL;
	}
}
