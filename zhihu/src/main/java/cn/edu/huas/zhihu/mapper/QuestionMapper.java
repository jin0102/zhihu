package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.pojo.Question;
import cn.edu.huas.zhihu.pojo.SelectAnswer;
import org.apache.ibatis.annotations.Mapper;
import cn.edu.huas.zhihu.pojo.ShowQuestion;

import java.util.List;
@Mapper
public interface QuestionMapper {

    Question getQuestionInfos(int question_id);

    List<ShowQuestion> getAllQuestionInfos(int user_id);
    Integer queryTotal();

}
