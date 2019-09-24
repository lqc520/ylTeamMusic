package dao;

import entity.MusicType;
import entity.MusicTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MusicTypeMapper {
    int countByExample(MusicTypeExample example);

    int deleteByExample(MusicTypeExample example);

    int deleteByPrimaryKey(Integer musictypeid);

    int insert(MusicType record);

    int insertSelective(MusicType record);

    List<MusicType> selectByExample(MusicTypeExample example);

    MusicType selectByPrimaryKey(Integer musictypeid);

    int updateByExampleSelective(@Param("record") MusicType record, @Param("example") MusicTypeExample example);

    int updateByExample(@Param("record") MusicType record, @Param("example") MusicTypeExample example);

    int updateByPrimaryKeySelective(MusicType record);

    int updateByPrimaryKey(MusicType record);
}