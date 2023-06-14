package cn.edu.huas.zhihu.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName answer
 */
@TableName(value ="answer")
@Data
public class Answer implements Serializable {
    /**
     * 
     */
    @TableId(value = "id")
    private Long id;

    /**
     * 
     */
    @TableField(value = "answer_content")
    private String answer_content;

    /**
     * 
     */
    @TableField(value = "answer_time")
    private Date answer_time;

    /**
     * 
     */
    @TableField(value = "user_id")
    private Long user_id;

    /**
     * 
     */
    @TableField(value = "question_id")
    private Long question_id;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Answer other = (Answer) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getAnswer_content() == null ? other.getAnswer_content() == null : this.getAnswer_content().equals(other.getAnswer_content()))
            && (this.getAnswer_time() == null ? other.getAnswer_time() == null : this.getAnswer_time().equals(other.getAnswer_time()))
            && (this.getUser_id() == null ? other.getUser_id() == null : this.getUser_id().equals(other.getUser_id()))
            && (this.getQuestion_id() == null ? other.getQuestion_id() == null : this.getQuestion_id().equals(other.getQuestion_id()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getAnswer_content() == null) ? 0 : getAnswer_content().hashCode());
        result = prime * result + ((getAnswer_time() == null) ? 0 : getAnswer_time().hashCode());
        result = prime * result + ((getUser_id() == null) ? 0 : getUser_id().hashCode());
        result = prime * result + ((getQuestion_id() == null) ? 0 : getQuestion_id().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", answer_content=").append(answer_content);
        sb.append(", answer_time=").append(answer_time);
        sb.append(", user_id=").append(user_id);
        sb.append(", question_id=").append(question_id);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}