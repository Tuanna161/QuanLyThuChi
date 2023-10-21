package fa.training.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import fa.training.entity.PhieuChi;
import fa.training.entity.PhieuThu;


@Repository
public interface PhieuThuRepository extends JpaRepository<PhieuThu, String> {
	@Query("select pt From PhieuThu pt where pt.chungTuSoThu like %:maCT%")
	List<PhieuThu> findByName(@Param ("maCT") String maCT);
	
}