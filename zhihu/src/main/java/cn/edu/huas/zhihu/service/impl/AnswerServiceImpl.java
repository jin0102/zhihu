package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.pojo.AnswerBean;
import cn.edu.huas.zhihu.pojo.Question;
import cn.edu.huas.zhihu.pojo.SelectAnswer;
import cn.edu.huas.zhihu.vo.ResultVo;
import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.service.AnswerService;
import cn.edu.huas.zhihu.mapper.AnswerMapper;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
* @author 123
* @description 针对表【answer】的数据库操作Service实现
* @createDate 2023-06-14 23:29:33
*/
@Service
public class AnswerServiceImpl implements AnswerService{
    @Autowired
    AnswerMapper answerMapper;

    @Override
    public ResultVo getAnswerInfos(int page, int limit) {
        PageHelper.startPage(page,limit);
        List<AnswerBean> answerinfos = answerMapper.getAnswerInfos();

        Integer count = answerMapper.queryTotal();
        return ResultVo.getSuccessVo("success",answerinfos,count);
    }

    @Override
    public ResultVo getFollowAnswerInfos(int page, int limit, int user_id) {
        PageHelper.startPage(page,limit);
        List<AnswerBean> followanswerinfos = answerMapper.getFollowAnswerInfos(user_id);
        Integer count = answerMapper.queryTotal();
        return ResultVo.getSuccessVo("success",followanswerinfos,count);
    }

    @Override
    public ResultVo getHotAnswerInfos(int page, int limit) {
        PageHelper.startPage(page,limit);
        List<AnswerBean> hotanswerinfos = answerMapper.getHotAnswerInfos();
        Integer count = answerMapper.queryTotal();
        return ResultVo.getSuccessVo("success",hotanswerinfos,count);
    }

    @Override
    public ResultVo getCollectAnswerInfos(int page, int limit, int user_id) {
        PageHelper.startPage(page,limit);
        List<AnswerBean> collectanswerinfos = answerMapper.getCollectAnswerInfos(user_id);
        Integer count = answerMapper.queryTotal();
        return ResultVo.getSuccessVo("success",collectanswerinfos,count);
    }

    @Override
    public ResultVo getSelectAnswerInfos(int page, int limit, int question_id) {
        PageHelper.startPage(page,limit);
        List<SelectAnswer> selectanswerinfos = answerMapper.getSelectAnswerInfos(question_id);
        Integer count = answerMapper.queryTotal();
        return ResultVo.getSuccessVo("success",selectanswerinfos,count);
    }

    @Override
    public ResultVo getSpecificAnswerInfos(int answer_id) {
        SelectAnswer specificanswerinfos = answerMapper.getSpecificAnswerInfos(answer_id);
        Integer count = 1;
        return ResultVo.getSuccessVo("success",specificanswerinfos,count);
    }


}




