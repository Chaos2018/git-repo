package cn.hzd.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.hzd.bo.AccountQueryBo;
import cn.hzd.model.crud.Account;

public interface IAccountService {
	boolean delete(String accountId);

	Account get(String accountId);

	List<Account> getList(AccountQueryBo queryBo);

	PageInfo<Account> getListForPage(AccountQueryBo queryBo);

	String insert(Account record);

	boolean update(Account record);

}
