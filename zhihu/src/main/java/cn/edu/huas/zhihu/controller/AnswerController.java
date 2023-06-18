package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.service.AnswerService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/answer")
public class AnswerController {
    @Autowired
    private AnswerService answerService;

    @RequestMapping("/getAnswerInfos")
    public ResultVo getAnswerInfos(int page, int limit){

        return answerService.getAnswerInfos(page,limit);
    }

    @RequestMapping("/getFollowAnswerInfos")
    public ResultVo getFollowAnswerInfos(int page, int limit , int user_id){
        return answerService.getFollowAnswerInfos(page,limit,user_id);
    }

    @RequestMapping("/getHotAnswerInfos")
    public ResultVo getHotAnswerInfos(int page, int limit){

        return answerService.getHotAnswerInfos(page,limit);
    }

    @RequestMapping("/getCollectAnswerInfos")
    public ResultVo getCollectAnswerInfos(int page, int limit , int user_id){

        return answerService.getCollectAnswerInfos(page,limit,user_id);
    }

    @RequestMapping("/getSelectAnswerInfos")
    public ResultVo getSelectAnswerInfos(int page, int limit , int question_id){

        return answerService.getSelectAnswerInfos(page,limit,question_id);
    }
}
