package org.mfm.travel.web;


import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

import org.mfm.travel.model.BaseInfo;

public class BaseInfoUtil {
	private static BaseInfoUtil biu;
	private static Properties prop;
	
	private BaseInfoUtil() throws IOException {
		if(prop==null) {
			prop = new Properties();
			prop.load(new InputStreamReader(BaseInfoUtil.class.getClassLoader().getResourceAsStream("baseinfo.properties"), "UTF-8"));
		}
	}
	
	public static BaseInfoUtil getInstacne() {
		try {
			if(biu==null) {
				biu = new BaseInfoUtil();
			}
			return biu;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {
		BaseInfo bi = getInstacne().read();
		System.out.println(bi);
	}
	/**
	 *  ICPRecord=京ICP备11015476号
		ICPConfirm=京ICP证110318号
		networkRecord=京公网安备110105013401号
		networkConfirm=新出网证(京)字242号
		copyright=© 2015 Mafengwo.cn
		contactPhone=400 166 6866
		indexPicSize=1680*634
		indexPicNumber=5
		domainName=http://www.mafengwo.cn/
	 * @return
	 */
	public BaseInfo read() {
		BaseInfo bi = new BaseInfo();
		bi.setICPConfirm(prop.getProperty("ICPConfirm"));
		bi.setICPRecord(prop.getProperty("ICPRecord"));
		bi.setNetworkRecord(prop.getProperty("networkRecord"));
		bi.setNetworkConfirm(prop.getProperty("networkConfirm"));
		bi.setCopyright(prop.getProperty("copyright"));
		bi.setContactPhone(prop.getProperty("contactPhone"));
		bi.setDomainName(prop.getProperty("domainName"));
		bi.setIndexPicNumber(Integer.parseInt(prop.getProperty("indexPicNumber")));
		String w = prop.getProperty("indexPicSize");
		String[] ws = w.split("\\*");
		bi.setIndexPicWidth(Integer.parseInt(ws[0]));
		bi.setIndexPicHeight(Integer.parseInt(ws[1]));
		return bi;
	}
	
	public BaseInfo write(BaseInfo bi) {
		FileOutputStream fos = null;
		try {
			prop.setProperty("ICPConfirm",bi.getICPConfirm());
			prop.setProperty("ICPRecord",bi.getICPRecord());
			prop.setProperty("networkRecord",bi.getNetworkRecord());
			prop.setProperty("networkConfirm",bi.getNetworkConfirm());
			prop.setProperty("copyright",bi.getCopyright());
			prop.setProperty("domainName",bi.getDomainName());
			prop.setProperty("contactPhone",bi.getContactPhone());
			prop.setProperty("indexPicNumber",String.valueOf(bi.getIndexPicNumber()));
			prop.setProperty("indexPicSize", bi.getIndexPicWidth()+"*"+bi.getIndexPicHeight());
			String path = BaseInfoUtil.class.getClassLoader().getResource("baseinfo.properties").getPath();
			fos = new FileOutputStream(path);
			prop.store(fos,null);
			return bi;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(fos!=null) fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
