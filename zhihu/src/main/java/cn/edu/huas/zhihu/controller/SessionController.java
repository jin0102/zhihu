package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.service.SessionService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/session")
public class SessionController {

	@Autowired
	private SessionService sessionService;

	@RequestMapping("/getSessionInfos")
	public ResultVo getSessionInfos (Integer id) {
		return sessionService.getSessionInfos(id);
	}

}
