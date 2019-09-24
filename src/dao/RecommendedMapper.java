package dao;

import entity.Recommended;
import entity.RecommendedExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecommendedMapper {
    int countByExample(RecommendedExample example);

    int deleteByExample(RecommendedExample example);

    int deleteByPrimaryKey(Integer recommendedid);

    int insert(Recommended record);

    int insertSelective(Recommended record);

    List<Recommended> selectByExample(RecommendedExample example);

    Recommended selectByPrimaryKey(Integer recommendedid);

    int updateByExampleSelective(@Param("record") Recommended record, @Param("example") RecommendedExample example);

    int updateByExample(@Param("record") Recommended record, @Param("example") RecommendedExample example);

    int updateByPrimaryKeySelective(Recommended record);

    int updateByPrimaryKey(Recommended record);
}