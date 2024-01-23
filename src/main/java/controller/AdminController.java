package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;

import dao.AdminMybatisDao;

import dao.BoardMybatisDao;
import dao.MemberMybatisDao;
import model.Amem;
import model.Auction;
import model.Comment;
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
   public String ReportForm(int num) throws Exception {
	   System.out.println(num);
	   String login = (String) session.getAttribute("id");
	   Amem mem = md.oneMember(login);
	    request.setAttribute("amem", mem);
	       Auction auc = ad.oneReport(num);
	     
	     request.setAttribute("auction", auc);
	    
	
      
      return "admin/ReportForm";
      
      
      
      
   }
   
   
   
   
   
   
   @RequestMapping("ReportPro")
   public String ReportPro(HttpServletRequest request,int pnum) throws Exception {
	   System.out.println("pro  "+pnum);
	   String login = (String) session.getAttribute("id");
	   Amem mem = md.oneMember(login);
	    request.setAttribute("amem", mem);
	     
	     Auction auc = ad.oneReport(pnum);
	     
	     request.setAttribute("auction", auc);
	    
	   
	   
	    
       Report rep = new Report();
       
       // 사용자가 제출한 내용
       String content = request.getParameter("content");  // 실제로는 요청에서 받아오는 데이터로 대체"
       
       rep.setReportid(login);
       rep.setReportpnum(pnum);
       rep.setContent(content);
       rep.setRegdate(new Date());
       // ReportService를 통해 데이터 저장
        ad.insertReport(rep);

       String msg = "게시물 신고 완료";
       String url = "/board/boardInfo?num="+pnum;

       request.setAttribute("msg", msg);
       request.setAttribute("url", url);
       return "alert";
   }
   
  

   @RequestMapping("Reportlist")
   public String reportList(Model model) {
       List<Report> reportList = ad.selectReportList();
       model.addAttribute("reportList", reportList);
       return "admin/Reportlist"
       ;
   }
   
   @RequestMapping("reportInfo")
   public String reportInfo(Model model,@RequestParam int reportpnum, String amemid) {
       // contentReport 메서드 호출
	   List<Report> reportlist = ad.contentReport(reportpnum, amemid);

       // 모델에 데이터 추가
       model.addAttribute("reportlist", reportlist);

       // 뷰 이름 반환
       return "admin/reportInfo";
   }
   }
   
 
   
   