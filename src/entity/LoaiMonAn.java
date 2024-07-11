package entity;

public class LoaiMonAn {

    int maLoaiMonAn;
    String tenLoaiMonAn;

    public LoaiMonAn() {
    }

    public LoaiMonAn(String tenLoaiMonAn) {
        this.tenLoaiMonAn = tenLoaiMonAn;
    }

    public LoaiMonAn(int maLoaiMonAn, String tenLoaiMonAn) {
        this.maLoaiMonAn = maLoaiMonAn;
        this.tenLoaiMonAn = tenLoaiMonAn;
    }

    public int getMaLoaiMonAn() {
        return maLoaiMonAn;
    }

    public void setMaLoaiMonAn(int maLoaiMonAn) {
        this.maLoaiMonAn = maLoaiMonAn;
    }

    public String getTenLoaiMonAn() {
        return tenLoaiMonAn;
    }

    public void setTenLoaiMonAn(String tenLoaiMonAn) {
        this.tenLoaiMonAn = tenLoaiMonAn;
    }

    @Override
    public String toString() {
        return this.tenLoaiMonAn;
    }
}
