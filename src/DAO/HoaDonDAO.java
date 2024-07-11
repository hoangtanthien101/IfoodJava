package DAO;

import TienIch.JdbcHelper;
import entity.HoaDon;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class HoaDonDAO extends EduSysDAO<HoaDon, Integer> {

    String INSERT_SQL = "INSERT INTO HOADON (MaBanAn,MaNV,TrangThai,NgayTao,TongTien) VALUES (?,?,?,?,?)";
    String UPDATE_SQL = "UPDATE HOADON SET MaBanAn=?,MaNV=?,TrangThai=?,NgayTao=?,TongTien=? WHERE MaHD=?";
    String DELETE_SQL = "DELETE FROM HOADON WHERE MaHD=?";
    String SELECT_ALL_SQL = "SELECT * FROM HOADON";
    String SELECT_BY_ID_SQL = "SELECT * FROM HOADON WHERE MaHD=?";

    @Override
    public void insert(HoaDon entity) {
        try {
            JdbcHelper.update(INSERT_SQL,
                    entity.getMaBanAn(),
                    entity.getMaNV(),
                    entity.isTrangThai(),
                    entity.getNgayTao(),
                    entity.getTongTien());
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(HoaDon entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getMaBanAn(),
                    entity.getMaNV(),
                    entity.isTrangThai(),
                    entity.getNgayTao(),
                    entity.getTongTien(),
                    entity.getMaHD());
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<HoaDon> selectAll() {
        return (List<HoaDon>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public HoaDon selectById(Integer id) {
        List<HoaDon> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<HoaDon> selectBySql(String sql, Object... args) {
        List<HoaDon> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                HoaDon entity = new HoaDon();
                entity.setMaHD(rs.getInt("MaHD"));
                entity.setMaBanAn(rs.getInt("MaBanAn"));
                entity.setTenBanAn(rs.getString("TenBanAn"));
                entity.setMaNV(rs.getString("MaNV"));
                entity.setHoten(rs.getString("HoTen"));
                entity.setTrangThai(rs.getBoolean("TrangThai"));
                entity.setNgayTao(rs.getDate("NgayTao"));
                entity.setTongTien(rs.getDouble("TongTien"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<HoaDon> selectAllHoTen() {
        String SelectHoTen = "select H.*,NV.HoTen,b.TenBanAn from HoaDon H\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner join BANAN b on b.MaBanAn = h.MaBanAn\n";
        return (List<HoaDon>) this.selectBySql(SelectHoTen);
    }

    public List<HoaDon> selectTrangThai() {
        String SelectHoTen = "select H.*,NV.HoTen,b.TenBanAn from HoaDon H\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner join BANAN b on b.MaBanAn = h.MaBanAn\n"
                + "where H.TrangThai = 0";
        return (List<HoaDon>) this.selectBySql(SelectHoTen);
    }

    public List<HoaDon> selectTrangThai1() {
        String SelectHoTen = "select H.*,NV.HoTen,b.TenBanAn from HoaDon H\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner join BANAN b on b.MaBanAn = h.MaBanAn\n"
                + "where H.TrangThai = 1";
        return (List<HoaDon>) this.selectBySql(SelectHoTen);
    }

    public void updateTrangThaiTongTien(double TongTien, int maHd) {
        String trangThaiTongTien = "UPDATE HOADON SET TrangThai=1, tongTien = ? WHERE MaHD = ?";
        try {
            JdbcHelper.update(trangThaiTongTien, TongTien, maHd);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateTrangThai(int maHd) {
        String trangThai = "UPDATE HOADON SET TrangThai = 0 WHERE MaHD = ?";
        try {
            JdbcHelper.update(trangThai, maHd);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<String> selectNgayTao() {
        String SQL = "SELECT DISTINCT FORMAT(NgayTao, 'dd-MM-yyyy') AS FormattedDate FROM HOADON ORDER BY FormattedDate DESC";
        List<String> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(SQL);
            while (rs.next()) {
                list.add(rs.getString("FormattedDate"));
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

//    public List<HoaDon> selectBanAnDangDung(int maBan) {
//        String selectBan = "select * from HOADONCHITIET hdct\n"
//                + "inner join HOADON hd on hd.MaHD = hdct.MaHD\n"
//                + "where MaBanAn = ? and TrangThai = 0";
//        return (List<HoaDon>) this.selectBySql(selectBan, maBan);
//    }
}
