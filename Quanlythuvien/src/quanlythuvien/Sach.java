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
public class Sach {
    private String maSach;
    private String tenSach;
    private String tenTG;
    private String nXB;
    private String namXB;
    private int giaTien;
    private String theLoai;
    private int soLuongCon;
    private int tongSoLuong;
    
    public Sach(){
        
    }

    public Sach(String maSach, String tenSach, String tenTG, String nXB, String namXB, int giaTien, String theLoai) {
        this.maSach = maSach;
        this.tenSach = tenSach;
        this.tenTG = tenTG;
        this.nXB = nXB;
        this.namXB = namXB;
        this.giaTien = giaTien;
        this.theLoai = theLoai;
    }
    
    public String getMaSach() {
        return maSach;
    }

    public String getTenSach() {
        return tenSach;
    }

    public String getTenTG() {
        return tenTG;
    }

    public String getNXB() {
        return nXB;
    }

    public String getNamXB() {
        return namXB;
    }

    public int getGiaTien() {
        return giaTien;
    }

    public String getTheLoai() {
        return theLoai;
    }

    public int getSoLuongCon() {
        return soLuongCon;
    }

    public int getTongSoLuong() {
        return tongSoLuong;
    }

    
    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public void setTenTG(String tenTG) {
        this.tenTG = tenTG;
    }

    public void setNXB(String nXB) {
        this.nXB = nXB;
    }

    public void setNamXB(String namXB) {
        this.namXB = namXB;
    }

    public void setGiaTien(int giaTien) {
        this.giaTien = giaTien;
    }

    public void setTheLoai(String theLoai) {
        this.theLoai = theLoai;
    }   

    public void setSoLuongCon(int soLuongCon) {
        this.soLuongCon = soLuongCon;
    }

    public void setTongSoLuong(int tongSoLuong) {
        this.tongSoLuong = tongSoLuong;
    }
    
    
}
