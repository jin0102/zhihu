package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.mapper.QuestionMapper;
import cn.edu.huas.zhihu.pojo.Question;
import cn.edu.huas.zhihu.pojo.SelectAnswer;
import cn.edu.huas.zhihu.service.QuestionService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionServiceImpl implements QuestionService {
    @Autowired
    QuestionMapper questionMapper;

    @Override
    public ResultVo getQuestionInfos(int question_id) {
        Question getquestioninfos = questionMapper.getQuestionInfos(question_id);
        Integer count = questionMapper.queryTotal();
        return ResultVo.getSuccessVo("success",getquestioninfos,count);
    }
}
