package com.exam.api.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class ExamAppCloudConfigServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExamAppCloudConfigServerApplication.class, args);
	}

}
