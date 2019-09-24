package service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.MusicMapper;
import dao.MusicTypeMapper;
import entity.Music;
import entity.MusicExample;
import entity.MusicExample.Criteria;
import entity.MusicType;
import entity.PageModel;
import service.musicGenresService;
/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 下午2:21:20 
 		* @lastModified : 2018年7月11日 下午2:21:20 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Service
@Transactional
public class musicGenresServiceImpl implements musicGenresService{

	@Resource
	private MusicTypeMapper mty=null;
	@Resource
	private MusicMapper musicmapper=null;
	
	//获取音乐类别的列表
	@Override
	public List<MusicType> GetTypeList() {
		List<MusicType> list=mty.selectByExample(null);
		return list;
	}

	//获取分类分页下的音乐列表
	@Override
	public PageModel<Music> GetPageList(int musictypeid, int pageno) {
		
		HashMap<String, Object> map=new HashMap<String, Object>();
		int count=0;
		
		if(musictypeid!=0){
			map.put("musictypeid", musictypeid);
			MusicExample me=new MusicExample();
			Criteria c=me.createCriteria();
			c.andMusictypeidEqualTo(musictypeid);
			count=musicmapper.countByExample(me);
		}else{
			count=musicmapper.countByExample(null);
		}
		if(pageno>count){
			pageno=count;
		}
		if(pageno<=1){
			pageno=1;
		}
		
		
		int start=(pageno-1)*18;
		
		map.put("start", start);
		map.put("pagesize", 18);
		List<Music> list=musicmapper.findPageList(map);
		
		PageModel<Music> pm=new PageModel<Music>(pageno, 18, count,list);
		return pm;
	}

	

}
