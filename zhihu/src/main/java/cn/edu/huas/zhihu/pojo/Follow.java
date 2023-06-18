package cn.edu.huas.zhihu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Follow {

	private Long id;
	private Long user_id;
	private Long follower_id;

}
