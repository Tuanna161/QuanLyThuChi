package fa.training.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import fa.training.entity.PhieuChi;

@Repository
public interface PhieuChiRepository extends JpaRepository<PhieuChi, String>{
	@Query("select  pc From PhieuChi pc where pc.chungTuSoChi like %:maCT%")
	List<PhieuChi> findByMa(@Param ("maCT") String maCT);
	

}
