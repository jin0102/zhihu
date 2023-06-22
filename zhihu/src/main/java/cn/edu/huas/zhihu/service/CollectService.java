package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.vo.ResultVo;

public interface CollectService {
    ResultVo createCollect(Collect collect);
}
