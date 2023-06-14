package cn.edu.huas.zhihu.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.huas.zhihu.pojo.Question;
import cn.edu.huas.zhihu.service.QuestionService;
import cn.edu.huas.zhihu.mapper.QuestionMapper;
import org.springframework.stereotype.Service;

/**
* @author 123
* @description 针对表【question】的数据库操作Service实现
* @createDate 2023-06-14 23:29:12
*/
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionMapper, Question> implements QuestionService{

}




