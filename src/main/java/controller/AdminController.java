package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;

import dao.AdminMybatisDao;
import dao.AuctionDAO;
import dao.BoardMybatisDao;
import dao.MemberMybatisDao;
import model.Amem;
import model.Auction;
import model.Report;



@Controller
@RequestMapping("/admin/")
public class AdminController  {
   
   @Autowired
   HttpSession session;
   HttpServletRequest request;
   @Autowired
   AdminMybatisDao ad;
   @Autowired
   MemberMybatisDao md;
   @Autowired
   BoardMybatisDao bd;
   
   @RequestMapping("main")
   public String main() throws Exception {
      // TODO Auto-generated method stub
      return "admin/main";
   }
   
   @ModelAttribute
   protected void service(HttpServletRequest request) throws ServletException, IOException {
	  this.request=request;
	  request.setCharacterEncoding("utf-8");
	  this.session = request.getSession();
	  
      
   }
   

   @RequestMapping("AdminReport")
   public String AdminReport() throws Exception {
	
      return "admin/AdminReport";
      
      
      
      
   }
   
     
  
   
   @RequestMapping("ReportForm")
   public String ReportForm() throws Exception {
	   String login = (String) session.getAttribute("id");
	   Amem mem = md.oneMember(login);
	    request.setAttribute("amem", mem);
	    
	    
	
      
      return "admin/ReportForm";
      
      
      
      
   }
   
   
   
   
   
   
   @RequestMapping("ReportPro")
   public String ReportPro() throws Exception {
	   String login = (String) session.getAttribute("id");
	   Amem mem = md.oneMember(login);
	    request.setAttribute("amem", mem);
	   
	   
       Report rep = new Report();
       
       // 사용자가 제출한 내용
       String content = request.getParameter("content");  // 실제로는 요청에서 받아오는 데이터로 대체"
       	
       rep.setContent(content);
       rep.setRegdate(new Date());
       // ReportService를 통해 데이터 저장
        ad.insertReport(rep);

       String msg = "게시물 신고 완료";
       String url = "/admin/ReportForm";

       request.setAttribute("msg", msg);
       request.setAttribute("url", url);
       return "alert";
   }
      
   }
   
 
   
   