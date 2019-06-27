package testJDBC;

import java.sql.*;
import quanlythuvien.MyConnect;
public class Select {
	Connection conn = null;
	PreparedStatement ptmt = null;
	MyConnect connection = new MyConnect();
	
	public void select() {
		conn = connection.connect();
		String sql="select * from sach";
		try {
			ptmt = conn.prepareStatement(sql); // truyen sql vao doi tuong preparedStatement
			//Khởi tạo cái ResultSet
			//ExcuteQuery đối tượng preparedStatement sau đó đổ dữ liệu vào ResultSet
			ResultSet rs = ptmt.executeQuery();
			//Dùng vòng lặp while lấy dữ liệu
			System.out.println("||      MaSach_LDP     ||         TenSach_LDP             ||         TenTG_LDP        ||        NXB_LDP     ||       NamXB_LDP      ||  GiaTien_LDP         "
					+ "||      TheLoai_LDP     ||      SoLuongCon_LDP     ||    TongSoLuong_LDP   ||");
			while(rs.next()) {    // trả về true nếu có dữ liệu
				String maSach  = rs.getString("MaSach_LDP");
				String tenSach = rs.getString("TenSach_LDP");
				String tenTG   = rs.getString("TenTG_LDP");
				String nxb     = rs.getString("NXB_LDP");
				String namXB   = rs.getString("NamXB_LDP"); 
				int giaTien    = rs.getInt("GiaTien_LDP");
				String theLoai = rs.getString("TheLoai_LDP");
				int soLuongCon = rs.getInt("SoLuongCon_LDP");
				int tongSoLuong    = rs.getInt("TongSoLuong_LDP");
				
				System.out.print("||          "+maSach+"       ||");
				System.out.printf(" %-32s||",tenSach);
				System.out.printf(" %-25s||",tenTG);
				System.out.printf("%-20s||",nxb);
				System.out.printf("       %10s     ||",namXB);
				System.out.printf("        %7d       ||",giaTien);
				System.out.printf("%-21s ||",theLoai);
				System.out.printf("            %4d         ||",soLuongCon);
				System.out.printf("            %4d      ||\n",tongSoLuong);
			}
		} catch (SQLException e) {
			System.out.println("Error -> "+e.getMessage());
			//e.printStackTrace();
		} 
	}
}
