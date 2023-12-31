package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.mapper.FollowMapper;
import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.pojo.Follow;
import cn.edu.huas.zhihu.pojo.Followque;
import cn.edu.huas.zhihu.pojo.User;
import cn.edu.huas.zhihu.service.FollowService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FollowServiceImpl implements FollowService {

	@Autowired
	private FollowMapper followMapper;

	@Override
	public ResultVo getFollower(Follow follow) {

		List<User> userList = followMapper.getFollower(follow);
		return ResultVo.getSuccessVo("success", userList);
	}

	public ResultVo createFollower(Follow follow) {
		followMapper.createFollower(follow);
		return ResultVo.getSuccessVo("success");
	}

	public ResultVo createFollowQue(Followque followque) {
		followMapper.createFollowQue(followque);
		return ResultVo.getSuccessVo("success");
	}
}
