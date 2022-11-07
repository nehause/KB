package com.kbbook.shop.modules.writer;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kbbook.shop.common.base.BaseServiceImpl;
import com.kbbook.shop.common.base.BaseVo;
import com.kbbook.shop.common.constants.Constants;
import com.kbbook.shop.common.util.UtilDateTime;
import com.kbbook.shop.common.util.UtilRegMod;

@Service
public class WriterServiceImpl extends BaseServiceImpl implements WriterService{
	
	@Autowired
	WriterDao dao;
	
	@Override
	public void setRegMod(Writer dto) throws Exception {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		dto.setRegIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setRegSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setRegDeviceCd(UtilRegMod.getDevice());
		dto.setRegDateTime(UtilDateTime.nowDate());
		
		dto.setModIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setModSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setModDeviceCd(UtilRegMod.getDevice());
		dto.setModDateTime(UtilDateTime.nowDate());
	}
	
public void uploadFiles(MultipartFile[] multipartFiles, Writer dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getWriterSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	
	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Writer dto, String tableName) throws Exception{
		
		for (int i=0; i<deleteSeq.length; i++) {
			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
            boolean result = file.delete();
            
            if(result) {
            	dto.setSeq(deleteSeq[i]);
            	dto.setTableName(tableName);
            	dao.deleteUploaded(dto);
            }
		}
	}
	
	
	@Override
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Writer dto, String tableName) throws Exception{
		
		for (int i=0; i<deleteSeq.length; i++) {
//			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
//			boolean result = file.delete();
			
//			if(result) {
				dto.setSeq(deleteSeq[i]);
				dto.setTableName(tableName);
				dao.ueleteUploaded(dto);
//			}
		}
	}
	
	@Override
	public List<Writer> writerListUploaded(WriterVo vo) throws Exception {
		return dao.writerListUploaded(vo);
	}
	
	@Override
	public List<Writer> selectList(WriterVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Writer dto) throws Exception {
		
		setRegMod(dto);
		int result = dao.insert(dto);
		uploadFiles(dto.getUploadWriterImage(), dto, "writerUploaded", 1, dto.getUploadWriterImageMaxNumber());
		
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
		
		setRegMod(dto);
		dao.update(dto);
		deleteFiles(dto.getUploadWriterImageDeleteSeq(), dto.getUploadWriterImageDeletePathFile(), dto, "writerUploaded");
		uploadFiles(dto.getUploadWriterImage(), dto, "writerUploaded", 1, dto.getUploadWriterImageMaxNumber());
		
		
		return 1;
	}
	
	@Override
	public int uelete(Writer dto) throws Exception{
		setRegMod(dto);
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
	
	//bookWriter
	
	public List<Writer> bookWriterList(WriterVo vo) throws Exception{
		return dao.bookWriterList(vo);
	}
	public Writer bookWriterSeq(WriterVo vo) throws Exception{
		return dao.bookWriterSeq(vo);
	}
	public int bookWriterInsert(Writer dto) throws Exception{
		return dao.bookWriterInsert(dto);
	}
	public int bookWriterUpdate(Writer dto) throws Exception{
		return dao.bookWriterUpdate(dto);
	}
	public int bookWriterDelete(WriterVo vo) throws Exception{
		return dao.bookWriterDelete(vo);
	}
	public int bookWriterCount(WriterVo vo) throws Exception{
		return dao.bookWriterCount(vo);
	}
	
	//bookwriter ajax
	
	public Writer bookName(WriterVo vo) throws Exception{
		return dao.bookName(vo);
	}
	public Writer writerName(WriterVo vo) throws Exception{
		return dao.writerName(vo);
	}
}
