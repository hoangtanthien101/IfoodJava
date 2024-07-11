package entity;

public class BanAn {

    int maBanAn;
    String tenBanAn;
    boolean trangThai = true;

    public BanAn() {
    }

    public BanAn(int maBanAn, String tenBanAn, boolean trangThai) {
        this.maBanAn = maBanAn;
        this.tenBanAn = tenBanAn;
        this.trangThai = trangThai;
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

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public String toString() {
        return tenBanAn;
    }

}
