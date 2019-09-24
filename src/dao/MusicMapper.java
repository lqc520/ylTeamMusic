package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import entity.Music;
import entity.MusicExample;

public interface MusicMapper {
    int countByExample(MusicExample example);

    int deleteByExample(MusicExample example);

    int deleteByPrimaryKey(Integer musicid);

    int insert(Music record);

    int insertSelective(Music record);

    List<Music> selectByExample(MusicExample example);

    Music selectByPrimaryKey(Integer musicid);

    int updateByExampleSelective(@Param("record") Music record, @Param("example") MusicExample example);

    int updateByExample(@Param("record") Music record, @Param("example") MusicExample example);

    int updateByPrimaryKeySelective(Music record);

    int updateByPrimaryKey(Music record);
    
    List<Map<String, Object>> selectRodomMusics();
    
    List<Map<String, Object>> selectNewSongs();
    
    List<Map<String, Object>> selectTopSongs();
    
    List<Map<String, Object>> selectTopSinger();
    
    List<Music> findPageList(HashMap<String, Object> map);
    
    List<Map<String, Object>> selectAllSong();
}