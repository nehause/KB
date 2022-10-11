package com.kbbook.shop.modules.transport;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;

@Service
public class TransportServiceImpl implements TransportService{
	
	@Autowired
	TransportDao dao;
	
	@Override
	public List<Transport> selectList(TransportVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Transport dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result );
		
		return result;
	}
	
	@Override
	public Transport selectSeq(TransportVo vo) throws Exception{
		Transport result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Transport dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Transport dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(TransportVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Transport> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public Transport memberSeq(TransportVo vo) throws Exception{
		return dao.memberSeq(vo);
	}
	@Override
	public Transport userSelect(TransportVo vo) throws Exception{
		return dao.userSelect(vo);
	}
	
	@Override
	public int loginCount(TransportVo vo) throws Exception{
		return dao.loginCount(vo);
	}
	
	@Override
	public List<Transport> loginSeq(Transport dto) throws Exception{
		return dao.loginSeq(dto);
	}
}
