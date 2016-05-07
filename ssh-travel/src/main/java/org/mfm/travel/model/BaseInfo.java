package org.mfm.travel.model;

public class BaseInfo {
	/**
	 * 京ICP备11015476号
	 */
	private String ICPRecord;
	/**
	 * 京ICP证110318号
	 */
	private String ICPConfirm;
	/**
	 * 京公网安备110105013401号
	 */
	private String networkRecord;
	/**
	 * 新出网证(京)字242号
	 */
	private String networkConfirm;
	/**
	 * © 2015 Mafengwo.cn
	 */
	private String copyright;
	/**
	 * 400 166 6866
	 */
	private String contactPhone;
	/**
	 * 首页轮播图片宽
	 */
	private int indexPicWidth;
	/**
	 * 首页轮播图片高
	 */
	private int indexPicHeight;
	/**
	 * 域名
	 */
	private String domainName;

	private int  indexPicNumber;

	public String getICPRecord() {
		return ICPRecord;
	}

	public void setICPRecord(String iCPRecord) {
		ICPRecord = iCPRecord;
	}

	public String getICPConfirm() {
		return ICPConfirm;
	}

	public void setICPConfirm(String iCPConfirm) {
		ICPConfirm = iCPConfirm;
	}

	public String getNetworkRecord() {
		return networkRecord;
	}

	public void setNetworkRecord(String networkRecord) {
		this.networkRecord = networkRecord;
	}

	public String getNetworkConfirm() {
		return networkConfirm;
	}

	public void setNetworkConfirm(String networkConfirm) {
		this.networkConfirm = networkConfirm;
	}

	public String getCopyright() {
		return copyright;
	}

	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}

	public String getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}


	public int getIndexPicNumber() {
		return indexPicNumber;
	}

	public void setIndexPicNumber(int indexPicNumber) {
		this.indexPicNumber = indexPicNumber;
	}

	public int getIndexPicWidth() {
		return indexPicWidth;
	}

	public void setIndexPicWidth(int indexPicWidth) {
		this.indexPicWidth = indexPicWidth;
	}

	public int getIndexPicHeight() {
		return indexPicHeight;
	}

	public void setIndexPicHeight(int indexPicHeight) {
		this.indexPicHeight = indexPicHeight;
	}

	public String getDomainName() {
		return domainName;
	}

	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}

	@Override
	public String toString() {
		return "BaseInfo [ICPRecord=" + ICPRecord + ", ICPConfirm="
				+ ICPConfirm + ", networkRecord=" + networkRecord
				+ ", networkConfirm=" + networkConfirm + ", copyright="
				+ copyright + ", contactPhone=" + contactPhone
				+ ", indexPicWidth=" + indexPicWidth + ", indexPicHeight="
				+ indexPicHeight + ", domainName=" + domainName
				+ ", indexPicNumber=" + indexPicNumber + "]";
	}
	

}
