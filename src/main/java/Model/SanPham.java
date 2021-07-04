package Model;

/**
 *
 * @author dfean
 */
public class SanPham {
<<<<<<< HEAD
    private int maKh;
=======
    private int maSp;
>>>>>>> origin/main
    private String tenSp;
    private String moTa;
    private Long giaBan;
    private int soLuong;

    public SanPham() {
    }

<<<<<<< HEAD
    public SanPham(int maKh, String tenSp, String moTa, Long giaBan, int soLuong) {
        this.maKh = maKh;
=======
    public SanPham(int maSp, String tenSp, String moTa, Long giaBan, int soLuong) {
        this.maSp = maSp;
>>>>>>> origin/main
        this.tenSp = tenSp;
        this.moTa = moTa;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
    }

    public int getMaSp() {
<<<<<<< HEAD
        return maKh;
    }

    public void setMaSp(int idSp) {
        this.maKh = idSp;
=======
        return maSp;
    }

    public void setMaSp(int maSp) {
        this.maSp = maSp;
>>>>>>> origin/main
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
                "maSp='" + maKh + '\'' +
                ", tenSp='" + tenSp + '\'' +
                ", moTa='" + moTa + '\'' +
                ", giaBan=" + giaBan +
                ", soLuong=" + soLuong +
                '}';
    }
}
