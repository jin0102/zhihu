package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.pojo.Collect;
import cn.edu.huas.zhihu.pojo.Follow;
import cn.edu.huas.zhihu.pojo.Followque;
import cn.edu.huas.zhihu.service.FollowService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("follow")
public class FollowController {

	@Autowired
	private FollowService followService;

	@RequestMapping("getFollower")
	public ResultVo getFollower(Follow follow) {
		return followService.getFollower(follow);
	}

	@RequestMapping("/createFollower")
	public ResultVo createFollower(Follow follow){

		return followService.createFollower(follow);
	}

	@RequestMapping("/createFollowQue")
	public ResultVo createFollowQue(Followque followque){

		return followService.createFollowQue(followque);
	}
}
