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
public class AnswerBean {
    private Long id;
    private String answer_ctnt;
    private Date answer_time;
    private Long user_id;
    private Long question_id;
    private Long good;



    private String username;
    private String imageurl;


    private String question_text;
    private Long comment_num;

}
