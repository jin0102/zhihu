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
public class SesUserBean {

	private Long id;
	private Long user1_id;
	private Long user2_id;

	private String username;
	private String imageurl;

	private String content;
	private Date send_time;
}
