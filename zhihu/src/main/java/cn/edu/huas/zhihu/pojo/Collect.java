package cn.edu.huas.zhihu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Collect {
    private long id;
    private long answer_id;
    private long user_id;

}
