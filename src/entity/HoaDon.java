package entity;

import TienIch.XDate;
import java.util.Date;

public class HoaDon {

    int maHD;
    int maBanAn;
    String tenBanAn;
    String maNV;
    String Hoten;
    boolean trangThai;
    Date ngayTao;
    double TongTien;

    public HoaDon() {
    }

    public HoaDon(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public HoaDon(int maHD, int maBanAn, String tenBanAn, String maNV, String Hoten, boolean trangThai, Date ngayTao, double TongTien) {
        this.maHD = maHD;
        this.maBanAn = maBanAn;
        this.tenBanAn = tenBanAn;
        this.maNV = maNV;
        this.Hoten = Hoten;
        this.trangThai = trangThai;
        this.ngayTao = ngayTao;
        this.TongTien = TongTien;
    }

    public int getMaHD() {
        return maHD;
    }

    public void setMaHD(int maHD) {
        this.maHD = maHD;
    }

    public int getMaBanAn() {
        return maBanAn;
    }

    public void setMaBanAn(int maBanAn) {
        this.maBanAn = maBanAn;
    }

    public String getTenBanAn() {
        return tenBanAn;
    }

    public void setTenBanAn(String tenBanAn) {
        this.tenBanAn = tenBanAn;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getHoten() {
        return Hoten;
    }

    public void setHoten(String Hoten) {
        this.Hoten = Hoten;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public double getTongTien() {
        return TongTien;
    }

    public void setTongTien(double TongTien) {
        this.TongTien = TongTien;
    }

    @Override
    public String toString() {
        return "ngayTao=" + ngayTao + '}';
    }

}
