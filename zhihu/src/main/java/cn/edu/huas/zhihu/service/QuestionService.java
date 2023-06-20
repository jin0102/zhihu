package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.vo.ResultVo;

public interface QuestionService {
    ResultVo getQuestionInfos(int question_id);
    ResultVo getAllQuestionInfos(int page, int limit,int user_id);
}