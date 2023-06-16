package cn.edu.huas.zhihu.service.impl;

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
        List<Answer> answerinfos = answerMapper.getAnswerInfos();

        Integer count = answerMapper.queryTotal();
        return ResultVo.getSuccessVo("success",answerinfos,count);
    }
}




