package com.kbbook.shop.modules.transport;

import com.kbbook.shop.common.base.BaseVo;

public class TransportVo extends BaseVo{
	
	
	private String transportSeq;
	private String memberSeq;
	private String sessSeq;

	public String getTransportSeq() {
		return transportSeq;
	}

	public void setTransportSeq(String transportSeq) {
		this.transportSeq = transportSeq;
	}

	
	
	public String getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getSessSeq() {
		return sessSeq;
	}

	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	
	

}
