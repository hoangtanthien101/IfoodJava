package DAO;

import TienIch.JdbcHelper;
import entity.BanAn;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BanAnDAO extends EduSysDAO<BanAn, Integer> {

    String INSERT_SQL = "INSERT INTO BANAN (TenBanAn,TrangThai) VALUES (?, ?)";
    String UPDATE_SQL = "UPDATE BANAN SET TenBanAn=?, TrangThai=? WHERE MaBanAn=?";
    String DELETE_SQL = "DELETE FROM BANAN WHERE MaBanAn=?";
    String SELECT_ALL_SQL = "SELECT * FROM BANAN";
    String SELECT_BY_ID_SQL = "SELECT * FROM BANAN WHERE MaBanAn=?";

    @Override
    public void insert(BanAn entity) {
        try {
            JdbcHelper.update(INSERT_SQL, entity.getTenBanAn(),
                    entity.isTrangThai());
        } catch (SQLException ex) {
            Logger.getLogger(BanAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(BanAn entity) {
        try {
            JdbcHelper.update(UPDATE_SQL, entity.getTenBanAn(),
                    entity.isTrangThai(),
                    entity.getMaBanAn());
        } catch (SQLException ex) {
            Logger.getLogger(BanAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            JdbcHelper.update(DELETE_SQL, id);
        } catch (SQLException ex) {
            Logger.getLogger(BanAnDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<BanAn> selectAll() {
        return (List<BanAn>) this.selectBySql(SELECT_ALL_SQL);
    }

    @Override
    public BanAn selectById(Integer id) {
        List<BanAn> list = this.selectBySql(SELECT_BY_ID_SQL, id);
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override
    public List<BanAn> selectBySql(String sql, Object... args) {
        List<BanAn> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                BanAn entity = new BanAn();
                entity.setMaBanAn(rs.getInt("MaBanAn"));
                entity.setTenBanAn(rs.getString("TenBanAn"));
                entity.setTrangThai(rs.getBoolean("TrangThai"));
                list.add(entity);
            }
            rs.getStatement().getConnection().close();
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void updateTrangThai(int maban) {
        String trangThai = "UPDATE BANAN SET TrangThai=0 WHERE MaBanAn=?";
        try {
            JdbcHelper.update(trangThai, maban);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateTrangThai1(int maban) {
        String trangThai = "UPDATE BANAN SET TrangThai=1 WHERE MaBanAn=?";
        try {
            JdbcHelper.update(trangThai, maban);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean isBanAnCoNguoiDung(int maBanAn) {
        String sql = "SELECT * FROM BANAN WHERE MaBanAn = ? AND TrangThai = 0";
        try {
            ResultSet rs = JdbcHelper.Query(sql, maBanAn);
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    
}
