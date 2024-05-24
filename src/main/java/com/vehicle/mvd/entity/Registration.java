package com.vehicle.mvd.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Registration {
	
	@Id
	private String reg_no;

	private String color;
	private String power;
	private String seating_n;
	private String owner_name;
	private String vehicle_make;
	private String vehicle_model;
	private String engine_no;
	private String chassis_no;
	private String vehicle_type;
	private String engine_cc;
	private String owner_mob;
	
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	public String getSeating_n() {
		return seating_n;
	}
	public void setSeating_n(String seating_n) {
		this.seating_n = seating_n;
	}
	public String getReg_no() {
		return reg_no;
	}
	public void setReg_no(String reg_no) {
		this.reg_no = reg_no;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getVehicle_make() {
		return vehicle_make;
	}
	public void setVehicle_make(String vehicle_make) {
		this.vehicle_make = vehicle_make;
	}
	public String getVehicle_model() {
		return vehicle_model;
	}
	public void setVehicle_model(String vehicle_model) {
		this.vehicle_model = vehicle_model;
	}
	public String getEngine_no() {
		return engine_no;
	}
	public void setEngine_no(String engine_no) {
		this.engine_no = engine_no;
	}
	public String getChassis_no() {
		return chassis_no;
	}
	public void setChassis_no(String chassis_no) {
		this.chassis_no = chassis_no;
	}
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public String getEngine_cc() {
		return engine_cc;
	}
	public void setEngine_cc(String engine_cc) {
		this.engine_cc = engine_cc;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getOwner_mob() {
		return owner_mob;
	}
	public void setOwner_mob(String owner_mob) {
		this.owner_mob = owner_mob;
	}
	

}
