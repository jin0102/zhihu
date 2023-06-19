package cn.edu.huas.zhihu.service.impl;

import cn.edu.huas.zhihu.mapper.ChatMapper;
import cn.edu.huas.zhihu.pojo.Chat;
import cn.edu.huas.zhihu.service.ChatService;
import cn.edu.huas.zhihu.vo.ResultVo;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatMapper chatMapper;

	@Override
	public ResultVo getChatMessage(Chat chat, Integer page, Integer limit) {
		PageHelper.startPage(page, limit);
		List<Chat> chatList = chatMapper.getChatMessage(chat);

		Integer count = chatMapper.getCount(chat);
		return ResultVo.getSuccessVo("success", chatList, count);
	}
}
