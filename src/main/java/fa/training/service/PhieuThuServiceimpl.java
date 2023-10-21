package fa.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import fa.training.entity.PhieuThu;
import fa.training.repository.PhieuThuRepository;

@Service
public class PhieuThuServiceimpl implements PhieuThuService{

	
	
	@Autowired
	PhieuThuRepository phieuThuRepository;
		
	@Override
	public void save(PhieuThu phieuThu) { 
		try {
			phieuThuRepository.save(phieuThu);
		} catch (Exception e) {
			System.out.println("Khong the save");
		}
	}

	@Override
	public void update(PhieuThu phieuThu) {
		try {
			phieuThuRepository.save(phieuThu);
		} catch (Exception e) {
			System.out.println("Khong the update");
		}
	}
	@Override
	public PhieuThu getById(String id) {
		return phieuThuRepository.findById(id).orElse(null);
	}

	@Override
	public List<PhieuThu> getAllPhieuThu() {
		return phieuThuRepository.findAll();
	}


	public List<PhieuThu> findByName(String ten) {
		return phieuThuRepository.findByName(ten);
	}
	
	
	
	

	
	
	

}
