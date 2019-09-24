package entity;

import java.util.ArrayList;
import java.util.List;

/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 下午2:21:52 
 		* @lastModified : 2018年7月11日 下午2:21:52 
 		* @version : ylTeamMusic 1.0 
 		* @param <T> 
 	*/  
public class PageModel<T> {

	private int pageno = 1;
	private int pagesize = 5;
	private int totalRecord;
	private int totalPage;
	private int typeid;
		
	
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	private List<T> data = new ArrayList<T>();
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public int getTotalPage() {
		if(totalRecord%pagesize==0){ 
			totalPage = totalRecord/pagesize;
		}else{ 
			totalPage = totalRecord/pagesize+1;
		}
		return totalPage;
	}
	public PageModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PageModel(int pageno, int pagesize, int totalRecord, List<T> data) {
		super();
		this.pageno = pageno;
		this.pagesize = pagesize;
		this.totalRecord = totalRecord;
		this.data = data;
	}
	
	
	
}
