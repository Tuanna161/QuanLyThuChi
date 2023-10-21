package fa.training.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.dto.TongHop;
import fa.training.entity.PhieuChi;
import fa.training.entity.PhieuThu;
import fa.training.service.PhieuChiServiceImpl;
import fa.training.service.PhieuThuServiceimpl;
import fa.training.util.SortNgayLapCT;

@Controller
@RequestMapping("/TongHop")
public class TongHopController {
	@Autowired
	PhieuThuServiceimpl phieuThuServiceimpl;

	@Autowired
	PhieuChiServiceImpl phieuChiServiceImpl;

	@GetMapping("/QuanLyTongHop")
	public String showList(Model model) {
		List<PhieuThu> listPhieuThu = phieuThuServiceimpl.getAllPhieuThu();
		List<PhieuChi> listPhieuChi = phieuChiServiceImpl.getAllPhieuChi();
		List<TongHop> listTongHop = new ArrayList<>();
		TongHop tongHop = null;
		for (PhieuThu phieuThu : listPhieuThu) {
			tongHop = new TongHop();
			tongHop.setSoCT(phieuThu.getChungTuSoThu());
			tongHop.setNgayThang(phieuThu.getNgayLapCT());
			tongHop.setTienThu(phieuThu.getSoTienDaThu());
			tongHop.setGhiChu(phieuThu.getGhiChu());
			listTongHop.add(tongHop);
		}
		for (PhieuChi phieuChi : listPhieuChi) {
			tongHop = new TongHop();
			tongHop.setSoCT(phieuChi.getChungTuSoChi());
			tongHop.setNgayThang(phieuChi.getNgayLapCT());
			tongHop.setTienChi(phieuChi.getTienDaChi());
			tongHop.setGhiChu(phieuChi.getGhiChu());
			listTongHop.add(tongHop);
		}
		Collections.sort(listTongHop, new SortNgayLapCT());
		int tonQuy = 0;
		// ton quy ban dau bang 0 cong tien thu tru tien chi
		int tonQuyBanDau = 0 + listTongHop.get(0).getTienThu() - listTongHop.get(0).getTienChi();
		listTongHop.get(0).setTonQuy(tonQuyBanDau);
		// set ton quy tu dong thu 2 hai tro di = ton quy truoc do + tien thu - tien chi
		for (int i = 1; i < listTongHop.size(); i++) {
			tonQuy = listTongHop.get(i - 1).getTonQuy() + listTongHop.get(i).getTienThu()
					- listTongHop.get(i).getTienChi();
			listTongHop.get(i).setTonQuy(tonQuy);
		}
		model.addAttribute("TongHop", listTongHop);
		return "tonghop/quanlytonghop";
	}
	@GetMapping("/SearchNam")
	public ResponseEntity<?> searchByNam(@RequestParam("year") String year, @RequestParam("month") String month){
		System.out.println(year);
		System.out.println(month);
		List<PhieuThu> listPhieuThu = phieuThuServiceimpl.getAllPhieuThu();
		List<PhieuChi> listPhieuChi = phieuChiServiceImpl.getAllPhieuChi();
		
//		 listPhieuThu = phieuThuServiceimpl.findByNam(selectedRadio);
//		 listPhieuChi = phieuChiServiceImpl.findByNam(selectedRadio);
		List<TongHop> listTongHop = new ArrayList<>();
		TongHop tongHop = null;
		for (PhieuThu phieuThu : listPhieuThu) {
			tongHop = new TongHop();
			tongHop.setSoCT(phieuThu.getChungTuSoThu());
			tongHop.setNgayThang(phieuThu.getNgayLapCT());
			tongHop.setTienThu(phieuThu.getSoTienDaThu());
			tongHop.setGhiChu(phieuThu.getGhiChu());
			listTongHop.add(tongHop);
		}
		for (PhieuChi phieuChi : listPhieuChi) {
			tongHop = new TongHop();
			tongHop.setSoCT(phieuChi.getChungTuSoChi());
			tongHop.setNgayThang(phieuChi.getNgayLapCT());
			tongHop.setTienChi(phieuChi.getTienDaChi());
			tongHop.setGhiChu(phieuChi.getGhiChu());
			listTongHop.add(tongHop);
		}
		Collections.sort(listTongHop, new SortNgayLapCT());
		int tonQuy = 0;
		// ton quy ban dau bang 0 cong tien thu tru tien chi
		int tonQuyBanDau = 0 + listTongHop.get(0).getTienThu() - listTongHop.get(0).getTienChi();
		listTongHop.get(0).setTonQuy(tonQuyBanDau);
		// set ton quy tu dong thu 2 hai tro di = ton quy truoc do + tien thu - tien chi
		for (int i = 1; i < listTongHop.size(); i++) {
			tonQuy = listTongHop.get(i - 1).getTonQuy() + listTongHop.get(i).getTienThu()
					- listTongHop.get(i).getTienChi();
			listTongHop.get(i).setTonQuy(tonQuy);
		}
		List<TongHop> listAfterSearch=new ArrayList<>();
		
		for (TongHop tongHop2 : listTongHop) {
			
			//Neu search ko co month
			if (month.equals("All")) {
				if(tongHop2.getNgayThang().getYear()==Integer.parseInt(year)) {
					listAfterSearch.add(tongHop2);
				}
			}else {
				//lay 
				if(tongHop2.getNgayThang().getYear()==Integer.parseInt(year)&&tongHop2.getNgayThang().getMonthValue()==Integer.parseInt(month)) {
					listAfterSearch.add(tongHop2);
				}
			}
		}
		return ResponseEntity.ok(listAfterSearch);
	}
}
