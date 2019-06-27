package testJDBC;

import java.sql.*;
import quanlythuvien.MyConnect;
public class InsertUpdateDelete {
	//Khoi tao doi tuong connection. PreparedStatement
	//gan ket noi cho doi tuong connetion vua tao conn = Myconnect().connect();
	//
	//them du lieu khai bao
	
	Connection conn = null;
	PreparedStatement ps= null;
	
	public void IUD() {
		MyConnect kn = new MyConnect();
		conn = kn.connect();
		String sql = "INSERT INTO `quanlythuvien`.`sach` (`MaSach_LDP`, `TenSach_LDP`, `TenTG_LDP`, `NXB_LDP`, `NamXB_LDP`, `GiaTien_LDP`, `TheLoai_LDP`, `SoLuongCon_LDP`, `TongSoLuong_LDP`)" + 
				"VALUES ('S010', 'Đắc Nhân Tâm', 'Dale Carnegie', 'NXB Tổng Hợp TPHCM', '2016-00-00', '73000', 'Tâm Lý - Kỹ Năng Sống', '5', '50');" ;
//               /*   ---------------  Them  ------------ */
//				String sql = "DELETE FROM SACH WHERE MaSach_LDP = 'S007';";         
//		       /*------- Xoa ---------*/
//		String sql = "UPDATE `quanlythuvien`.`sach` SET `TongSoLuong_LDP` = '100'" + 
//				"WHERE (`MaSach_LDP` = 'S003');";
		/*------------ Sua  ------------------*/
		
		try {
			ps = conn.prepareStatement(sql);// truyen cau len sql vao ps
			int kt = ps.executeUpdate();  // ham update la ham tra ve kieu int
			if(kt!=0) {
				System.out.println("Successfully");
				ps.close();
				conn.close();
			}else {
				System.out.println("Error");
			}
			
		} catch (SQLException e) {
			System.out.println("Error -> "+e.getMessage());
			//e.printStackTrace(); 	ko nen, nen bao loi o tren
		}
	}
}

