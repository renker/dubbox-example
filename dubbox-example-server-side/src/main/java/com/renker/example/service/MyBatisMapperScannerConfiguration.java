//package com.renker.example.service;
//
//import org.mybatis.spring.mapper.MapperScannerConfigurer;
//import org.springframework.boot.autoconfigure.AutoConfigureAfter;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.stereotype.Repository;
//
//import com.renker.example.service.MyBatisAutoConfiguration.SqlSessionFactoryConfiguration;
//
//@Configuration
//@AutoConfigureAfter(SqlSessionFactoryConfiguration.class)
//public class MyBatisMapperScannerConfiguration {
//	
//	@Bean
//	public MapperScannerConfigurer mapperScannerConfigurer(){
//		MapperScannerConfigurer bean = new MapperScannerConfigurer();
//		bean.setSqlSessionFactoryBeanName("sqlSessionFactory");
//		bean.setBasePackage("com.renker");
//		bean.setAnnotationClass(Repository.class);
//		return bean;
//	}
//}
