package fa.training.dto;

import java.time.LocalDate;

public class TongHop {
	LocalDate ngayThang;
	String soCT;
	int tienThu;
	int tienChi;
	int tonQuy;
	String ghiChu;
	String theoNam;
	String chonNam;
	String theoThang;
	String chonThang;
	public TongHop() {
		super();
	}
	public TongHop( LocalDate ngayThang, String soCT,  int tienThu, int tienChi, int tonQuy,
			String ghiChu) {
		super();
		this.ngayThang = ngayThang;
		this.soCT = soCT;
		this.tienThu = tienThu;
		this.tienChi = tienChi;
		this.tonQuy = tonQuy;
		this.ghiChu = ghiChu;
	}
	
	public LocalDate getNgayThang() {
		return ngayThang;
	}
	public void setNgayThang(LocalDate ngayThang) {
		this.ngayThang = ngayThang;
	}
	public String getSoCT() {
		return soCT;
	}
	public void setSoCT(String soCT) {
		this.soCT = soCT;
	}
	
	public int getTienThu() {
		return tienThu;
	}
	public void setTienThu(int tienThu) {
		this.tienThu = tienThu;
	}
	public int getTienChi() {
		return tienChi;
	}
	public void setTienChi(int tienChi) {
		this.tienChi = tienChi;
	}
	public int getTonQuy() {
		return tonQuy;
	}
	public void setTonQuy(int tonQuy) {
		this.tonQuy = tonQuy;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	@Override
	public String toString() {
		return "TongHop [ ngayThang=" + ngayThang + ", soCT=" + soCT 
				+ ", tienThu=" + tienThu + ", tienChi=" + tienChi + ", tonQuy=" + tonQuy + ", ghiChu=" + ghiChu + "]";
	}
	
	
	

}
