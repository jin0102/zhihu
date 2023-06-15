package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Answer;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @author 123
* @description 针对表【answer】的数据库操作Mapper
* @createDate 2023-06-14 23:29:33
* @Entity cn.edu.huas.zhihu.pojo.Answer
*/
@Mapper
public interface AnswerMapper extends BaseMapper<Answer> {
    List<Answer> getAnswerInfos();

    Integer queryTotal();
}




