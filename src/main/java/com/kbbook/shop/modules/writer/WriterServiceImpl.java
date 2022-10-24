package com.kbbook.shop.modules.writer;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kbbook.shop.common.base.BaseServiceImpl;
import com.kbbook.shop.common.base.BaseVo;
import com.kbbook.shop.common.constants.Constants;
import com.kbbook.shop.common.util.UtilDateTime;

@Service
public class WriterServiceImpl extends BaseServiceImpl implements WriterService{
	
	@Autowired
	WriterDao dao;
	
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
	public List<Writer> selectList(WriterVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Writer dto) throws Exception {
		
		dao.insert(dto);
		
		uploadFiles(dto.getUploadImg(), dto, "writerUploaded", 2, dto.getUploadImgMaxNumber());
    	uploadFiles(dto.getUploadFile(), dto, "writerUploaded", 3, dto.getUploadFileMaxNumber());
		
		return 1;
	}
	
	@Override
	public Writer selectSeq(WriterVo vo) throws Exception {
		Writer result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Writer dto) throws Exception{
		dao.update(dto);
		
		deleteFiles(dto.getUploadImgDeleteSeq(), dto.getUploadImgDeletePathFile(), dto, "writerUploaded");
		uploadFiles(dto.getUploadImg(), dto, "writerUploaded", 2, dto.getUploadImgMaxNumber());
		
		deleteFiles(dto.getUploadFileDeleteSeq(), dto.getUploadFileDeletePathFile(), dto, "writerUploaded");
		uploadFiles(dto.getUploadFile(), dto, "writerUploaded", 3, dto.getUploadFileMaxNumber());
		
		return 1;
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
