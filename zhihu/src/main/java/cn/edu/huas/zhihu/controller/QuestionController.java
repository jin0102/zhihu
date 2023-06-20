package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.service.QuestionService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/question")
public class QuestionController {
    @Autowired
    private QuestionService questionService;

    @RequestMapping("/getQuestionInfos")
    public ResultVo getQuestionInfos(int question_id){

        return questionService.getQuestionInfos(question_id);
    }

    @RequestMapping("/getAllQuestionInfos")
    public ResultVo getAllQuestionInfos(int page, int limit,int user_id){

        return questionService.getAllQuestionInfos(page,limit,user_id);
    }

}
