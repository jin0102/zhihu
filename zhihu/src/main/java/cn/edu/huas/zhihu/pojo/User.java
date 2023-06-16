package cn.edu.huas.zhihu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 
 * @TableName user
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User {

    private Long id;
    private String username;
    private String phone;
    private String password;
    private String imageurl;

}