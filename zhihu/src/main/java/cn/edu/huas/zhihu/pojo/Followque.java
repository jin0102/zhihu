package cn.edu.huas.zhihu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Followque {
    private Long id;
    private Long user_id;
    private Long question_id;
}
