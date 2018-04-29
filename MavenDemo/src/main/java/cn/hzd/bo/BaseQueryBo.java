package cn.hzd.bo;

public class BaseQueryBo {
	/**
	 * 页面索引
	 */
	protected int pageIndex = 0;
	/**
	 * 页面大小
	 */
	protected int pageSize = 15;
	/**
	 * 排序字段
	 */
	protected String orderBy;

	public int getPageIndex() {
		return this.pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageSize() {
		return this.pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getOrderBy() {
		return this.orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

}