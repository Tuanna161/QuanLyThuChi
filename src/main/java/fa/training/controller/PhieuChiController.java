package fa.training.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.dto.PhieuChiDTO;
import fa.training.entity.PhieuChi;
import fa.training.service.PhieuChiServiceImpl;

@Controller
@RequestMapping("/PhieuChi")
public class PhieuChiController {
	@Autowired
	PhieuChiServiceImpl phieuChiServiceImpl;
	
	// Nhap Phieu Chi
	@GetMapping("/QuanLyPhieuChi") 
	public String create(Model model) {
		model.addAttribute("PhieuChi", new PhieuChi());
		model.addAttribute("PhieuChis", phieuChiServiceImpl.getAllPhieuChi());
//		model.addAttribute("statusupdate", true);
		return "phieuchi/quanlyphieuchi";
	}
	
	@PostMapping("/ThemMoi")
	public String createChungTuChi(@ModelAttribute("PhieuChi") PhieuChi phieuChi, Model model) {
		String checkMaCT = phieuChi.getChungTuSoChi();
		PhieuChi checkPhieuChi = phieuChiServiceImpl.getById(checkMaCT);
		if(checkPhieuChi == null) {
			phieuChiServiceImpl.save(phieuChi);
			return "redirect:/PhieuChi/QuanLyPhieuChi";
		}else {
			model.addAttribute("maCTTonTai",true);
			model.addAttribute("PhieuChis",phieuChiServiceImpl.getAllPhieuChi());
			return "phieuchi/quanlyphieuchi";
		}
		

	}
	//Update Phieu Thu
		@GetMapping("/UpdateChi/{chungTuSoChi}")
		public String update(@PathVariable(name = "chungTuSoChi") String maChungTuSoThu, Model model) {
			PhieuChi phieuChi = phieuChiServiceImpl.getById(maChungTuSoThu);
			model.addAttribute("PhieuChi", phieuChi);
//			model.addAttribute("statusSubmit", true);
//			model.addAttribute("statusUpdate", false);
			model.addAttribute("PhieuChis", phieuChiServiceImpl.getAllPhieuChi());

			return "phieuchi/updatephieuchi";
		}
		
		@PostMapping("/UpdatePhieuChi")
		public String update1(@ModelAttribute("PhieuChi") PhieuChi phieuChi, Model model) {
			model.addAttribute("PhieuChi", phieuChiServiceImpl.getAllPhieuChi());
			model.addAttribute("updateDV", "Đã cập nhật thành công");
//			model.addAttribute("statusUpdate", false);
//			model.addAttribute("statusSubmit", true);
			try {
				phieuChiServiceImpl.update(phieuChi);
				return "redirect:/PhieuChi/QuanLyPhieuChi";
			} catch (Exception e) {
				return "ErrorPage";
			}
	}
		@PostMapping("/Search")
		public ResponseEntity<?> searchByName(@RequestParam("selectedRadio") String selectedRadio){
			List<PhieuChi> listByName = phieuChiServiceImpl.findByMa(selectedRadio);
			DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
			List<PhieuChiDTO> phieuChiDTOs = new ArrayList<>();
			
		   for (PhieuChi phieuChi : listByName) {
			   LocalDate NgayLapDate = phieuChi.getNgayLapCT();
			   String formattedNgayLapDate = NgayLapDate.format(outputFormatter);
			   PhieuChiDTO phieuChiDTO = new PhieuChiDTO();
			   phieuChiDTO.setChungTuSoChi(phieuChi.getChungTuSoChi());
			   phieuChiDTO.setMaNV(phieuChi.getMaNV());
			   phieuChiDTO.setNgayLapCT(formattedNgayLapDate);
			   phieuChiDTO.setNhaCungCap(phieuChi.getNhaCungCap());
			   phieuChiDTO.setDaiDien(phieuChi.getDaiDien());
			   phieuChiDTO.setDiaChi(phieuChi.getDiaChi());
			   phieuChiDTO.setThanhTien(phieuChi.getThanhTien());
			   phieuChiDTO.setTienDaChi(phieuChi.getTienDaChi());
			   phieuChiDTO.setTienConNo(phieuChi.getTienConNo());
			   phieuChiDTO.setGhiChu(phieuChi.getGhiChu());
			   phieuChiDTO.setLaChiLuong(phieuChi.isLaChiLuong());
			   
			   phieuChiDTOs.add(phieuChiDTO);
		}
		   return ResponseEntity.ok(phieuChiDTOs);
		}
		
}
