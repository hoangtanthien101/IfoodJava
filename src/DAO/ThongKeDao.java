package DAO;

import TienIch.JdbcHelper;
import entity.HoaDon;
import entity.HoaDonChiTiet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ThongKeDao {

    public List<HoaDonChiTiet> selectBySqlHDCT(String sql, Object... args) {
        List<HoaDonChiTiet> list = new ArrayList<>();
        try {
            ResultSet rs = JdbcHelper.Query(sql, args);
            while (rs.next()) {
                HoaDonChiTiet entity = new HoaDonChiTiet();
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

    public List<HoaDon> selectBySqlHD(String sql, Object... args) {
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

    public List<HoaDonChiTiet> selectByTheoMon(String tenMon) {
        String ten = "select H.MaHD,H.NgayTao,H.TongTien,H.MaBanAn,B.TenBanAn,NV.MaNV,Nv.HoTen,MAHDCT,HCT.MaMonAn,M.GiaTien,HCT.SoLuong,HCT.ThanhTien,M.TenMonAN,M.MaLoaiMonAn from HOADON H \n"
                + "Inner join HOADONCHITIET HCT on H.MaHD = HCT.MaHD\n"
                + "inner join MONAN M on HCT.MaMonAn = M.MaMonAn\n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner Join BANAN B on b.MaBanAn = H.MaBanAn\n"
                + "where M.TenMonAN like ?";
        return this.selectBySqlHDCT(ten, tenMon);
    }

    public List<HoaDon> selectAllHoTen(String tenNV) {
        String SelectHoTen = "select H.*,NV.HoTen,b.TenBanAn from HoaDon H \n"
                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
                + "inner join BANAN b on b.MaBanAn = h.MaBanAn\n"
                + "where HoTen like ?";
        return this.selectBySqlHD(SelectHoTen, tenNV);
    }

//    public List<HoaDon> selectAllNgayTao(String ngay) {
//        String SelectNgayTao = "select H.*,NV.HoTen,b.TenBanAn from HoaDon H\n"
//                + "inner join NHANVIEN NV on NV.MaNV = H.MaNV\n"
//                + "inner join BANAN b on b.MaBanAn = h.MaBanAn\n"
//                + "where ngaytao like ?";
//        return this.selectBySqlHD(SelectNgayTao, ngay);
//    }

    public List<HoaDon> selectAllNgayTao(String ngay) {
        String formattedNgay = convertNgayToSQLFormat(ngay);

        String SelectNgayTao = "SELECT H.*, NV.HoTen, b.TenBanAn FROM HoaDon H\n"
                + "INNER JOIN NHANVIEN NV ON NV.MaNV = H.MaNV\n"
                + "INNER JOIN BANAN b ON b.MaBanAn = H.MaBanAn\n"
                + "WHERE CONVERT(NVARCHAR, H.NgayTao, 23) = ?";

        return this.selectBySqlHD(SelectNgayTao, formattedNgay);
    }

    private String convertNgayToSQLFormat(String ngay) {
        try {
            SimpleDateFormat inputFormat = new SimpleDateFormat("dd-MM-yyyy");
            SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = inputFormat.parse(ngay);
            return outputFormat.format(date);
        } catch (ParseException e) {
            throw new RuntimeException("Error parsing date: " + ngay, e);
        }
    }
}
