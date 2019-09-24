package service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.MessageMapper;
import dao.VideoMapper;
import entity.Message;
import entity.MessageExample;
import entity.PageModel;
import entity.Video;
import entity.VideoExample;
import entity.VideoExample.Criteria;
import service.videoService;


/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月13日 下午3:54:58 
 		* @lastModified : 2018年7月13日 下午3:54:58 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Service
@Transactional
public class videoServiceImpl implements videoService{

	@Resource
	private VideoMapper vm=null;
	@Resource
	private MessageMapper mm=null;
	@Override
	public List<Video> GetList() {
		int count=vm.countByExample(null);
		
		
	   int a= (int)( Math.ceil(Math.random()*count));
	   int b= (int)( Math.ceil(Math.random()*count));
	   int c= (int)( Math.ceil(Math.random()*count));
	   while(a==b){
		   b= (int)( Math.ceil(Math.random()*count));
	   }
	   while(c==a||c==b){
		   c= (int)( Math.ceil(Math.random()*count));
	   }
		List<Video> li=vm.getVideoList2(a,b,c);
		System.out.println(li);
	   return li;
		 
	}

	@Override
	public PageModel<Video> GetPageList(int pageno) {

		int count=vm.countByExample(null);
		HashMap<String, Object> map=new HashMap<String, Object>();
      
		int start=(pageno-1)*12;
		map.put("start", start);
		map.put("pagesize",12);
		List<Video> list=vm.getVideoList(map);
		PageModel<Video> pm=new PageModel<Video>(pageno, 12, count,list);
		return pm;
	}

	@Override
	public Video GetDetai(int videoId) {
		return vm.selectByPrimaryKey(videoId);
		 
	}

	@Override
	public List<Video> GetEventList() {
		
		VideoExample ve=new VideoExample();
		Criteria c=ve.createCriteria();
		c.andVideoidLessThan(28);
		return  vm.selectByExample(ve);
		
	}

	@Override
	public boolean addMes(Message mes) {
	
		System.out.println("333333333333");

		MessageExample ve=new MessageExample();
		entity.MessageExample.Criteria c=ve.createCriteria();
		boolean flag= mm.insert(mes)>0;
		
		System.out.println(flag);
		return true;
		
	}

	@Override
	public List<Message> GetMes(int vid) {
		System.out.println("----------------------------------");
		List<Message> list=mm.GetMes(vid);
		System.out.println("**********************************");
		System.out.println(list);
		return list;
	}

}
