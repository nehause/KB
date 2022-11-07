package com.kbbook.shop.modules.writer;

import com.kbbook.shop.common.base.BaseVo;

public class WriterVo extends BaseVo{
	
	private String writerSeq;
	
	private String book_writerSeq;
	
	private String book_bookSeq;
	private String writer_writerSeq;

	public String getWriterSeq() {
		return writerSeq;
	}

	public void setWriterSeq(String writerSeq) {
		this.writerSeq = writerSeq;
	}

	public String getBook_writerSeq() {
		return book_writerSeq;
	}

	public void setBook_writerSeq(String book_writerSeq) {
		this.book_writerSeq = book_writerSeq;
	}

	public String getBook_bookSeq() {
		return book_bookSeq;
	}

	public void setBook_bookSeq(String book_bookSeq) {
		this.book_bookSeq = book_bookSeq;
	}

	public String getWriter_writerSeq() {
		return writer_writerSeq;
	}

	public void setWriter_writerSeq(String writer_writerSeq) {
		this.writer_writerSeq = writer_writerSeq;
	}
	
	
	
}
