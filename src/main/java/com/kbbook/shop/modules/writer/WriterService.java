package com.kbbook.shop.modules.writer;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kbbook.shop.common.base.BaseVo;

public interface WriterService {
	// uploaded
	public void setRegMod(Writer dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Writer dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Writer dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Writer dto, String tableName) throws Exception;
	List<Writer> writerListUploaded(WriterVo vo) throws Exception; 
	
	
	public List<Writer> selectList(WriterVo vo) throws Exception; 
	public int insert(Writer dto) throws Exception;
	public Writer selectSeq(WriterVo vo) throws Exception;
	public int update(Writer dto) throws Exception;
	public int uelete(Writer dto) throws Exception;
	public int delete(WriterVo vo) throws Exception;
	
	public List<Writer> selectListWithoutPaging() throws Exception;
	public int selectOneCount(BaseVo vo) throws Exception;
	
}
