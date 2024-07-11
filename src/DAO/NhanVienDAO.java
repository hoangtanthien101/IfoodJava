package DAO;

import TienIch.JdbcHelper;
import entity.NhanVien;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class NhanVienDAO extends EduSysDAO<NhanVien, String> {

    String INSERT_SQL = "INSERT INTO NhanVien (MaNV, HoTen, NgaySinh, SoDienThoai, DiaChi, GioiTinh, TaiKhoan, MatKhau, ChucVu, HinhAnh) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    String UPDATE_SQL = "UPDATE NhanVien SET HoTen=?, NgaySinh=?, SoDienThoai=?, DiaChi=?, GioiTinh=?, TaiKhoan=?, MatKhau=?, ChucVu=?, HinhAnh=? WHERE MaNV=?";
    String DELETE_SQL = "DELETE FROM NhanVien WHERE MaNV=?";
    String SELECT_ALL_SQL = "SELECT * FROM NhanVien";
    String SELECT_BY_ID_SQL = "SELECT * FROM NhanVien WHERE MaNV=?";

    @Override
    public void insert(NhanVien entity) {
        try {
            JdbcHelper.update(INSERT_SQL, entity.getMaNV(),
                    entity.getHoTen(),
                    entity.getNgaySinh(),
                    entity.getSoDienThoai(),
                    entity.getDiaChi(),
                    entity.isGioiTinh(),
                    entity.getTaiKhoan(),
                    entity.getMatKhau(),
                    entity.isChucVu(),
                    entity.getHinhAnh());
        } catch (SQLException ex) {
            Logger.getLogger(NhanVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(NhanVien entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getHoTen(),
                    entity.getNgaySinh(),
                    entity.getSoDienThoai(),
                    entity.getDiaChi(),
                    entity.isGioiTinh(),
                    entity.getTaiKhoan(),
                    entity.getMatKhau(),
                    entity.isChucVu(),
                    entity.getHinhAnh(),
                    entity.getMaNV());
        } catch (SQLException ex) {
            Logger.getLogger(NhanVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(String id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(NhanVienDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<NhanVien> selectAll() {
        return (List<NhanVien>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public NhanVien selectById(String id) {
        List<NhanVien> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<NhanVien> selectBySql(String sql, Object... args) {
        List<NhanVien> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                NhanVien entity = new NhanVien();
                entity.setMaNV(rs.getString("MaNV"));
                entity.setHoTen(rs.getString("HoTen"));
                entity.setNgaySinh(rs.getDate("NgaySinh"));
                entity.setSoDienThoai(rs.getString("SoDienThoai"));
                entity.setDiaChi(rs.getString("DiaChi"));
                entity.setGioiTinh(rs.getBoolean("GioiTinh"));
                entity.setTaiKhoan(rs.getString("TaiKhoan"));
                entity.setMatKhau(rs.getString("MatKhau"));
                entity.setChucVu(rs.getBoolean("ChucVu"));
                entity.setHinhAnh(rs.getString("HinhAnh"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<NhanVien> selectHoTen(String hoTen) {
        String SQL = "SELECT * FROM NhanVien WHERE HoTen LIKE ?";
        return this.selectBySql(SQL, "%" + hoTen + "%");
    }

    public NhanVien selectTaiKhoan(String taiKhoan) {
        String SQL = "SELECT * FROM NhanVien WHERE TaiKhoan=?";
        List<NhanVien> list = this.selectBySql(SQL, taiKhoan);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }
}
