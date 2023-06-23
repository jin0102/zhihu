package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.vo.ResultVo;
import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.service.UserService;
import cn.edu.huas.zhihu.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

/**
* @author 123
* @description 针对表【user】的数据库操作Service实现
* @createDate 2023-06-14 23:25:06
*/
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;

	@Override
	public ResultVo userLogin(User user) {
		User user1 = userMapper.userLogin(user);
		if (user1 != null){
			return ResultVo.getSuccessVo("登录成功", user1);
		}
		return ResultVo.getFailedVo("登陆失败");
	}

	@Override
	public ResultVo userRegister(User user) {
		User user1 = userMapper.queryByPhone(user);
		if (user1 != null) {
			return ResultVo.getFailedVo("手机号已存在");
		}
		Integer i = userMapper.userRegister(user);
		if (i > 0) {
			return ResultVo.getSuccessVo("注册成功");
		}
		return ResultVo.getFailedVo("注册失败");
	}

	@Override
	public ResultVo updataUser(User user) {
		System.out.println(user.toString());
		Integer i = userMapper.updataUser(user);
		if (i > 0) {
			return ResultVo.getSuccessVo("注册成功");
		}
		return ResultVo.getFailedVo("注册失败");
	}
}




