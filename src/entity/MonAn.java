package entity;

public class MonAn {

    int maMonAn;
    String tenMonAn;
    int maLoaiMonAn;
    double giaTien;
    String TenLoaiMonAn;
    String HinhAnh;

    public MonAn() {
    }

    public MonAn(int maMonAn, String tenMonAn, int maLoaiMonAn, double giaTien, String HinhAnh) {
        this.maMonAn = maMonAn;
        this.tenMonAn = tenMonAn;
        this.giaTien = giaTien;
        this.maLoaiMonAn = maLoaiMonAn;
        this.HinhAnh = HinhAnh;
    }

    public int getMaMonAn() {
        return maMonAn;
    }

    public void setMaMonAn(int maMonAn) {
        this.maMonAn = maMonAn;
    }

    public String getTenMonAn() {
        return tenMonAn;
    }

    public void setTenMonAn(String tenMonAn) {
        this.tenMonAn = tenMonAn;
    }

    public double getGiaTien() {
        return giaTien;
    }

    public void setGiaTien(double giaTien) {
        this.giaTien = giaTien;
    }

    public int getMaLoaiMonAn() {
        return maLoaiMonAn;
    }

    public void setMaLoaiMonAn(int maLoaiMonAn) {
        this.maLoaiMonAn = maLoaiMonAn;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public String getTenLoaiMonAn() {
        return TenLoaiMonAn;
    }

    public void setTenLoaiMonAn(String TenLoaiMonAn) {
        this.TenLoaiMonAn = TenLoaiMonAn;
    }

    @Override
    public String toString() {
        return tenMonAn;
    }

}
