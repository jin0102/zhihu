package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.User;
import org.apache.ibatis.annotations.Mapper;

/**
* @author 123
* @description 针对表【user】的数据库操作Mapper
* @createDate 2023-06-14 23:25:06
* @Entity cn.edu.huas.zhihu.pojo.User
*/
@Mapper
public interface UserMapper {
	User userLogin(User user);
}




