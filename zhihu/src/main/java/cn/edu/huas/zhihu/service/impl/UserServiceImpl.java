package cn.edu.huas.zhihu.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.service.UserService;
import cn.edu.huas.zhihu.mapper.UserMapper;
import org.springframework.stereotype.Service;

/**
* @author 123
* @description 针对表【user】的数据库操作Service实现
* @createDate 2023-06-14 23:25:06
*/
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService{

}




