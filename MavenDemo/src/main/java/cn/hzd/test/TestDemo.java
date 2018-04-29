package cn.hzd.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.hzd.aop.Book;
import cn.hzd.bo.UserQueryBo;
import cn.hzd.model.crud.User;
import cn.hzd.service.impl.UserService;

@SuppressWarnings("resource")
public class TestDemo {
	// 创建对象的3种方式
	// 1.调用类的无参构造方法
	// 2.静态工厂方法
	// 3.实例工厂创建

	public void test6() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("bean1.xml");
		UserService userService = ac.getBean("userService", UserService.class);
		UserQueryBo queryBo = new UserQueryBo();
		List<User> modelList = userService.getList(queryBo);
		if (modelList != null) {
			for (User user : modelList) {
				System.out.println(
						user.getUsername() + "/t" + user.getPassword());
			}
		}
	}

	public void test5() {

	}

	public void test4() {

	}

	public void test3() {

	}

	@Test
	public void test2() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("bean1.xml");
		Book book = ac.getBean("book", Book.class);
		book.add();
	}

	public void test1() {

		// 1.加载Spring配置文件，根据其创建对象
		// ApplicationContext ac = new
		// ClassPathXmlApplicationContext("bean1.xml");
		// // 2.得到配置创建的对象
		// User user = (User) ac.getBean("user222");
		// User user2 = (User) ac.getBean("user222");
		// // singleton单例
		// System.out.println(user);
		// System.out.println(user2);
		// System.out.println(user.getUsername());
		// System.out.println(user.getPassword());
		// user.test2();
		// user.add();
		// System.out.println("---------------");
		// ApplicationContext ac2 = new ClassPathXmlApplicationContext(
		// "bean1.xml");
		// Bean2 bean2 = (Bean2) ac2.getBean("bean2");
		// System.out.println(bean2);
		// System.out.println("---------------");
		// ApplicationContext ac3 = new ClassPathXmlApplicationContext(
		// "bean1.xml");
		// Bean3 bean3 = (Bean3) ac3.getBean("bean3");
		// System.out.println(bean3);
		// System.out.println("---------------");
		// ApplicationContext ac4 = new ClassPathXmlApplicationContext(
		// "bean1.xml");
		// User bean4 = (User) ac4.getBean("bean4");
		// System.out.println(bean4);
		// bean4.test();
		// ApplicationContext ac5 = new ClassPathXmlApplicationContext(
		// "bean1.xml");
		// User bean5 = (User) ac5.getBean("bean5");
		// bean5.test3();
	}

}
