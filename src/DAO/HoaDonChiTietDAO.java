package DAO;

import TienIch.JdbcHelper;
import entity.HoaDon;
import entity.HoaDonChiTiet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class HoaDonChiTietDAO extends EduSysDAO<HoaDonChiTiet, Integer> {

    String INSERT_SQL = "INSERT INTO HOADONCHITIET (MaHD,MaMonAn,SoLuong,ThanhTien) VALUES (?,?,?,?)";
    String UPDATE_SQL = "UPDATE HOADONCHITIET SET MaHD=?,MaMonAn=?,SoLuong=?,ThanhTien=? WHERE MaHDCT=?";
    String DELETE_SQL = "DELETE FROM HOADONCHITIET WHERE MaHDCT=?";
    String SELECT_ALL_SQL = "SELECT * FROM HOADONCHITIET";
    String SELECT_BY_ID_SQL = "SELECT * FROM HOADONCHITIET WHERE MaHDCT=?";

    @Override
    public void insert(HoaDonChiTiet entity) {
        try {
            JdbcHelper.update(INSERT_SQL, entity.getMaHD(),
                    entity.getMaMonAn(),
                    entity.getSoLuong(),
                    entity.getThanhTien());
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonChiTietDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(HoaDonChiTiet entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getMaHD(),
                    entity.getMaMonAn(),
                    entity.getSoLuong(),
                    entity.getThanhTien(),
                    entity.getMaHDCT());
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonChiTietDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonChiTietDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<HoaDonChiTiet> selectAll() {
        return (List<HoaDonChiTiet>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public HoaDonChiTiet selectById(Integer id) {
        List<HoaDonChiTiet> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<HoaDonChiTiet> selectBySql(String sql, Object... args) {
        List<HoaDonChiTiet> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                HoaDonChiTiet entity = new HoaDonChiTiet();
//                entity.setMaHDCT(rs.getInt("MaHDCT"));
//                entity.setMaHD(rs.getString("MaHD"));
//                entity.setMaMonAn(rs.getInt("MaMonAn"));
//                entity.setSoLuong(rs.getInt("SoLuong"));
//                entity.setThanhTien(rs.getDouble("ThanhTien"));
                entity.setMaHDCT(rs.getInt("MaHDCT"));
                entity.setMaHD(rs.getInt("MaHD"));
                entity.setNgayTao(rs.getDate("NgayTao"));
                entity.setMaMonAn(rs.getInt("MaMonAn"));
                entity.setTenMonAn(rs.getString("TenMonAN"));
                entity.setGiaTien(rs.getDouble("GiaTien"));
                entity.setSoLuong(rs.getInt("SoLuong"));
                entity.setThanhTien(rs.getDouble("ThanhTien"));
                entity.setMaBanAn(rs.getInt("MaBanAn"));
                entity.setTenBanAn(rs.getString("TenBanAn"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<HoaDonChiTiet> selectByTheoHD(String hoadon) {
        String maHD = "select * from HoaDonChiTiet where mahd like ?";
        return this.selectBySql(maHD, hoadon);
    }

    public List<HoaDonChiTiet> selectAllThucDonMon() {
        String thucDon = "select H.MaHD,H.NgayTao,H.TongTien,H.MaBanAn,B.TenBanAn,NV.MaNV,Nv.HoTen,MAHDCT,HCT.MaMonAn,M.GiaTien,HCT.SoLuong,HCT.ThanhTien,M.TenMonAN,M.MaLoaiMonAn from HOADON H \n"
                + "Inner join HOADONCHITIET HCT on H.MaHD = HCT.MaHD\n"
                + "inner join MONAN M on HCT.MaMonAn = M.MaMonAn\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner Join BANAN B on b.MaBanAn = H.MaBanAn\n";
        return (List<HoaDonChiTiet>) this.selectBySql(thucDon);
    }

    public List<HoaDonChiTiet> selectByIdHoaDonCT(int hoadon) {
        String maHD = "select H.MaHD,H.NgayTao,H.TongTien,H.MaBanAn,B.TenBanAn,NV.MaNV,Nv.HoTen,MAHDCT,HCT.MaMonAn,M.GiaTien,HCT.SoLuong,HCT.ThanhTien,M.TenMonAN,M.MaLoaiMonAn from HOADON H \n"
                + "Inner join HOADONCHITIET HCT on H.MaHD = HCT.MaHD\n"
                + "inner join MONAN M on HCT.MaMonAn = M.MaMonAn\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner Join BANAN B on b.MaBanAn = H.MaBanAn\n"
                + "where h.MaHD = ?";
        return this.selectBySql(maHD, hoadon);
    }

    public void XoaHDCTTheoHD(int maHD) {
        String mahoadon = "delete from HOADONCHITIET where MaHD = ?";
        try {
            JdbcHelper.update(mahoadon, maHD);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<HoaDonChiTiet> selectBanAnDangDung(int maBan) {
        String selectBan = "select H.MaHD,h.TrangThai,H.NgayTao,H.TongTien,H.MaBanAn,B.TenBanAn,NV.MaNV,Nv.HoTen,MAHDCT,HCT.MaMonAn,M.GiaTien,HCT.SoLuong,HCT.ThanhTien,M.TenMonAN,M.MaLoaiMonAn from HOADON H \n"
                + "Inner join HOADONCHITIET HCT on H.MaHD = HCT.MaHD\n"
                + "inner join MONAN M on HCT.MaMonAn = M.MaMonAn\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner Join BANAN B on b.MaBanAn = H.MaBanAn\n"
                + "where h.MaBanAn = ? and h.TrangThai = 0";
        return this.selectBySql(selectBan, maBan);
    }
}
