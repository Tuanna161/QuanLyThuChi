package fa.training.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entity.PhieuChi;
import fa.training.repository.PhieuChiRepository;

@Service
public class PhieuChiServiceImpl implements PhieuChiService {
	
	
	
	@Autowired
	PhieuChiRepository phieuChiRepository;

	@Override
	public void save(PhieuChi phieuChi) {
		try {
			phieuChiRepository.save(phieuChi);
		} catch (Exception e) {
			System.out.println("Khong The Save");
		}
	}

	@Override
	public void update(PhieuChi phieuChi) {
		try {
			phieuChiRepository.save(phieuChi);
		} catch (Exception e) {
			System.out.println("Khong the update");
		}
	}

	@Override
	public PhieuChi getById(String id) {
		return phieuChiRepository.findById(id).orElse(null);
	}

	@Override
	public List<PhieuChi> getAllPhieuChi() {
		return phieuChiRepository.findAll();
	}	
	public List<PhieuChi> findByMa(String ma) {
		return phieuChiRepository.findByMa(ma);
	}
	

	
	
	
	

}
