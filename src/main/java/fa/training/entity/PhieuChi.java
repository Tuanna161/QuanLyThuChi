package fa.training.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "PhieuChi")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PhieuChi {
	
	@Id
	String chungTuSoChi;
	@Column(name = "ngayLapCT")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	LocalDate ngayLapCT;
	boolean laChiLuong;
	String maNV;	
	String nhaCungCap;
	String daiDien;
	String diaChi;
	String thang;
	String nam;
	int thanhTien;
	int tienDaChi;
	int tienConNo;
	String ghiChu;
	
	
	

	
	
}
