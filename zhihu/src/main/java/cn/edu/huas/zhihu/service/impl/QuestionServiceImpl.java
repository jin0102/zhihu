package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.mapper.QuestionMapper;
import cn.edu.huas.zhihu.pojo.Question;
import cn.edu.huas.zhihu.pojo.SelectAnswer;
import cn.edu.huas.zhihu.pojo.ShowQuestion;
import cn.edu.huas.zhihu.service.QuestionService;
import cn.edu.huas.zhihu.vo.ResultVo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public ResultVo getAllQuestionInfos(int page, int limit,int user_id) {
        PageHelper.startPage(page,limit);
        List<ShowQuestion> questioninfos = questionMapper.getAllQuestionInfos(user_id);
        Integer count = questionMapper.queryTotal();
        return ResultVo.getSuccessVo("success",questioninfos,count);
    }
}
