package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Answer;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface AnswerMapper {
    List<Answer> getAnswerInfos();
    Integer queryTotal();
}




