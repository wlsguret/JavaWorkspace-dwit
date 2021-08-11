package controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

import javax.annotation.Resource;

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
        
        int fileLoop = 0;
        String uploadFileName;
        MultipartFile mFile = null;
        String orgFileName = ""; //진짜 파일명
        String sysFileName = ""; //변환된 파일명
        
        ArrayList<String> list = new ArrayList<String>();
        
        while(iterator.hasNext()) {
            fileLoop++;
            
            uploadFileName = iterator.next();
            mFile = request.getFile(uploadFileName);
            
            orgFileName = mFile.getOriginalFilename();    
            System.out.println(orgFileName);
            
            if(orgFileName != null && orgFileName.length() != 0) { //sysFileName 생성
                System.out.println("if문 진입");
                //SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMDDHHmmss-" + fileLoop);
                //Calendar calendar = Calendar.getInstance();
                //sysFileName = simpleDateFormat.format(calendar.getTime()); //sysFileName: 날짜-fileLoop번호
                sysFileName = video.getImgFile();
                
                
                try {
                    System.out.println("try 진입");
                    System.out.println(realPath+sysFileName);
                    System.out.println(dir+File.separator+sysFileName);
                    //mFile.transferTo(new File(realPath+ sysFileName)); // C:/Upload/testfile/sysFileName
                    mFile.transferTo(new File(dir+File.separator+ sysFileName)); // C:/Upload/testfile/sysFileName
                    list.add("원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName);
                    System.out.println("원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName);
                    
                }catch(Exception e){
                    list.add("파일 업로드 중 에러발생!!!");
                }
            }//if
        }//while
        
//        mv.addObject("list", list);
        
        return "forward:/video";
    }
}
