package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.service.ChatService;
import cn.edu.huas.zhihu.service.CollectService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/collect")
public class CollectController {
    @Autowired
    private CollectService collectService;

    @RequestMapping("/createCollect")
    public ResultVo createCollect(Collect collect){

        return collectService.createCollect(collect);
    }
}
