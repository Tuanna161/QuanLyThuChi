package fa.training.service;

import java.util.List;

import fa.training.entity.PhieuThu;

public interface PhieuThuService {
	 void save(PhieuThu phieuThu);
	 void update(PhieuThu phieuThu);
	 PhieuThu getById(String id);
	 List<PhieuThu> getAllPhieuThu();
	List<PhieuThu> findByName( String ten);

}
