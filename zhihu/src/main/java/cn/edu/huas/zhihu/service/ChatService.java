package cn.edu.huas.zhihu.service;

import cn.edu.huas.zhihu.pojo.Chat;
import cn.edu.huas.zhihu.vo.ResultVo;

public interface ChatService {
	ResultVo getChatMessage(Chat chat, Integer page, Integer limit);
}