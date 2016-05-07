package org.mfm.basic.web;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.mfm.basic.model.SystemRequest;
import org.mfm.basic.model.SystemRequestHolder;


public class SystemContextFilter implements Filter{
	private Integer pageSize;
	private SystemRequest systemRequest;
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		Integer offset = 0;
		try {
			offset = Integer.parseInt(req.getParameter("pager.offset"));
		} catch (NumberFormatException e) {}
		try {
			systemRequest = new SystemRequest();
			SystemRequestHolder.initRequestHolder(systemRequest);
			systemRequest.setOrder(req.getParameter("order"));
			systemRequest.setSort(req.getParameter("sort"));
			systemRequest.setPageOffset(offset);
			systemRequest.setPageSize(pageSize);
			systemRequest.setRealpath(((HttpServletRequest)req).getSession().getServletContext().getRealPath("/"));
			chain.doFilter(req,resp);
		} finally {
			SystemRequestHolder.remove();
		}
	}

	@Override
	public void init(FilterConfig cfg) throws ServletException {
		try {
			pageSize = Integer.parseInt(cfg.getInitParameter("pageSize"));
		} catch (NumberFormatException e) {
			pageSize = 15;
		}
	}

}
