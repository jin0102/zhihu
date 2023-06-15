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

}
