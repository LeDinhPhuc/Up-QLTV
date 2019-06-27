/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlythuvien;

/**
 *
 * @author Đình Phúc
 */
public class NhanVien {
    private String maNV;
    private String tenNV;
    private String ngaySinh;
    private String gT;
    private String diaChi;
    private String email;
    private String sDT;
    private int soLuong;

    public String getMaNV() {
        return maNV;
    }

    public String getTenNV() {
        return tenNV;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public String getGT() {
        return gT;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public String getEmail() {
        return email;
    }

    public String getSDT() {
        return sDT;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public void setTenNV(String tenNV) {
        this.tenNV = tenNV;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public void setGT(String gT) {
        this.gT = gT;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSDT(String sDT) {
        this.sDT = sDT;
    }
    public int getSoLuong() {
        return soLuong;
    }
    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
    
}
