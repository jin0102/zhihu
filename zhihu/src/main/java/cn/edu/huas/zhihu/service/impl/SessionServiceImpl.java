package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.mapper.SessionMapper;
import cn.edu.huas.zhihu.pojo.Session;
import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.service.SessionService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SessionServiceImpl implements SessionService {

	@Autowired
	private SessionMapper sessionMapper;

	@Override
	public ResultVo getSessionInfos(User user) {
		List<Session> sessionList = sessionMapper.getSessionInfos(user);
		return ResultVo.getSuccessVo("success", sessionList);
	}
}
