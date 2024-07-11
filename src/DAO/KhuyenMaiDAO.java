package DAO;

import TienIch.JdbcHelper;
import entity.KhuyenMai;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class KhuyenMaiDAO extends EduSysDAO<KhuyenMai, String> {

    String INSERT_SQL = "INSERT INTO KHUYENMAI (MaKhuyenMai,TenKhuyenMai,GiaKhuyenMai) VALUES (?, ?, ?)";
    String UPDATE_SQL = "UPDATE KHUYENMAI SET TenKhuyenMai=?, GiaKhuyenMai=? WHERE MaKhuyenMai=?";
    String DELETE_SQL = "DELETE FROM KHUYENMAI WHERE MaKhuyenMai=?";
    String SELECT_ALL_SQL = "SELECT * FROM KHUYENMAI";
    String SELECT_BY_ID_SQL = "SELECT * FROM KHUYENMAI WHERE MaKhuyenMai=?";

    @Override
    public void insert(KhuyenMai entity) {
        try {
            JdbcHelper.update(INSERT_SQL, entity.getMaKhuyenMai(),
                    entity.getTenKhuyenMai(),
                    entity.getGiaKhuyenMai());
        } catch (SQLException ex) {
            Logger.getLogger(KhuyenMaiDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(KhuyenMai entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getTenKhuyenMai(),
                    entity.getGiaKhuyenMai(),
                    entity.getMaKhuyenMai());
        } catch (SQLException ex) {
            Logger.getLogger(KhuyenMaiDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(String id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(KhuyenMaiDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<KhuyenMai> selectAll() {
        return (List<KhuyenMai>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public KhuyenMai selectById(String id) {
        List<KhuyenMai> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<KhuyenMai> selectBySql(String sql, Object... args) {
        List<KhuyenMai> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                KhuyenMai entity = new KhuyenMai();
                entity.setMaKhuyenMai(rs.getString("MaKhuyenMai"));
                entity.setTenKhuyenMai(rs.getString("TenKhuyenMai"));
                entity.setGiaKhuyenMai(rs.getDouble("GiaKhuyenMai"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
