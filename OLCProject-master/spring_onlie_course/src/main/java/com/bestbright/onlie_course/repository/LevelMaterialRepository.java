package com.bestbright.onlie_course.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bestbright.onlie_course.model.Level_material;
@Repository
public interface LevelMaterialRepository extends JpaRepository<Level_material,Long> {

	@Query("SELECT lM from Level_material lM LEFT JOIN Level l on lM.level.level_id=l.level_id where lM.level.level_id=:levelId")
	public List<Level_material> getLevelmaterialByLevel(@Param("levelId")Long id);
	
<<<<<<< HEAD
	
=======
>>>>>>> 322525d2f4c9b6ac27de5fe825cdbbb1d8fc7ee6
	@Query("SELECT lM from Level_material lM where lM.type=:type")
	public Level_material getLevelmaterialByType(@Param("type")String type);
}
