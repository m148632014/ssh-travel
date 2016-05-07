package org.mfm.travel.service.impl;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.imageio.ImageIO;
import javax.inject.Inject;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.Thumbnails.Builder;
import net.coobird.thumbnailator.geometry.Positions;

import org.apache.commons.io.FileUtils;
import org.mfm.basic.model.Pager;
import org.mfm.basic.model.SystemRequestHolder;
import org.mfm.travel.dao.IAttachmentDao;
import org.mfm.travel.model.Attachment;
import org.mfm.travel.service.IAttachmentService;
import org.springframework.stereotype.Service;

@Service("attachmentService")
public class AttachmentService implements IAttachmentService {
	public final static int IMG_WIDTH = 230;
	public final static int IMG_HEIGHT = 325;
	public final static int THUMBNAIL_WIDTH = 130;
	public final static int THUMBNAIL_HEIGHT = 183;
	public final static String UPLOAD_PATH="\\resources\\upload\\";
	
	private IAttachmentDao attachmentDao;
	
	public IAttachmentDao getAttachmentDao() {
		return attachmentDao;
	}
	
	@Inject
	public void setAttachmentDao(IAttachmentDao attachmentDao) {
		this.attachmentDao = attachmentDao;
	}
	
	public static void deleteAttachFiles(Attachment a) {
		String realPath =  SystemRequestHolder.getSystemRequest().getRealpath();
		realPath +=UPLOAD_PATH;
		new File(realPath+"tspics\\"+a.getNewName()).delete();
		new File(realPath+"thumbnail\\"+a.getNewName()).delete();
		
	}

	@Override
	public void add(Attachment a,InputStream is) throws IOException {
		try {
			attachmentDao.add(a);
			addFile(a,is);
		} catch (IOException e) {
			e.printStackTrace();
			throw e;
		}
	}
	/**
	 * 进行文件的存储
	 * @param a
	 * @param is
	 * @throws IOException
	 */
	private void addFile(Attachment a,InputStream is) throws IOException {
		//1.获取文件的保存路径----path为默认附件保存路径，如果附件是图片，则生成缩略图保存到thumbPath下
		String realPath =  SystemRequestHolder.getSystemRequest().getRealpath();
		String path = realPath+"/resources/upload/tspics/";
		String thumbPath = realPath+"/resources/upload/thumbnail/";
		File fp = new File(path);
		File tfp = new File(thumbPath);
		if(!fp.exists()) fp.mkdirs();
		if(!tfp.exists()) tfp.mkdirs();
		path = path+a.getNewName();
		thumbPath = thumbPath+a.getNewName();
		//2.如果是图片类型，保存缩略图和原图
		if(a.getType()==1) {
			BufferedImage oldBi = ImageIO.read(is);
			int width = oldBi.getWidth();
			Builder<BufferedImage> bf = Thumbnails.of(oldBi);
			if(width>IMG_WIDTH) {
				bf.scale((double)IMG_WIDTH/(double)width);
			} else {
				bf.scale(1.0f);
			}
			//保存原图
			bf.toFile(path); 
			//生成缩略图
			BufferedImage tbi = Thumbnails.of(oldBi)
						.scale((THUMBNAIL_WIDTH*1.0)/width).asBufferedImage();
			//以中心开始切割
			Thumbnails.of(tbi).scale(1.0f)
				.sourceRegion(Positions.CENTER, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT)
				.toFile(thumbPath);//并保存缩略图
			
		} else {
			FileUtils.copyInputStreamToFile(is, new File(path));
		}
	}

	@Override
	public void delete(int id) {
		Attachment a = attachmentDao.load(id);
		attachmentDao.delete(id);
		deleteAttachFiles(a);
	}

	@Override
	public Attachment load(int id) {
		return attachmentDao.load(id);
	}


	@Override
	public void clearNoUseAttachment() {
		attachmentDao.clearNoUseAttachment();
	}


	@Override
	public List<Attachment> listAttachByTravelStrategy(int tid) {
		return attachmentDao.listAttachByTravelStrategy(tid);
	}

	@Override
	public Pager<Attachment> listAllPic() {
		return attachmentDao.listAllPic();
	}

	@Override
	public long findNoUseAttachmentNum() {
		return attachmentDao.findNoUseAttachmentNum();
	}

	@Override
	public Pager<Attachment> findNoUseAttachment() {
		return attachmentDao.findNoUseAttachment();
	}

	@Override
	public Attachment loadPicAttach(int tid) {
		return attachmentDao.loadPicAttach(tid);
	}

	
}
