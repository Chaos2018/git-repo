package cn.hzd.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.hzd.bo.UserQueryBo;
import cn.hzd.model.crud.User;

public interface IUserService {
	boolean delete(String userId);

	boolean doUserLogin(User user);

	User get(String userId);

	List<User> getList(UserQueryBo queryBo);

	PageInfo<User> getListForPage(UserQueryBo queryBo);

	String insert(User record);

	boolean update(User record);

}
