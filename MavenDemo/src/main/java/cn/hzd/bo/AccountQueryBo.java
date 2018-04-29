package cn.hzd.bo;

import cn.hzd.model.crud.AccountExample;
import cn.hzd.util.StringUtil;

public class AccountQueryBo extends BaseQueryBo {

	private String accountId;

	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	public AccountExample createExample() {
		AccountExample example = new AccountExample();

		AccountExample.Criteria criteria = example.createCriteria();
		if (StringUtil.isNotEmpty(this.accountId)) {
			criteria.andAccountIdEqualTo(this.accountId);
		}

		return example;
	}
}
