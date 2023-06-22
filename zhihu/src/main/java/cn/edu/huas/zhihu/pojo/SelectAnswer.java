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
public class SelectAnswer {
    private Long id;
    private String username;
    private String imageurl;

    private Long question_id;
    private String question_text;
    private Long user_id;

    private String answer_ctnt;
    private Long good;
    private Long answer_comment;
    private Date answer_time;

    private String describe;
}
