package fa.training.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.dto.PhieuThuDTO;
import fa.training.entity.PhieuThu;
import fa.training.service.PhieuThuServiceimpl;

@Controller
@RequestMapping("/PhieuThu")
public class PhieuThuController {
	@Autowired
	PhieuThuServiceimpl phieuThuServiceImpl;

	// Nhap Phieu Thu
	@GetMapping("/QuanLyPhieuThu")
	public String create(Model model) {
		model.addAttribute("PhieuThu", new PhieuThu());
		List<PhieuThu> listPhieuThu = phieuThuServiceImpl.getAllPhieuThu();
		model.addAttribute("PhieuThus", listPhieuThu);
		return "phieuthu/quanlyphieuthu";
	}

	// Them Phieu Thu vao DB
	@PostMapping("/ThemMoi")
	public String createChungTuThu(@ModelAttribute("PhieuThu")  PhieuThu phieuThu, 
			Model model) {
		String checkMaCT = phieuThu.getChungTuSoThu();
		PhieuThu checkPhieuThu = phieuThuServiceImpl.getById(checkMaCT);
		if (checkPhieuThu == null) {
			phieuThuServiceImpl.save(phieuThu);
			return "redirect:/PhieuThu/QuanLyPhieuThu";
		}else {
			model.addAttribute("maCT","Đã Tồn Tại Mã");
			model.addAttribute("PhieuThus", phieuThuServiceImpl.getAllPhieuThu());
			return "phieuthu/quanlyphieuthu";
		}

	}

	// Update Phieu Thu
	@GetMapping("/UpdateThu/{chungTuSoThu}")
	public String update(@PathVariable(name = "chungTuSoThu") String maChungTuSoThu, Model model) {
		PhieuThu phieuThu = phieuThuServiceImpl.getById(maChungTuSoThu);
		model.addAttribute("PhieuThu", phieuThu);
//		model.addAttribute("statusSubmit", true);
//		model.addAttribute("statusUpdate", false);
		model.addAttribute("PhieuThus", phieuThuServiceImpl.getAllPhieuThu());

		return "phieuthu/updatephieuthu";
	}

	@PostMapping("/UpdatePhieuThu")
	public String update1(@ModelAttribute("PhieuThu") PhieuThu phieuThu, Model model) {
		model.addAttribute("PhieuThu", phieuThuServiceImpl.getAllPhieuThu());
		model.addAttribute("updateDV", "Đã cập nhật thành công");
//		model.addAttribute("statusUpdate", false);
//		model.addAttribute("statusSubmit", true);
		try {
			phieuThuServiceImpl.update(phieuThu);
			return "redirect:/PhieuThu/QuanLyPhieuThu";
		} catch (Exception e) {
			return "ErrorPage";
		}
	}
	
	@PostMapping("/seach")
	public ResponseEntity<?> SeahByName(@RequestParam("selectedRadio") String selectedRadio){
		List<PhieuThu> listByName=phieuThuServiceImpl.findByName(selectedRadio);
		 DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	        List<PhieuThuDTO> phieuThuDTOs = new ArrayList<>();

	        for (PhieuThu phieuthu : listByName) {
	            LocalDate NgayLapCT = phieuthu.getNgayLapCT();
	            String formattedNgayLapDate = NgayLapCT.format(outputFormatter);
	            PhieuThuDTO phieuThuDTO = new PhieuThuDTO();
	            phieuThuDTO.setChungTuSoThu(phieuthu.getChungTuSoThu());
	            phieuThuDTO.setNgayLapCT(formattedNgayLapDate);
	            phieuThuDTO.setTenKH(phieuthu.getTenKH());
	            phieuThuDTO.setMaKH(phieuthu.getMaKH());
	            phieuThuDTO.setDiaChi(phieuthu.getDiaChi());
	            phieuThuDTO.setNoiDungPhieuThu(phieuthu.getNoiDungPhieuThu());
	            phieuThuDTO.setThanhTienSauThue(phieuthu.getThanhTienSauThue());
	            phieuThuDTO.setSoTienDaThu(phieuthu.getSoTienDaThu());
	            phieuThuDTO.setSoTienConNo(phieuthu.getSoTienConNo());
	            phieuThuDTO.setGhiChu(phieuthu.getGhiChu());
	            phieuThuDTO.setTuHS(phieuthu.isTuHS());
	            phieuThuDTOs.add(phieuThuDTO);
	        }
	        return ResponseEntity.ok(phieuThuDTOs);
	}

}
