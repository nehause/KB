package com.kbbook.shop.modules.book;

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
public class BookServiceImpl extends BaseServiceImpl implements BookService{
	
	@Autowired
	BookDao dao;
	
	@Override
	public void setRegMod(Book dto) throws Exception {
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
	
	public void uploadFiles(MultipartFile[] multipartFiles, Book dto, String tableName, int type, int maxNumber) throws Exception {
		
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
				dto.setPseq(dto.getBookSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	
	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Book dto, String tableName) throws Exception{
		
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
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Book dto, String tableName) throws Exception{
		
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
	public List<Book> bookListUploaded(BookVo vo) throws Exception {
		return dao.bookListUploaded(vo);
	}
	
	
	@Override
	public List<Book> selectList(BookVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Book dto) throws Exception {
		
		setRegMod(dto);
		int result = dao.insert(dto);
		uploadFiles(dto.getUploadSign(), dto, "bookUploaded", 1, dto.getUploadSignMaxNumber());
		uploadFiles(dto.getUploadImage(), dto, "bookUploaded", 2, dto.getUploadImageMaxNumber());
// for문 작가 갯수 확인
//		작가 등록
		
		System.out.println("service result: " + result);
		
		return result;
	}
	
	@Override
	public Book selectSeq(BookVo vo) throws Exception {
		Book result = dao.selectSeq(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int update(Book dto) throws Exception{
		setRegMod(dto);
		dao.update(dto);
		deleteFiles(dto.getUploadSignDeleteSeq(), dto.getUploadSignDeletePathFile(), dto, "bookUploaded");
		uploadFiles(dto.getUploadSign(), dto, "bookUploaded", 1, dto.getUploadSignMaxNumber());
		
		deleteFiles(dto.getUploadImageDeleteSeq(), dto.getUploadImageDeletePathFile(), dto, "bookUploaded");
		uploadFiles(dto.getUploadImage(), dto, "bookUploaded", 2, dto.getUploadImageMaxNumber());
		return 1;
	}
	
	@Override
	public int uelete(Book dto) throws Exception{
		setRegMod(dto);
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(BookVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<Book> selectListWithoutPaging() throws Exception{
		return dao.selectListWithoutPaging();
	}
	
	@Override
	public int selectOneCount(BaseVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Book> userSelectList(BookVo vo) throws Exception{
		return dao.userSelectList(vo);
	}
	
	@Override
	public int userSelectOneCount(BookVo vo) throws Exception{
		return dao.userSelectOneCount(vo);
	}
	@Override
	public Book bookSelectSeq(BookVo vo) throws Exception{
		return dao.bookSelectSeq(vo);
	}
	@Override
	public List<Book> bookComment(BookVo vo) throws Exception{
		return dao.bookComment(vo);
	}
	@Override
	public Book commentAVG(BookVo vo) throws Exception{
		return dao.commentAVG(vo);
	}
	@Override
	public int bookCommentCount(BookVo vo) throws Exception{
		return dao.bookCommentCount(vo);
	}
	@Override
	public List<Book> bookWriter(BookVo vo) throws Exception{
		return dao.bookWriter(vo);
	}
	
	public int commentInsert(Book dto) throws Exception{
		return dao.commentInsert(dto);
		
	}
	public int commentDelete(BookVo vo) throws Exception{
		return dao.commentDelete(vo);
	}
	public int commentCheck(Book dto) throws Exception{
		return dao.commentCheck(dto);
	}
	public int favoriteCheck(BookVo vo) throws Exception{
		return dao.favoriteCheck(vo);
	}
	public int favoriteInsert(Book dto) throws Exception{
		return dao.favoriteInsert(dto);
	}
	public int favoriteDelete(BookVo vo) throws Exception{
		return dao.favoriteDelete(vo);
	}
}
