package cn.hzd.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.hzd.bo.UserQueryBo;
import cn.hzd.dao.crud.UserMapper;
import cn.hzd.model.crud.User;
import cn.hzd.model.crud.UserExample;
import cn.hzd.model.crud.UserKey;
import cn.hzd.service.IUserService;
import cn.hzd.util.StringUtil;

@Service(value = "userService")
public class UserService implements IUserService {

	@Autowired
	private UserMapper mapper;

	@Override
	public boolean delete(String userId) {
		Integer count = 0;
		UserKey userKey = new UserKey();
		userKey.setUserId(userId);
		count = this.mapper.deleteByPrimaryKey(userKey);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean doUserLogin(User user) {
		UserExample example = new UserExample();
		// 复制属性
		BeanUtils.copyProperties(user, example);
		List<User> list = this.mapper.selectByExample(example);
		if (list.size() == 0) {
			return false;
		} else {
			if (list.get(0).getPassword().equals(user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}

	@Override
	public User get(String userId) {
		UserKey userKey = new UserKey();
		userKey.setUserId(userId);
		return this.mapper.selectByPrimaryKey(userKey);
	}

	@Override
	public List<User> getList(UserQueryBo queryBo) {
		List<User> modelList = null;

		if (queryBo != null) {
			modelList = this.mapper.selectByExample(queryBo.createExample());
		}

		return modelList;
	}

	@Override
	public PageInfo<User> getListForPage(UserQueryBo queryBo) {
		PageInfo<User> pageInfo = null;
		PageHelper.startPage(queryBo.getPageIndex() + 1, queryBo.getPageSize());
		List<User> modelList = this.mapper
				.selectByExample(queryBo.createExample());
		if (modelList != null) {
			pageInfo = new PageInfo<User>(modelList);
		}
		return pageInfo;
	}

	@Override
	public String insert(User record) {
		String primaryKey = "";
		primaryKey = record.getUserId();
		if (StringUtil.isEmpty(primaryKey)) {
			record.setUserId(UUID.randomUUID().toString());
		}
		int count = this.mapper.insert(record);
		if (count > 0) {
			primaryKey = record.getUserId();
		}
		return primaryKey;
	}

	@Override
	public boolean update(User record) {
		boolean isSuccess = false;
		String userId = record.getUserId();
		if (StringUtil.isNotEmpty(userId)) {
			int count = this.mapper.updateByPrimaryKeySelective(record);
			if (count > 0) {
				isSuccess = true;
			}
		}
		return isSuccess;
	}

}
