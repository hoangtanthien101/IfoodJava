package DAO;

import TienIch.JdbcHelper;
import entity.LoaiMonAn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoaiMonAnDAO extends EduSysDAO<LoaiMonAn, Integer> {

    String INSERT_SQL = "INSERT INTO LOAIMONAN (TenLoaiMonAn) VALUES (?)";
    String UPDATE_SQL = "UPDATE LOAIMONAN SET TenLoaiMonAn=? WHERE MaLoaiMonAn=?";
    String DELETE_SQL = "DELETE FROM LOAIMONAN WHERE MaLoaiMonAn=?";
    String SELECT_ALL_SQL = "SELECT * FROM LOAIMONAN";
    String SELECT_BY_ID_SQL = "SELECT * FROM LOAIMONAN WHERE MaLoaiMonAn=?";

    @Override
    public void insert(LoaiMonAn entity) {
        try {
            JdbcHelper.update(INSERT_SQL, entity.getTenLoaiMonAn());
        } catch (SQLException ex) {
            Logger.getLogger(LoaiMonAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(LoaiMonAn entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getTenLoaiMonAn(),
                    entity.getMaLoaiMonAn());
        } catch (SQLException ex) {
            Logger.getLogger(LoaiMonAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(LoaiMonAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<LoaiMonAn> selectAll() {
        return (List<LoaiMonAn>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public LoaiMonAn selectById(Integer id) {
        List<LoaiMonAn> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<LoaiMonAn> selectBySql(String sql, Object... args) {
        List<LoaiMonAn> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                LoaiMonAn entity = new LoaiMonAn();
                entity.setMaLoaiMonAn(rs.getInt("MaLoaiMonAn"));
                entity.setTenLoaiMonAn(rs.getString("TenLoaiMonAn"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
