package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.Answer;
import cn.edu.huas.zhihu.pojo.Collect;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CollectMapper {
    void createCollect(Collect collect);
}
