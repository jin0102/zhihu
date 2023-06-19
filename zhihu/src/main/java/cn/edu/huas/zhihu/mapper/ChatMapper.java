package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Chat;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ChatMapper {
	List<Chat> getChatMessage(Chat chat);
	Integer getCount(Chat chat);
}
