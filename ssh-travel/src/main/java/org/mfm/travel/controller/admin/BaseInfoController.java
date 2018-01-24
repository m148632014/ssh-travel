package org.mfm.travel.controller.admin;

import org.mfm.travel.model.BaseInfo;
import org.mfm.travel.web.BaseInfoUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/baseInfo")
public class BaseInfoController {
    @RequestMapping("/show")
    public String show(Model model) {
        model.addAttribute("baseInfo", BaseInfoUtil.getInstacne().read());
        return "admin/baseInfo/show";
    }

    @RequestMapping(value = "/update", method = RequestMethod.GET)
    public String update(Model model) {
        model.addAttribute("baseInfo", BaseInfoUtil.getInstacne().read());
        return "admin/baseInfo/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(BaseInfo baseInfo) {
        BaseInfoUtil.getInstacne().write(baseInfo);
        return "redirect:/admin/baseInfo/show";
    }
}
