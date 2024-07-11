package DAO;

import TienIch.JdbcHelper;
import entity.LoaiMonAn;
import entity.MonAn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MonAnDAO extends EduSysDAO<MonAn, Integer> {

    String INSERT_SQL = "INSERT INTO MONAN (TenMonAn,MaLoaiMonAn,GiaTien,HinhAnh) VALUES (?,?,?,?)";
    String UPDATE_SQL = "UPDATE MONAN SET TenMonAn=?,MaLoaiMonAn=?,GiaTien=?,HinhAnh=? WHERE MaMonAn=?";
    String DELETE_SQL = "DELETE FROM MONAN WHERE MaMonAn=?";
    String SELECT_ALL_SQL = "SELECT * FROM MONAN";
    String SELECT_BY_ID_SQL = "SELECT * FROM MONAN WHERE MaMonAn=?";

    @Override
    public void insert(MonAn entity) {
        try {
            JdbcHelper.update(INSERT_SQL, entity.getTenMonAn(),
                    entity.getMaLoaiMonAn(),
                    entity.getGiaTien(),
                    entity.getHinhAnh());
        } catch (SQLException ex) {
            Logger.getLogger(MonAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(MonAn entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getTenMonAn(),
                    entity.getMaLoaiMonAn(),
                    entity.getGiaTien(),
                    entity.getHinhAnh(),
                    entity.getMaMonAn());
        } catch (SQLException ex) {
            Logger.getLogger(MonAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(MonAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<MonAn> selectAll() {
        return (List<MonAn>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public MonAn selectById(Integer id) {
        List<MonAn> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<MonAn> selectBySql(String sql, Object... args) {
        List<MonAn> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                MonAn entity = new MonAn();
                entity.setMaMonAn(rs.getInt("MaMonAn"));
                entity.setTenMonAn(rs.getString("TenMonAn"));
                entity.setMaLoaiMonAn(rs.getInt("MaLoaiMonAn"));
                entity.setTenLoaiMonAn(rs.getString("TenLoaiMonAn"));
                entity.setGiaTien(rs.getDouble("GiaTien"));
                entity.setHinhAnh(rs.getString("HinhAnh"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<MonAn> selectAllWithLoai() {
        String SELECT_ALL_WITH_LOAI_SQL = "SELECT M.*, L.TenLoaiMonAn FROM MONAN M INNER JOIN LOAIMONAN L ON M.MaLoaiMonAn = L.MaLoaiMonAn\n"
                + "ORDER BY TenLoaiMonAn,TenMonAn";
        return (List<MonAn>) this.selectBySql(SELECT_ALL_WITH_LOAI_SQL);
    }

    public MonAn selectByIdWithMon(Integer id) {
        String maMon = "SELECT M.*, L.TenLoaiMonAn FROM MONAN M INNER JOIN LOAIMONAN L ON M.MaLoaiMonAn = L.MaLoaiMonAn WHERE M.MaMonAn = ?";
        List<MonAn> list = this.selectBySql(maMon, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public List<MonAn> selectTenMon(String TenMom) {
        String SQL = "SELECT M.*, L.TenLoaiMonAn FROM MONAN M INNER JOIN LOAIMONAN L ON M.MaLoaiMonAn = L.MaLoaiMonAn where M.TenMonAn LIKE ?";
        return this.selectBySql(SQL, "%" + TenMom + "%");
    }

    public List<MonAn> selectTenLoaiLoai(String TenLoai) {
        String SQL = "SELECT M.*, L.TenLoaiMonAn FROM MONAN M INNER JOIN LOAIMONAN L ON M.MaLoaiMonAn = L.MaLoaiMonAn where L.TenLoaiMonAn like ?";
        return this.selectBySql(SQL, "%" + TenLoai + "%");
    }
}
