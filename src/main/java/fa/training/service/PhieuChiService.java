package fa.training.service;

import java.util.List;

import fa.training.entity.PhieuChi;

public interface PhieuChiService {
	void save(PhieuChi phieuChi);
	void update(PhieuChi phieuChi);
	PhieuChi getById(String id);
	List<PhieuChi> getAllPhieuChi();

}
