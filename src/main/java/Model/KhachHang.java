package Model;

/**
 *
 * @author dfean
 */
public class KhachHang {
    private int maKh;
    private String tenKh;
    private String diaChi;
    private String SDT;
    private String ngSinh;
    private int taiKhoan;

<<<<<<< HEAD
    public KhachHang(int maKh, String tenKh, String diaChi, String SDT, String ngSinh, String taiKhoan) {
=======
    public KhachHang(String tenKh, String diaChi, String SDT, String ngSinh, int taiKhoan) {
>>>>>>> origin/main
        this.maKh = maKh;
        this.tenKh = tenKh;
        this.diaChi = diaChi;
        this.SDT = SDT;
        this.ngSinh = ngSinh;
        this.taiKhoan = taiKhoan;
    }

    public KhachHang() {
    }

    public int getMaKh() {
        return maKh;
    }

<<<<<<< HEAD
    public void setMaKh(int idKh) {
        this.maKh = idKh;
=======
    public void setMaKh(int maKh) {
        this.maKh = maKh;
>>>>>>> origin/main
    }

    public String getTenKh() {
        return tenKh;
    }

    public void setTenKh(String tenKh) {
        this.tenKh = tenKh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getNgSinh() {
        return ngSinh;
    }

    public void setNgSinh(String ngSinh) {
        this.ngSinh = ngSinh;
    }

    public int getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(int taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    @Override
    public String toString() {
        return "KhachHang{" +
                "maKh='" + maKh + '\'' +
                ", tenKh='" + tenKh + '\'' +
                ", diaChi='" + diaChi + '\'' +
                ", SDT='" + SDT + '\'' +
                ", ngSinh='" + ngSinh + '\'' +
                ", taiKhoan='" + taiKhoan + '\'' +
                '}';
    }
}
