package org.mfm.travel.controller.admin;


import javax.inject.Inject;

import org.mfm.travel.service.ITravelNoteService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/travelnote")
public class TravelNoteController {
    @Inject
    private ITravelNoteService travelNoteService;


    @RequestMapping("/travelnotes")
    public String list(Model model) {
        model.addAttribute("travelnotes", travelNoteService.listAll());
        return "admin/travelnote/list";
    }

    @RequestMapping("/strategys")
    public String delete(int tnId) {
        return "admin/travelnote/list";
    }


}
