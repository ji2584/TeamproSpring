package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;



import dao.BoardMybatisDao;
import dao.MemberMybatisDao;

import model.Amem;
import model.Auction;



@Controller
@RequestMapping("/member/")
public class MemberController {
	
	
	@Autowired
	MemberMybatisDao md;
	HttpSession session;
	HttpServletRequest request;
	
	@Autowired
	BoardMybatisDao bd;
	 
	@RequestMapping("index") //~~/board/index
	   public String index(HttpServletRequest req) throws Exception {
		      // TODO Auto-generated method stub
		String login = (String) session.getAttribute("id");
		Amem mem = md.oneMember(login);
		req.setAttribute("amem", mem);
	List<Auction> li = bd.mainList();	
		
		
		request.setAttribute("li", li);
		
	    return "member/index";
		}
	
	
	
	@ModelAttribute
	protected void service(HttpServletRequest request) throws ServletException, IOException {
		this.request=request;
		this.session = request.getSession();
	
		request.setCharacterEncoding("utf-8");
	}
	
	@RequestMapping("memberinput")
	public String memberinput() throws Exception {
		
		return "member/memberinput";
	}
	
	@RequestMapping("loginForm")
	public String loginForm() throws Exception {
		// TODO Auto-generated method stub
		return "member/loginForm";
	}
	


	@RequestMapping("logout")
	public String logout() throws Exception {
		
		session.invalidate();
		request.setAttribute("msg", "logout 했습니다.");
		request.setAttribute("url", "/member/loginForm");
		
		return "alert";
	}
	
	
	@RequestMapping("memberinfo")
	public String memberinfo() throws Exception {	
		
		
		String login = (String) session.getAttribute("id");
		Amem mem = md.oneMember(login);
		request.setAttribute("amem", mem);
		return "member/memberinfo";
	}
	
	@RequestMapping("loginPro")
	   public String loginPro(String id, String pass) throws Exception {
	    
	      Amem mem = md.oneMember(id);
	      session.setAttribute("mem", mem);
	     

	      String msg = "아이디를 확인하세요";
	      String url = "/member/loginForm";
	      if(mem != null ) { //id 존재할때
	         if (pass.equals(mem.getPass())) { //login ok
	            session.setAttribute("id", id);
	            if (mem.getAdminchk().equals("1")) {
	               session.setAttribute("admin", id);
	            msg = "관리자로 로그인하셧습니다.";
	            url = "/admin/main";
	            }else if(mem.getAdminchk().equals("0")){
	         msg = mem.getName() + "님이 로그인 하셨습니다.";
	          url = "/member/index";
	            }} else {
	            msg = "비밀번호를 확인하세요";
	         }
	      }
	      
	      request.setAttribute("msg", msg);
	      request.setAttribute("url", url);
	      
	      return "alert";
	   }

	@RequestMapping("memberPro")
	public String memberPro(Amem amem) throws Exception {
		
		
		
		

		
		System.out.println(amem);
		int num = md.insertMember(amem);
		
		String msg = "저장 하였습니다.";
		String url = "/member/loginForm";
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "alert";
	}
	//@Login(key = "id")
	@RequestMapping("memberUpdateForm")
	public String memberUpdateForm() throws Exception {
		
		String login =  (String) session.getAttribute("id");
	
		Amem mem = md.oneMember(login);
		
		request.setAttribute("amem", mem);		
		
		return "member/memberUpdateForm";
	}
	
	@RequestMapping("memberUpdatePro")
	public String memberUpdatePro(Amem mem) throws Exception {
		
		String login =  (String) session.getAttribute("id");
		
		request.setCharacterEncoding("utf-8");
		mem.setId(login); //session 저장 logout이면 에러남
		mem.setPass(request.getParameter("pass"));
		mem.setName(request.getParameter("name"));
	
		mem.setTel(request.getParameter("tel"));
		mem.setEmail(request.getParameter("email"));
		

	
		Amem memdb = md.oneMember(login);  //db에서 넘어온자료

		String msg = "수정 되지 않았습니다.";
		String url ="/member/memberUpdateForm";
		if(memdb!=null) {
			if(memdb.getPass().equals(mem.getPass())) {  //수정 ok
				  msg = "수정 되었습니다.";
				  md.updateMember(mem);
				  url ="/member/memberinfo";
			}else {
				msg="비밀번호가 틀렸습니다.";
			}
		}		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "alert";
	}
	
	@RequestMapping("memberDeleteForm")
	public String memberDeleteForm() throws Exception {		
		
		return "member/memberDeleteForm";
	}
	
	@RequestMapping("memberDeletePro")
	public String memberDeletePro(String pass) throws Exception {
		
		String login =  (String) session.getAttribute("id");
	
	
	Amem memdb = md.oneMember(login);
	String msg = "탈퇴되지 않았습니다.";
	String url ="/member/memberDeleteForm";

	if(memdb!=null) {
		if(memdb.getPass().equals(pass)) {  //비밀번호 확인
			  msg = "탈퇴 되었습니다.";
			  md.deleteMember(login);
			  session.invalidate();
			  url ="/member/index";
		}else {
			msg="비밀번호가 틀렸습니다.";
		}
	}
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	
	return "alert";
	}
	
	@RequestMapping("memberPassForm")
	public String memberPassForm() throws Exception {		
		
		return "member/memberPassForm";
	}
	
	@RequestMapping("memberPassPro")
	public String memberPassPro(String pass, String chgpass) throws Exception {
		
		String login =  (String) session.getAttribute("id");
	

	Amem memdb = md.oneMember(login);

	String msg = "비밀번호 수정을 실패 했습니다.";
	String url ="/member/memberPassForm";

	if(memdb!=null) {
		if(memdb.getPass().equals(pass)) {  
			  md.passMember(login, chgpass);
			  msg = login+"님이 비밀번호가 수정 되었습니다.";	  
			  url = "/member/index";
		}else {
			msg="비밀번호가 틀렸습니다.";
		}
	}
	request.setAttribute("msg", msg);
	request.setAttribute("url", url);
	
	return "alert";
	}
	
	
	
	
}
