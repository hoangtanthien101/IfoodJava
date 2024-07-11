package entity;

import java.util.Date;

public class HoaDonChiTiet {

    int maHDCT;
    int maHD;
    int maMonAn;
    String TenMonAn;
    double GiaTien;
    int soLuong;
    double thanhTien;
    int maBanAn;
    String tenBanAn;
    Date ngayTao;

    public HoaDonChiTiet() {
    }

    public HoaDonChiTiet(String TenMonAn, double GiaTien, int soLuong, double thanhTien) {
        this.TenMonAn = TenMonAn;
        this.GiaTien = GiaTien;
        this.soLuong = soLuong;
        this.thanhTien = thanhTien;
    }

    public HoaDonChiTiet(int maHDCT, int maHD, String TenMonAn, double GiaTien, int soLuong, double thanhTien) {
        this.maHDCT = maHDCT;
        this.maHD = maHD;
        this.TenMonAn = TenMonAn;
        this.GiaTien = GiaTien;
        this.soLuong = soLuong;
        this.thanhTien = thanhTien;
    }

    public HoaDonChiTiet(int maHDCT, int maHD, int maMonAn, String TenMonAn, double GiaTien, int soLuong, double thanhTien, int maBanAn, String tenBanAn, Date ngayTao) {
        this.maHDCT = maHDCT;
        this.maHD = maHD;
        this.maMonAn = maMonAn;
        this.TenMonAn = TenMonAn;
        this.GiaTien = GiaTien;
        this.soLuong = soLuong;
        this.thanhTien = thanhTien;
        this.maBanAn = maBanAn;
        this.tenBanAn = tenBanAn;
        this.ngayTao = ngayTao;
    }

    public int getMaHDCT() {
        return maHDCT;
    }

    public void setMaHDCT(int maHDCT) {
        this.maHDCT = maHDCT;
    }

    public int getMaHD() {
        return maHD;
    }

    public void setMaHD(int maHD) {
        this.maHD = maHD;
    }

    public int getMaMonAn() {
        return maMonAn;
    }

    public void setMaMonAn(int maMonAn) {
        this.maMonAn = maMonAn;
    }

    public String getTenMonAn() {
        return TenMonAn;
    }

    public void setTenMonAn(String TenMonAn) {
        this.TenMonAn = TenMonAn;
    }

    public double getGiaTien() {
        return GiaTien;
    }

    public void setGiaTien(double GiaTien) {
        this.GiaTien = GiaTien;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getThanhTien() {
        return thanhTien = GiaTien * soLuong;
    }

    public void setThanhTien(double thanhTien) {
        this.thanhTien = thanhTien;
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

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

}
