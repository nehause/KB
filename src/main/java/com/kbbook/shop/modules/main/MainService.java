package com.kbbook.shop.modules.main;

import java.util.List;


public interface MainService {
	public List<Main> selectList() throws Exception;
	public List<Main> mainList() throws Exception;
	public List<Main> bestList() throws Exception;
	public List<Main> newList() throws Exception;
	
	public Main selectOneId(Main dto) throws Exception;
	public Main selectOneLogin(Main dto) throws Exception;
}
