package net.wanho.pojo.vo;

import net.wanho.pojo.Productcategory;

import java.io.Serializable;
import java.util.List;


public class ProductCategoryVO implements Serializable {

	private Productcategory pc;//分类
    private     List<ProductCategoryVO>   pcVOList;//子集分类的VO列表
	public Productcategory getPc() {
		return pc;
	}
	public void setPc(Productcategory pc) {
		this.pc = pc;
	}
	public List<ProductCategoryVO> getPcVOList() {
		return pcVOList;
	}
	public void setPcVOList(List<ProductCategoryVO> pcVOList) {
		this.pcVOList = pcVOList;
	}
	
	
    
    
    
 
    
}
