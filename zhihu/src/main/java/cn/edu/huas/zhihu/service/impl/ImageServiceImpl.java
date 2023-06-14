package cn.edu.huas.zhihu.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.edu.huas.zhihu.pojo.Image;
import cn.edu.huas.zhihu.service.ImageService;
import cn.edu.huas.zhihu.mapper.ImageMapper;
import org.springframework.stereotype.Service;

/**
* @author 123
* @description 针对表【image】的数据库操作Service实现
* @createDate 2023-06-14 23:29:23
*/
@Service
public class ImageServiceImpl extends ServiceImpl<ImageMapper, Image> implements ImageService{

}




