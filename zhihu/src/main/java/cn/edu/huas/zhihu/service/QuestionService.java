package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.vo.ResultVo;

public interface QuestionService {
    ResultVo getQuestionInfos(int page, int limit);
}