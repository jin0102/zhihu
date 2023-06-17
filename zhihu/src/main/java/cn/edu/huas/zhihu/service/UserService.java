package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.vo.ResultVo;

/**
* @author 123
* @description 针对表【user】的数据库操作Service
* @createDate 2023-06-14 23:25:06
*/
public interface UserService {
	ResultVo userLogin(User user);
	ResultVo userRegister(User user);
}
