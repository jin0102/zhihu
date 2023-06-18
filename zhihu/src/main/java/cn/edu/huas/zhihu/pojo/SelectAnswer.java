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

    private String username;
    private String imageurl;

    private Long question_id;
    private String question_text;

    private String answer_ctnt;
    private Long good;
    private Long answer_comment;
    private Date date;
}