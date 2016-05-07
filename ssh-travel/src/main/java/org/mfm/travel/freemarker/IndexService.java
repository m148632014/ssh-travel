package org.mfm.travel.freemarker;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mfm.basic.model.SystemRequestHolder;
import org.mfm.basic.util.FreemarkerUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexService implements IIndexService {
	@SuppressWarnings("unused")
	private String ftlPath;
	private String outPath;
	private FreemarkerUtil util;
	
	@Autowired(required=true)
	public IndexService(String ftlPath, String outPath) {
		if(util == null){
			this.ftlPath = ftlPath;
			this.outPath = outPath;
			util = FreemarkerUtil.getInstance(ftlPath);
		} 
			
	}


	@Override
	public void generateTop() {
		// TODO Auto-generated method stub

	}
	//Freemarker 检测示例
	@Override
	public void generateBottom() {
		// TODO Auto-generated method stub
		List<String> strs = Arrays.asList("a","b","c");
		Map<String,Object> root = new HashMap<String,Object>();
		root.put("strs", strs);
		String outfile = SystemRequestHolder.getSystemRequest().getRealpath()+outPath+"/bottom.html";
		util.fprint(root, "/top.ftl", outfile);
	}

	@Override
	public void generateBody() {
		// TODO Auto-generated method stub

	}

}
