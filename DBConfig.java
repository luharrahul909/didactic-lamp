package com.config;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement
@ComponentScan("com")
public class DBConfig 
{
	
	//Creating a DataSource Bean
	@Bean(value="dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource driverMgrDataSource=new DriverManagerDataSource();
		driverMgrDataSource.setDriverClassName("org.h2.Driver");
		driverMgrDataSource.setUrl("jdbc:h2:tcp://localhost/~/pro");
		driverMgrDataSource.setUsername("pro");
		driverMgrDataSource.setPassword("");
		System.out.println("started");
		return driverMgrDataSource;
	}
	
	//Session Factory Bean Created.
	
	
	//Transaction Bean Object
	@Bean
	public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager hibernateTranMgr=new HibernateTransactionManager(sessionFactory);
		return hibernateTranMgr;
	}

	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource)
	{
		LocalSessionFactoryBuilder sessionBuilderObject = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilderObject.scanPackages("com.model");
		sessionBuilderObject.setProperty("hibernate.show_sql", "true");
		sessionBuilderObject.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		sessionBuilderObject.setProperty("hibernate.hbm2ddl.auto", "update");
		sessionBuilderObject.setProperty("hibernate.lazy", "false");
		System.out.println("Session Factory Created");
		return sessionBuilderObject.buildSessionFactory();
	}
	
}
