package controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import video.model.VideoVO;
import video.service.VideoService;

@Controller
public class VideoController {

	@Resource(name = "videoservice")
	VideoService service;
	
	@RequestMapping("/video")
	public ModelAndView video() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Video/video.jsp");
		mv.addObject("mvlist", service.videoList());
		return mv;
	}
	
	@RequestMapping("/videoAdd")
	public ModelAndView videoAdd() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Video/videoAdd.jsp");
		return mv;
	}
	
	@RequestMapping("/videoInsert")
	public String videoInsert(VideoVO video, MultipartHttpServletRequest request) {
		System.out.println(video);
		String realPath = request.getSession().getServletContext().getRealPath("/static/img/mvtitleImg/");
		String rootUploadDir = "C:\\Users\\admin\\git\\JavaWorkspace-dwit\\MainProject\\src\\main\\webapp\\static\\img";
        
        File dir = new File(rootUploadDir + "\\mvtitleImg"); 
        
        if(!dir.exists()) { //업로드 디렉토리가 존재하지 않으면 생성
            dir.mkdirs();
        }
        
        Iterator<String> iterator = request.getFileNames(); //업로드된 파일정보 수집(2개 - file1,file2)
        
        String uploadFileName;
        MultipartFile mFile = null;
        String orgFileName = ""; //진짜 파일명
        String sysFileName = ""; //변환된 파일명
        
        while(iterator.hasNext()) {            
            uploadFileName = iterator.next();
            mFile = request.getFile(uploadFileName);
            orgFileName = mFile.getOriginalFilename();    
            if(orgFileName != null && orgFileName.length() != 0) {
                sysFileName = video.getImgFile();
                try {
                    mFile.transferTo(new File(dir+File.separator+ sysFileName));
                    mFile.transferTo(new File(realPath+File.separator+sysFileName));
                    System.out.println("원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName);
                    System.out.println(service.videoInsert(video));
                }catch(Exception e){
                	e.printStackTrace();
                }
            }
        }

        return "redirect:/video";
    }
}
