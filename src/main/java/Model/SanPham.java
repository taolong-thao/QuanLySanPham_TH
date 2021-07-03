package Model;

/**
 *
 * @author dfean
 */
public class SanPham {
    private int maSp;
    private String tenSp;
    private String moTa;
    private Long giaBan;
    private int soLuong;

    public SanPham() {
    }

    public SanPham(int maSp, String tenSp, String moTa, Long giaBan, int soLuong) {
        this.maSp = maSp;
        this.tenSp = tenSp;
        this.moTa = moTa;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
    }

    public int getMaSp() {
        return maSp;
    }

    public void setMaSp(int maSp) {
        this.maSp = maSp;
    }

    public String getTenSp() {
        return tenSp;
    }

    public void setTenSp(String tenSp) {
        this.tenSp = tenSp;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Long getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(Long giaBan) {
        this.giaBan = giaBan;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    @Override
    public String toString() {
        return "SanPham{" +
                "maSp='" + maSp + '\'' +
                ", tenSp='" + tenSp + '\'' +
                ", moTa='" + moTa + '\'' +
                ", giaBan=" + giaBan +
                ", soLuong=" + soLuong +
                '}';
    }
}
