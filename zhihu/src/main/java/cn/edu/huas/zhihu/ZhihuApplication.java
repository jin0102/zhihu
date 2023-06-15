package cn.edu.huas.zhihu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@MapperScan
public class ZhihuApplication {

	public static void main(String[] args) {
		SpringApplication.run(ZhihuApplication.class, args);
	}

}
