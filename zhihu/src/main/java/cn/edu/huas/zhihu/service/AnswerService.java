package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.vo.ResultVo;

/**
* @author 123
* @description 针对表【answer】的数据库操作Service
* @createDate 2023-06-14 23:29:33
*/
public interface AnswerService {
    ResultVo getAnswerInfos(int page, int limit);
    ResultVo getFollowAnswerInfos(int page, int limit , int user_id);
    ResultVo getHotAnswerInfos(int page, int limit);
    ResultVo getCollectAnswerInfos(int page, int limit , int user_id);
    ResultVo getSelectAnswerInfos(int page, int limit , int question_id);
    ResultVo getSpecificAnswerInfos(int answer_id);
    ResultVo createAnswer(Answer answer);

}
