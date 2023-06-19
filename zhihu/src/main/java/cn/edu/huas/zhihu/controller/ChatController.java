package cn.edu.huas.zhihu.controller;

import cn.edu.huas.zhihu.pojo.Chat;
import cn.edu.huas.zhihu.service.ChatService;
import cn.edu.huas.zhihu.vo.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/chat")
public class ChatController {

	@Autowired
	private ChatService chatService;

	@RequestMapping("")
	public ResultVo getChatMessage (Chat chat, Integer page, Integer limit) {
		return chatService.getChatMessage(chat, page, limit);
	}

}
