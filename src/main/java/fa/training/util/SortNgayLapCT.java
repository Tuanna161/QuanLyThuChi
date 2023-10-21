package fa.training.util;

import java.util.Comparator;

import fa.training.dto.TongHop;

public class SortNgayLapCT implements Comparator<TongHop>{

	@Override
	public int compare(TongHop o1, TongHop o2) {
		// TODO Auto-generated method stub
		return o1.getNgayThang().compareTo(o2.getNgayThang());
	}
	

}
