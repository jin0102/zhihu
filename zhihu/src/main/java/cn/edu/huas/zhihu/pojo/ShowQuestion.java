package cn.edu.huas.zhihu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ShowQuestion {
    private Long id;
    private String question_text;
    private Long user_id;
    private Long comment_num;

    private String username;
    private String imageurl;

}