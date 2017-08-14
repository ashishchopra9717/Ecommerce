package com.niit.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.Authorities;
import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Category;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.model.ShippingAddress;
import com.niit.model.User;

@Configuration
@EnableTransactionManagement
public class DBConfiguration {
	@Bean(name="datasource")

	public DataSource getDataSource() {
		BasicDataSource datasource = new BasicDataSource();

		datasource.setDriverClassName("org.h2.Driver");

		datasource.setUrl("jdbc:h2:tcp://localhost/~/test2");

		datasource.setUsername("sa");

		datasource.setPassword("");

		return datasource;
	}

	@Bean
	public SessionFactory sessionFactory() {

		LocalSessionFactoryBuilder lsf = new LocalSessionFactoryBuilder(getDataSource());

		Properties hibernateProperties = new Properties();

		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		lsf.addProperties(hibernateProperties);
		Class classes[] = new Class[] { Product.class, Category.class,Customer.class,User.class, Authorities.class,BillingAddress.class, ShippingAddress.class,Cart.class,CartItem.class };
		return lsf.addAnnotatedClasses(classes).buildSessionFactory();
	}

	@Bean
	public HibernateTransactionManager hibTransManagement() {
		return new HibernateTransactionManager(sessionFactory());
	}

}
