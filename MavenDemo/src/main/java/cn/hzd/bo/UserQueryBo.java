package cn.hzd.bo;

import cn.hzd.model.crud.UserExample;
import cn.hzd.util.StringUtil;

public class UserQueryBo extends BaseQueryBo {

	private String userId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public UserExample createExample() {
		UserExample example = new UserExample();

		UserExample.Criteria criteria = example.createCriteria();
		if (StringUtil.isNotEmpty(this.userId)) {
			criteria.andUserIdEqualTo(this.userId);
		}

		return example;
	}
}
