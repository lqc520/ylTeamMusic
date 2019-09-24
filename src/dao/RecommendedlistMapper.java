package dao;

import entity.Recommendedlist;
import entity.RecommendedlistExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecommendedlistMapper {
    int countByExample(RecommendedlistExample example);

    int deleteByExample(RecommendedlistExample example);

    int deleteByPrimaryKey(Integer relistid);

    int insert(Recommendedlist record);

    int insertSelective(Recommendedlist record);

    List<Recommendedlist> selectByExample(RecommendedlistExample example);

    Recommendedlist selectByPrimaryKey(Integer relistid);

    int updateByExampleSelective(@Param("record") Recommendedlist record, @Param("example") RecommendedlistExample example);

    int updateByExample(@Param("record") Recommendedlist record, @Param("example") RecommendedlistExample example);

    int updateByPrimaryKeySelective(Recommendedlist record);

    int updateByPrimaryKey(Recommendedlist record);
}