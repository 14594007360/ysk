package com.ysk.vo;

import java.util.Date;

/**
 * 预订信息表
 * @author Admin
 *
 */
public class Reservation {
	private Integer res_id;			//预订表id
	private String res_name;		//预订名称
	private String res_explain;		//预订描述
	private Double res_price;		//预订价格
	private Integer res_num;		//空位数
	private Integer res_typeId;		//预订类型id
	private Integer res_state;		//预订状态，0 为 还有空位，1 为 已满
	private String res_address;		//预订地址
	private Date res_startTime;		//预订开始时间
	private Date res_endTime;		//预订结束时间
	private Double res_realPrice;	//预订优惠价
	private String res_picPath;		//图片路径
	
	
	/**
	 * 构造方法
	 */
	public Reservation() {
	
	}
	
	public Reservation(Integer res_id, String res_name, String res_explain,
			Double res_price, Integer res_num, Integer res_typeId,
			Integer res_state, String res_address, Date res_startTime,
			Date res_endTime, Double res_realPrice, String res_picPath) {
		this.res_id = res_id;
		this.res_name = res_name;
		this.res_explain = res_explain;
		this.res_price = res_price;
		this.res_num = res_num;
		this.res_typeId = res_typeId;
		this.res_state = res_state;
		this.res_address = res_address;
		this.res_startTime = res_startTime;
		this.res_endTime = res_endTime;
		this.res_realPrice = res_realPrice;
		this.res_picPath = res_picPath;
	}

	/**
	 * getter,setter 方法
	 * @return
	 */
	public Integer getRes_id() {
		return res_id;
	}
	public void setRes_id(Integer res_id) {
		this.res_id = res_id;
	}
	public String getRes_name() {
		return res_name;
	}
	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}
	public String getRes_explain() {
		return res_explain;
	}
	public void setRes_explain(String res_explain) {
		this.res_explain = res_explain;
	}
	public Double getRes_price() {
		return res_price;
	}
	public void setRes_price(Double res_price) {
		this.res_price = res_price;
	}
	public Integer getRes_num() {
		return res_num;
	}
	public void setRes_num(Integer res_num) {
		this.res_num = res_num;
	}
	public Integer getRes_typeId() {
		return res_typeId;
	}
	public void setRes_typeId(Integer res_typeId) {
		this.res_typeId = res_typeId;
	}
	public Integer getRes_state() {
		return res_state;
	}
	public void setRes_state(Integer res_state) {
		this.res_state = res_state;
	}
	public String getRes_address() {
		return res_address;
	}
	public void setRes_address(String res_address) {
		this.res_address = res_address;
	}
	public Date getRes_startTime() {
		return res_startTime;
	}
	public void setRes_startTime(Date res_startTime) {
		this.res_startTime = res_startTime;
	}
	public Date getRes_endTime() {
		return res_endTime;
	}
	public void setRes_endTime(Date res_endTime) {
		this.res_endTime = res_endTime;
	}
	public Double getRes_realPrice() {
		return res_realPrice;
	}
	public void setRes_realPrice(Double res_realPrice) {
		this.res_realPrice = res_realPrice;
	}
	public String getRes_picPath() {
		return res_picPath;
	}
	public void setRes_picPath(String res_picPath) {
		this.res_picPath = res_picPath;
	}
}
