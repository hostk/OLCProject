package com.bestbright.onlie_course.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestbright.onlie_course.dto.Level_materialDTO;
import com.bestbright.onlie_course.model.Level_material;
import com.bestbright.onlie_course.repository.LevelMaterialRepository;


@Service
public class Level_materialService implements Level_materialInterface {
	@Autowired
	ServletContext serveletContext;
	@Autowired
	private LevelMaterialRepository levelMaterialRepository;
	
	public String UPLOAD_DIRECTORY="/images/";
	@Override
	public void saveLevelmaterial(Level_materialDTO levelmaterialdto) throws Exception {
		// TODO Auto-generated method stub
		if(levelmaterialdto!=null) {
			Level_material levelmaterial=new Level_material();
			String path=serveletContext.getRealPath(UPLOAD_DIRECTORY);
			String filename=levelmaterialdto.getFile().getOriginalFilename();
			System.out.println(path+""+filename);
			try {
				byte[] bytes=levelmaterialdto.getFile().getBytes();
				BufferedOutputStream out=new BufferedOutputStream(new FileOutputStream(new File(path+File.separator+filename)));
				out.write(bytes);
				out.flush();
				out.close();
			}catch(Exception e){
				throw e;
			}
			levelmaterial.setName(levelmaterialdto.getLevel_material_name());
			levelmaterial.setPhotopath(filename);
			levelmaterial.setType(levelmaterialdto.getType());
			levelmaterial.setLevel(levelmaterialdto.getLevel());
			levelMaterialRepository.save(levelmaterial);
		}
	}
	@Override
	public List<Level_material> getLevelmaterialByLevel(Long level_id) {
		// TODO Auto-generated method stub
		return levelMaterialRepository.getLevelmaterialByLevel(level_id);
	}
	@Override
	public Level_material getLevelMaterialByType(String type) {
		Level_material lm = levelMaterialRepository.getLevelmaterialByType(type);
		return lm;
	}
	
}
