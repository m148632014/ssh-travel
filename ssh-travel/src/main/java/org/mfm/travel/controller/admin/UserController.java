package org.mfm.travel.controller.admin;


import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.mfm.basic.web.AjaxObject;
import org.mfm.travel.model.TravelException;
import org.mfm.travel.model.User;
import org.mfm.travel.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class UserController {
    @Inject
    private IUserService userService;


    @RequestMapping(value = "/user/index", method = RequestMethod.GET)
    public String index() {
        return "admin/user/index";
    }

    @RequestMapping(value = "/user/login", method = RequestMethod.GET)
    public String adminlogin() {
        return "admin/user/login";
    }


    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    public String adminlogin(String username, String password, HttpSession session, HttpServletResponse resp) throws IOException {
        AjaxObject ao = null;
        User lu = null;
        try {
            lu = userService.login(username, password);
            if (lu != null) {
                session.setAttribute("loginUser", lu);
            }
        } catch (TravelException e) {
            ao = new AjaxObject(0);
//            resp.getWriter().write(JsonUtil.getInstance().obj2json(ao));
            e.printStackTrace();
        }
        ao = new AjaxObject(1, "登录成功", lu);
        return "redirect:/admin/user/index";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("loginUser");
        session.invalidate();
        return "redirect:/admin/user/login";
    }

    @RequestMapping(value = "/ajaxUsers", method = RequestMethod.GET)
    public @ResponseBody
    List<User> listUsers() {
        return userService.list();
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("users", userService.list());
        return "user/list";
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "user/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(User user) {
        userService.add(user);
        return "user/add";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable int id, Model model) {
        model.addAttribute(userService.load(id));
        return "user/update";
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public String update(User user, @PathVariable int id, HttpServletResponse resp) throws IOException {
        AjaxObject ao = null;
        try {
            User u = userService.load(id);
            BeanUtils.copyProperties(u, user);
            userService.update(u);
        } catch (Exception e) {
            ao = new AjaxObject(0);
//            resp.getWriter().write(JsonUtil.getInstance().obj2json(ao));
            e.printStackTrace();
        }
        ao = new AjaxObject(1, "更新成功");
        return "redirect:/admin/user/users";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String update(@PathVariable int id) {
        userService.delete(id);
        return "redirect:/admin/user/users";
    }

}
