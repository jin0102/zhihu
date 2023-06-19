package cn.edu.huas.zhihu.mapper;

import cn.edu.huas.zhihu.pojo.SesUserBean;
import cn.edu.huas.zhihu.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SessionMapper {
	List<SesUserBean> getSessionInfos(Integer id);
}
