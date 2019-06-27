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
public class CTMuonTra {
    private String maMuon;
    private String maSach;
    private String ngayTra;
    private int tienCoc;
    private int tienPhat;
    private String ghiChu;

    public CTMuonTra(){
        
    }
    
    public String getMaMuon() {
        return maMuon;
    }

    public String getMaSach() {
        return maSach;
    }

    public String getNgayTra() {
        return ngayTra;
    }

    public int getTienCoc() {
        return tienCoc;
    }

    public int getTienPhat() {
        return tienPhat;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setMaMuon(String maMuon) {
        this.maMuon = maMuon;
    }

    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public void setNgayTra(String ngayTra) {
        this.ngayTra = ngayTra;
    }

    public void setTienCoc(int tienCoc) {
        this.tienCoc = tienCoc;
    }

    public void setTienPhat(int tienPhat) {
        this.tienPhat = tienPhat;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }
    
    
}
