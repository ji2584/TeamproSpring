package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;



import dao.CartMybatisDao;


import model.Cart;


@Controller
@RequestMapping("/jumun/")
public class JumunController {
		
	
	@Autowired
	CartMybatisDao cd = new CartMybatisDao();
	HttpSession session;
	HttpServletRequest req;
	
	
	
	@RequestMapping("jumunAdd") 
	public String jumunadd(String pnumString) throws Exception {
        
        
      
        String id = (String) session.getAttribute("id");
       
        int pnum = Integer.parseInt(pnumString);
        Cart c = new Cart();
        c.setUserid(id);
        c.setItemid(pnum);       
        
        cd.addToAproducts(c);
		
		req.setAttribute("msg", "추가 되었습니다");
		req.setAttribute("url", "/jumun/jumunList");
		return "alert";
		
	}
	
	@RequestMapping("jumunList")
	public String jumunList() throws Exception {
        
		
        String id = (String) session.getAttribute("id");
		List<Cart>  li = cd.jumunList(id);

		System.out.println(li);
		req.setAttribute("li", li);
		
		return "jumun/jumunList";
	}

	@RequestMapping("myList")
	public String myList() throws Exception {
        
		
        String id = (String) session.getAttribute("id");
		List<Cart>  li = cd.myList(id);

		System.out.println(li);
		req.setAttribute("li", li);
		
		return "jumun/myList";
	}	
}


