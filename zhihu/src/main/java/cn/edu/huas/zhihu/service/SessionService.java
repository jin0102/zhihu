package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.vo.ResultVo;

public interface SessionService {
	ResultVo getSessionInfos(Integer id);
}
