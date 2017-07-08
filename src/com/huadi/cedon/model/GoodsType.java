package com.huadi.cedon.model;
import java.util.Map;

public class GoodsType {
	public static Map[] typeMap = new Map[200];
	public void genType(){
		typeMap[0].put(0, "水杯");
		typeMap[1].put(1, "上衣");
		typeMap[2].put(2, "下装");
		typeMap[3].put(3, "小裙子");
		typeMap[4].put(4, "外套");
		typeMap[5].put(5, "cosplay");
		typeMap[6].put(6, "配件");
		typeMap[7].put(7, "包包");
		typeMap[8].put(8, "居家宅品");
		typeMap[9].put(9, "游戏专区");
		typeMap[10].put(10, "办公文具");
		typeMap[11].put(11, "数码周边");
	}
}