package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.pojo.AnswerBean;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface AnswerMapper {
    List<AnswerBean> getAnswerInfos();
    List<AnswerBean> getFollowAnswerInfos(int user_id);
    List<AnswerBean> getHotAnswerInfos();
    List<AnswerBean> getCollectAnswerInfos(int user_id);
    Integer queryTotal();
}




