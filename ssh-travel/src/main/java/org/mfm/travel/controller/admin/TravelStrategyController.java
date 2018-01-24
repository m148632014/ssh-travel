package org.mfm.travel.controller.admin;

import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.mfm.basic.model.Pager;
import org.mfm.basic.model.SystemRequest;
import org.mfm.basic.model.SystemRequestHolder;
import org.mfm.travel.dto.AjaxObj;
import org.mfm.travel.model.Attachment;
import org.mfm.travel.model.TravelStrategy;
import org.mfm.travel.model.User;
import org.mfm.travel.service.IAttachmentService;
import org.mfm.travel.service.IKeywordService;
import org.mfm.travel.service.ITravelStrategyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/admin/strategy")
public class TravelStrategyController {
    @Inject
    private ITravelStrategyService travelStrategyService;
    @Inject
    private IAttachmentService attachmentService;
    @Inject
    private IKeywordService keywordService;

    private final static List<String> imgTypes = Arrays.asList("jpg", "jpeg", "gif", "png");
    private final static List<String> zipTypes = Arrays.asList("zip", "rar", "7z");

    @RequestMapping("/strategys")
    public String list(@RequestParam(required = false) String con, Model model) {
        SystemRequest systemRequest = new SystemRequest();
        systemRequest.setSort("createDate");
        systemRequest.setOrder("desc");
        SystemRequestHolder.initRequestHolder(systemRequest);
        if (con == null) con = "";
        Pager<TravelStrategy> pages = travelStrategyService.findAllStrategy(con);
        model.addAttribute("pages", pages);
        SystemRequestHolder.remove();
        model.addAttribute("con", con);        //回显条件
        return "admin/strategy/list";
    }

    @RequestMapping("/show/{id}")
    public String show(@PathVariable int id, Model model) {
        model.addAttribute(travelStrategyService.load(id));
        model.addAttribute("atts", attachmentService.listAttachByTravelStrategy(id));
        return "admin/strategy/show";
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "admin/strategy/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(TravelStrategy travelStrategy, Integer[] aids, String[] aks, HttpSession session) {
        User loginUser = new User();
        StringBuffer keys = new StringBuffer();
        if (aks != null) {
            for (String k : aks) {
                keys.append(k).append("|");
                keywordService.addOrUpdate(k);
            }
        }
        travelStrategy.setKeyword(keys.toString());
        travelStrategyService.add(travelStrategy, loginUser.getId(), aids);
        return "redirect:/admin/strategy/strategys";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable int id, Model model) {
        TravelStrategy strategy = travelStrategyService.load(id);
        model.addAttribute("strategy", strategy);
        model.addAttribute("atts", attachmentService.listAttachByTravelStrategy(id));
        String keyword = strategy.getKeyword();
        if (keyword != null && !"".equals(keyword.trim()))
            model.addAttribute("keywords", keyword.split("\\|"));
        return "admin/strategy/update";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public String update(@PathVariable int id, TravelStrategy travelStrategy, Integer[] aids, String[] aks, HttpSession session) {
        User loginUser = new User();
        StringBuffer keys = new StringBuffer();
        if (aks != null) {
            for (String k : aks) {
                keys.append(k).append("|");
                keywordService.addOrUpdate(k);
            }
        }
        travelStrategy.setKeyword(keys.toString());
        travelStrategyService.update(travelStrategy, loginUser.getId(), aids);
        return "redirect:/admin/strategy/strategys";
    }


    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public void upload(MultipartFile attach, HttpServletResponse resp) {
        resp.setContentType("text/plain;charset=utf-8");
        AjaxObj ao = null;
        try {
            Attachment attachment = new Attachment();
            String ext = FilenameUtils.getExtension(attach.getOriginalFilename());
            if (imgTypes.contains(ext)) {
                attachment.setType(1); // indexPic
            } else if (zipTypes.contains(ext)) {
                attachment.setType(2); // zip/rar
            } else {
                attachment.setType(3); // pdf
            }
            attachment.setSuffix(ext);
            attachment.setContentType(attach.getContentType());
            attachment.setNewName(String.valueOf(new Date().getTime()) + "." + ext);
            attachment.setOldName(FilenameUtils.getBaseName(attach.getOriginalFilename()));
            attachment.setSize(attach.getSize());
            attachment.setTravelStrategyId(0); //【注意】:点击上传时候不设置，添加攻略时候在指定附件id
            attachmentService.add(attachment, attach.getInputStream());
            ao = new AjaxObj(1, null, attachment);
//            resp.getWriter().write(JsonUtil.getInstance().obj2json(ao));
        } catch (IOException e) {
            ao = new AjaxObj(0, e.getMessage());
        }
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable int id, Integer status) {
        travelStrategyService.delete(id);
        return "redirect:/admin/strategy/strategys";
    }

}
