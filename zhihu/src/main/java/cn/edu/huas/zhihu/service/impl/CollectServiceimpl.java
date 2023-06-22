package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.mapper.CollectMapper;
import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.service.CollectService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CollectServiceimpl implements CollectService {
    @Autowired
    private CollectMapper collectMapper;

    public ResultVo createCollect(Collect collect) {
        System.out.println(collect.toString());
        collectMapper.createCollect(collect);
        return ResultVo.getSuccessVo("success");
    }
}
