package com.bestbright.onlie_course.dto;

import org.springframework.web.multipart.MultipartFile;

import com.bestbright.onlie_course.model.Level;

public class Level_materialDTO {
	private Long Level_material_id;
	private String Level_material_name;
	private String type;
	private String photopath;
	private MultipartFile file;
	private Level level;
	
	
	public Long getLevel_material_id() {
		return Level_material_id;
	}
	public void setLevel_material_id(Long level_material_id) {
		Level_material_id = level_material_id;
	}
	public String getLevel_material_name() {
		return Level_material_name;
	}
	public void setLevel_material_name(String level_material_name) {
		Level_material_name = level_material_name;
	}
	
	public String getPhotopath() {
		return photopath;
	}
	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Level getLevel() {
		return level;
	}
	public void setLevel(Level level) {
		this.level = level;
	} 
	
}
