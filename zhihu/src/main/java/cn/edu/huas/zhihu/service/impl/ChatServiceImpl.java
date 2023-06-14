package cn.edu.huas.zhihu.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.huas.zhihu.pojo.Chat;
import cn.edu.huas.zhihu.service.ChatService;
import cn.edu.huas.zhihu.mapper.ChatMapper;
import org.springframework.stereotype.Service;

/**
* @author 123
* @description 针对表【chat】的数据库操作Service实现
* @createDate 2023-06-14 23:29:28
*/
@Service
public class ChatServiceImpl extends ServiceImpl<ChatMapper, Chat> implements ChatService{

}




