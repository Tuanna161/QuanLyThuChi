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
@Table(name = "PhieuThu")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PhieuThu {
	@Id
	String chungTuSoThu;

	@Column(name = "NgayLapCT")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	LocalDate ngayLapCT;
	String tenKH;
	String maKH;
	boolean tuHS;
	String thang;
	String nam;
	String diaChi;
	String noiDungPhieuThu;
	int thanhTienSauThue;
	int soTienDaThu;
	int soTienConNo;
	String ghiChu;
	boolean daThuTien;
	
	
}
