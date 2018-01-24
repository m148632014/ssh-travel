package org.mfm.travel.controller.pub;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.mfm.basic.web.AjaxObject;
import org.mfm.travel.dto.AjaxObj;
import org.mfm.travel.dto.TravelNoteDto;
import org.mfm.travel.model.Note;
import org.mfm.travel.model.Picture;
import org.mfm.travel.model.TravelNote;
import org.mfm.travel.service.INoteService;
import org.mfm.travel.service.IPictureService;
import org.mfm.travel.service.ITravelNoteService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/travelnote")
public class PublicTravelNoteController {
    @Inject
    private IPictureService pictureService;
    @Inject
    private ITravelNoteService travelNoteService;
    @Inject
    private INoteService noteService;

    //private final static List<String> imgTypes = Arrays.asList("jpg","jpeg","gif","png");
    @RequestMapping("/travelnotes")
    public String listTravelNote() {
        List<TravelNote> tns = travelNoteService.listAll();
        List<TravelNoteDto> tnsDto = new ArrayList<TravelNoteDto>();
        for (TravelNote t : tns) {
            tnsDto.add(new TravelNoteDto(t, pictureService.loadIndexPicByTravelNoteId(t.getId())));
        }
        return "public/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "public/travelnote/add";
    }


    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody
    AjaxObj upload(MultipartFile attach, String pictype, HttpServletResponse resp) throws IOException {
        System.out.println(attach.getName() + "----------" + attach.getOriginalFilename() + "---" + attach.getSize() + "----" + attach.getContentType());
        AjaxObj ao = null;
        Picture picture = new Picture();
        String ext = FilenameUtils.getExtension(attach.getOriginalFilename());
        picture.setSuffix(ext);
        picture.setSize(attach.getSize());
        picture.setContentType(attach.getContentType());
        picture.setNewName(String.valueOf(new Date().getTime()) + "." + ext);
        picture.setOldName(FilenameUtils.getBaseName(attach.getOriginalFilename()));
        picture.setLinkType(0); //站内链接
        ao = new AjaxObj();
        ao.setResult(1);
        ao.setObj(picture);
        return ao;
/*		resp.setContentType("text/plain;charset=utf-8");
		
		pictureService.add(picture,pictype,attach.getInputStream());
		
		try {
			ao = new AjaxObj();
			ao.setResult(1);
			ao.setObj(picture);
			resp.getWriter().write(JsonUtil.getInstance().obj2json(ao));
		} catch (IOException e) {
			ao = new AjaxObj(0,e.getMessage());
		}*/
    }


    @RequestMapping(value = "/add/textnote", method = RequestMethod.POST)
    public @ResponseBody
    AjaxObject addTextNote(Note note) {
        AjaxObject ao = null;
        try {
            noteService.add(note);
            ao = new AjaxObject(1, "添加成功", note);
        } catch (Exception e) {
            e.printStackTrace();
            ao = new AjaxObject(0, "添加失败", e);
            return ao;
        }
        return ao;
    }
}
