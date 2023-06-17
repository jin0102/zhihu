package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.service.UserService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("userLogin")
	public ResultVo userLogin(User user) {
		return userService.userLogin(user);
	}

	@RequestMapping("userRegister")
	public ResultVo userRegister(User user) {
		return userService.userRegister(user);
	}
}
