package cn.edu.huas.zhihu.pojo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 
 * @TableName answer
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Answer {

    private Long id;
    private String answer_ctnt;
    private Date answer_time;

    private Long user_id;
    private Long question_id;

    private Long good;
    private String answer_comment;

}