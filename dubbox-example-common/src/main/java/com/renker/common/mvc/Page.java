package com.renker.common.mvc;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
public class Page<T> implements Serializable{
	private static final long serialVersionUID = 1L;
	/* 当前页数  */
	private Integer page = 1;
	/* 第页显示条数 */
	private Integer pageSize = 10;
	/* 总页数 */
	private Integer totalPages = 0;
	/* 总记录条数 */
	private Integer totalCount = 0;
	/* 结果集 */
	private List<T> results = new ArrayList<T>();
	
	/**
	 * 排序 例如 name.asc,age.desc
	 */
	private String orders;
	
	public String getOrders() {
		return orders;
	}
	public void setOrders(String orders) {
		this.orders = orders;
	}
	public Page() {
		super();
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getResults() {
		return results;
	}
	public void setResults(List<T> results) {
		this.results = results;
	}
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	
	public Integer getTotalPages() {
		return (int)Math.ceil(Double.parseDouble(totalCount.toString())/pageSize);
	}
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageIndex(){
		return this.page >0?(this.page-1)*this.pageSize:0;
	}
	
	public PageBounds toPageBounds(){
		if(this.orders != null && !this.orders.equals("")){
			return new PageBounds(this.page, this.pageSize,Order.formString(this.orders));
		}else{
			return new PageBounds(this.page, this.pageSize);
		}
		
	}
	
	public Page<T> load(PageList<T> pageLIst){
		Page<T> result = new Page<T>();
		result.setResults(pageLIst);
		result.setPage(pageLIst.getPaginator().getPage());
		result.setTotalCount(pageLIst.getPaginator().getTotalCount());
		result.setPageSize(pageLIst.getPaginator().getLimit());
		return result;
	}
	
}
