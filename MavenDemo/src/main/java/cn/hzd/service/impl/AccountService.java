package cn.hzd.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.hzd.bo.AccountQueryBo;
import cn.hzd.dao.crud.AccountMapper;
import cn.hzd.model.crud.Account;
import cn.hzd.model.crud.AccountKey;
import cn.hzd.service.IAccountService;
import cn.hzd.util.StringUtil;

@Service(value = "accountService")
public class AccountService implements IAccountService {

	@Autowired
	private AccountMapper mapper;

	@Override
	public boolean delete(String accountId) {
		Integer count = 0;
		AccountKey userKey = new AccountKey();
		userKey.setAccountId(accountId);
		count = this.mapper.deleteByPrimaryKey(userKey);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Account get(String accountId) {
		AccountKey userKey = new AccountKey();
		userKey.setAccountId(accountId);
		return this.mapper.selectByPrimaryKey(userKey);
	}

	@Override
	public List<Account> getList(AccountQueryBo queryBo) {
		List<Account> modelList = null;

		if (queryBo != null) {
			modelList = this.mapper.selectByExample(queryBo.createExample());
		}

		return modelList;
	}

	@Override
	public PageInfo<Account> getListForPage(AccountQueryBo queryBo) {
		PageInfo<Account> pageInfo = null;
		PageHelper.startPage(queryBo.getPageIndex() + 1, queryBo.getPageSize());
		List<Account> modelList = this.mapper
				.selectByExample(queryBo.createExample());
		if (modelList != null) {
			pageInfo = new PageInfo<Account>(modelList);
		}
		return pageInfo;
	}

	@Override
	public String insert(Account record) {
		String primaryKey = "";
		primaryKey = record.getAccountId();
		if (StringUtil.isEmpty(primaryKey)) {
			record.setAccountId(UUID.randomUUID().toString());
		}
		int count = this.mapper.insert(record);
		if (count > 0) {
			primaryKey = record.getAccountId();
		}
		return primaryKey;
	}

	@Override
	public boolean update(Account record) {
		boolean isSuccess = false;
		String accountId = record.getAccountId();
		if (StringUtil.isNotEmpty(accountId)) {
			int count = this.mapper.updateByPrimaryKeySelective(record);
			if (count > 0) {
				isSuccess = true;
			}
		}
		return isSuccess;
	}

}
