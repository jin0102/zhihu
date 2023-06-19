package cn.edu.huas.zhihu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Chat {

	private Long id;
	private Long send_user_id;
	private Long receive_user_id;
	private String content;
	private Date send_time;

}