package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.pojo.Follow;
import cn.edu.huas.zhihu.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FollowMapper {
	List<User> getFollower(Follow follow);
	void createFollower(Follow follow);
}
