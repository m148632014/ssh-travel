package org.mfm.travel.controller.pub;

import java.util.List;

import javax.inject.Inject;

import org.mfm.travel.dto.StrategyDto;
import org.mfm.travel.model.TravelStrategy;
import org.mfm.travel.service.IAttachmentService;
import org.mfm.travel.service.ITravelStrategyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/strategy")
public class PublicStrategyController {
	@Inject
	private ITravelStrategyService travelStrategyService;
	
	@Inject
	private IAttachmentService attachmentService;

	
	@RequestMapping("/strategys")
	public String list(Model model) {
		model.addAttribute("sts",travelStrategyService.listStrategyDto());
		return "/public/strategy/index";
	}
	
	@RequestMapping(value="/s",method=RequestMethod.GET)
	public @ResponseBody List<StrategyDto> list() {
		return travelStrategyService.listStrategyDto();
	}
	
	
	@RequestMapping("/show/{id}") //以后可以静态化为show-id.html
	public String show(@PathVariable int id,Model model) {
		TravelStrategy strategy = travelStrategyService.load(id);
		model.addAttribute("travelStrategy",strategy);
		model.addAttribute("atts",attachmentService.listAttachByTravelStrategy(id));
		String keyword = strategy.getKeyword();
		if(keyword!=null&&!"".equals(keyword.trim())) {
			model.addAttribute("keywords",keyword.split("\\|"));
		}
		return "/public/strategy/show";
	}
	
	
	
}
