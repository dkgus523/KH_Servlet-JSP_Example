package com.example.demo;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.example.demo.domain.User;
import com.example.demo.repository.UserRepository;

@SpringBootApplication
public class SpringMybatisExampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringMybatisExampleApplication.class, args);
	}

	@Autowired
	private UserRepository userRepository;
	@Bean
	   public void test() { 
//	      //1. create
	      //User user = new User();
	      //user.setId(1L);
	      //user.setEmail("testfdsf@test.com");
	      //user.setPassword("1234abcd");
	      //user.setJoinedDate(LocalDateTime.now());
	      //userRepository.createUser(user);
	      //원래는 xml 파일에 시퀀스 생성해서 값 넣어줘야 하는데 그냥 테스트 하느라 저렇게 만들어놓고
	      //여기서 값 넣어줘 보겠다.
	      
	      //2. read
	      //User user = userRepository.findById(1);
	      //System.out.println(user);
	      
	       //3. 업데이트
	      //User user = userRepository.findById(1);
	      //user.setEmail("abc@de.com");
	      //userRepository.updateUser(user);  
	      
	      //4. 삭제
	      //final int affectedRows = userRepository.deleteUser(1);
	      //System.out.println(affectedRows);
	   }
	
}
