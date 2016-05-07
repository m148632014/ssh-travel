package org.mfm.travel.dwr;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.mfm.travel.service.IAttachmentService;
import org.mfm.travel.service.ITravelNoteService;
import org.mfm.travel.service.ITravelStrategyService;

@RemoteProxy(name="dwrService")
public class DwrService implements IDwrService{
	@Inject
	private IAttachmentService attachmentService;
	@Inject
	private ITravelStrategyService travelStrategyService;
	@Inject
	private ITravelNoteService travelNoteService;
	
	public IAttachmentService getAttachmentService() {
		return attachmentService;
	}

	public void setAttachmentService(IAttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}
	@RemoteMethod
	public String upload(InputStream is,String filename) throws IOException {
		//可以获取相应的ServletApi
		HttpServletRequest req = WebContextFactory.get().getHttpServletRequest();
		String realPath = req.getSession().getServletContext().getRealPath("/img");
		String fn = FilenameUtils.getName(filename);
		
		FileUtils.copyInputStreamToFile(is, new File(realPath+"/"+fn));
		return fn;
	}


	@Override
	@RemoteMethod
	public void deleteAttach(int id) {
		attachmentService.delete(id);
	}
	
	@Override
	@RemoteMethod
	public void deleteStrategy(int id) {
		travelStrategyService.delete(id);
	}
	@Override
	@RemoteMethod
	public void deleteTravelNote(int id) {
		travelNoteService.delete(id);
	}

}
