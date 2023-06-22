package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.pojo.Follow;
import cn.edu.huas.zhihu.vo.ResultVo;

public interface FollowService {
	ResultVo getFollower(Follow follow);
	ResultVo createFollower(Follow follow);
}
