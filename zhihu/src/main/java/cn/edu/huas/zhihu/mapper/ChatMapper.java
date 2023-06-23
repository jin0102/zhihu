package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Chat;
import cn.edu.huas.zhihu.pojo.ChatBean;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ChatMapper {
	List<ChatBean> getChatMessage(Chat chat);
	Integer getCount(Chat chat);
	Integer sendMessage(Chat chat);
}
