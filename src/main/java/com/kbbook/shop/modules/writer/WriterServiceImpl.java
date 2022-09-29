package com.kbbook.shop.modules.writer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbbook.shop.common.base.BaseVo;

@Service
public class WriterServiceImpl implements WriterService{
	
	@Autowired
	WriterDao dao;
	
	@Override
	public List<Writer> selectList(WriterVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Writer dto) throws Exception {
		
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public Writer selectSeq(WriterVo vo) throws Exception {
		Writer result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Writer dto) throws Exception{
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Writer dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(WriterVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Writer> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
}
