package controller;

import java.io.IOException;
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

import com.oreilly.servlet.MultipartRequest;

import dao.BoardMybatisDao;

import dao.MemberMybatisDao;


import model.Comment;
import model.Amem;
import model.Auction;


@Controller
@RequestMapping("/board/")
public class BoardController  {
	@Autowired
	BoardMybatisDao bd;
	@Autowired
	MemberMybatisDao md;
	HttpSession session;
	HttpServletRequest req;
	
	
	@ModelAttribute
	protected void service(HttpServletRequest request) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		this.session = request.getSession();
		this.req=request;
	}
	
	@RequestMapping("boardForm")
	public String boardForm(String boardid, String pageNum) throws Exception {
		// TODO Auto-generated method stub
		String login = (String) session.getAttribute("id");
		Amem mem = md.oneMember(login);
		req.setAttribute("amem", mem);
		
		if (req.getParameter("boardid") != null) { // ? boardid = 3
			session.setAttribute("boardid",boardid);
			session.setAttribute("pageNum", "1");
		}
		
	    boardid = (String) session.getAttribute("boardid");
		if (boardid == null) boardid = "1";
		String boardPname = "";
		switch (boardid) {
		case "1":
			boardPname = "가전";
			break;
		case "2":
			boardPname = "의류";
			break;
		case "3":
			boardPname = "기타";
			break;
		case "4":
			boardPname = "도서";
			break;

		}
		req.setAttribute("boardPname", boardPname);
		return "board/boardForm";
	}

	@RequestMapping("boardPro")
	public String boardPro() throws Exception {

		String path = req.getServletContext().getRealPath("/") + "image/board/";
		String filename = null;
		String msg = "게시물 등록 실패";
		String url = "/board/boardForm";

		MultipartRequest multi = new MultipartRequest(req, path, 10 * 1024 * 1024, "UTF-8");
		Auction board = new Auction();
		
		String boardid = (String) session.getAttribute("boardid");
			if (boardid == null)				boardid = "1";
		board.setBoardid(boardid);
		
		board.setUserid(multi.getParameter("userid"));
		board.setPname(multi.getParameter("pname"));
		board.setPass(multi.getParameter("pass"));
		board.setPicture(multi.getParameter("picture"));
		board.setPrice(multi.getParameter("price"));
		board.setSubject(multi.getParameter("subject"));
		board.setContent(multi.getParameter("content"));
		board.setFile1(multi.getFilesystemName("file1")); // name="file1"
		System.out.println(board);
		
		int num = bd.insertBoard(board);
		if (num > 0) {
			msg = "게시물 등록 성공";
			url = "/board/products";
		}
		req.setAttribute("msg", msg);
		req.setAttribute("url", url);
		return "alert";
	}

	@RequestMapping("products")
	   public String products(String boardid, String pageNum, String pagePnum) throws Exception {
	      // TODO Auto-generated method stub

	      // board session 처리한다.
	      if (boardid != null) { // ? boardid = 3
	         session.setAttribute("boardid", boardid);
	         session.setAttribute("pageNum", "1");
	      }
	      
	      boardid = (String) session.getAttribute("boardid");
	      if (boardid == null) boardid = "1";
	      String boardPname = "";
	      switch (boardid) {
	      case "1":
	         boardPname = "가전";
	         break;
	      case "2":
	         boardPname = "의류";
	         break;
	      case "3":
	         boardPname = "기타";
	         break;
	      case "4":
	         boardPname = "도서";
	         break;
	   

	      }

	      // page 설정
	      if (pagePnum != null) {
	          session.setAttribute("pagePnum", pagePnum);
	      }

	      pageNum = (String) session.getAttribute("pagePnum"); 
	      if (pagePnum == null) {
	         pagePnum = "1";
	      }

	      int limit = 15; // 한 페이지당 게시글 갯수
	      int pageInt = Integer.parseInt(pagePnum); // 페이지 번호
	      int boardCount = bd.boardCount(boardid); // 전체 게시글 갯수

	      int boardNum = boardCount - ((pageInt - 1) * limit);

	      List<Auction> li = bd.boardList(pageInt, limit, boardid);

	      // paging
	      int bottomLine = 3;
	      int start = (pageInt - 1) / bottomLine * bottomLine + 1;
	      int end = start + bottomLine - 1;
	      int maxPage = (boardCount + limit - 1) / limit;

	      if (end > maxPage) {
	          end = maxPage;
	      }

	      req.setAttribute("bottomLine", bottomLine);
	      req.setAttribute("start", start);
	      req.setAttribute("end", end);
	      req.setAttribute("maxPage", maxPage);
	      req.setAttribute("pageInt", pageInt);

	      req.setAttribute("li", li);
	      req.setAttribute("boardPname", boardPname);
	      req.setAttribute("boardCount", boardCount);
	      req.setAttribute("boardNum", boardNum);
	      
	      return "board/products";

	   }
	
	@RequestMapping("boardInfo")
	public String boardInfo(int num) throws Exception {
		// TODO Auto-generated method stub
		

		String login = (String) session.getAttribute("id");
		Amem mem = md.oneMember(login);
		req.setAttribute("amem", mem);
				
		Auction board = bd.oneBoard(num);
		List<Comment> commentLi = bd.commentList(num);
		int count = commentLi.size();
		req.setAttribute("commentLi", commentLi);
		req.setAttribute("board", board);
		req.setAttribute("count", count);

		return "board/boardInfo";
	}

	@RequestMapping("boardUpdateForm")
	public String boardUpdateForm(int num) throws Exception {
		Auction board = bd.oneBoard(num);
		req.setAttribute("board", board);
		return "board/boardUpdateForm";
	}

	@RequestMapping("boardUpdatePro")
	public String boardUpdatePro() throws Exception {

		String path = req.getServletContext().getRealPath("/") + "image/board/";
		String filename = null;

		MultipartRequest multi = new MultipartRequest(req, path, 10 * 1024 * 1024, "utf-8");
		int pnum = Integer.parseInt(multi.getParameter("pnum"));
		Auction originboard = bd.oneBoard(pnum);

		String msg = "게시물 수정 실패";
		String url = "/board/boardForm?num=" + originboard.getPnum();
		if (originboard.getPass().equals(multi.getParameter("pass"))) {

			String nfileName = multi.getFilesystemName("file1");
			Auction board = new Auction();
			board.setBoardid("1");
			board.setPnum(pnum);
			board.setPname(multi.getParameter("pname"));
			board.setPass(multi.getParameter("pass"));
			board.setSubject(multi.getParameter("subject"));
			board.setContent(multi.getParameter("content"));

			if (nfileName == null) {
				board.setFile1(multi.getParameter("originfile"));
			} else {
				board.setFile1(nfileName);
			}
			System.out.println(board);
			int count = bd.updateBoard(board);
			if (count > 0) {
				msg = "게시판 수정 완료";
				url = "/board/boardInfo?num=" + originboard.getPnum();
			}
		} else {
			msg = "비밀번호를 확인하세요.";
		}
		req.setAttribute("msg", msg);
		req.setAttribute("url", url);
		return "alert";

	}

	@RequestMapping("boardDeleteForm")
	public String boardDeleteForm() throws Exception {
		// TODO Auto-generated method stub
		req.setAttribute("pnum", req.getParameter("num"));
		return "board/boardDeleteForm";
	}

	@RequestMapping("boardDeletePro")
	public String boardDeletePro(int num) throws Exception {
	
		Auction board = bd.oneBoard(num);
		String msg = "삭제 불가합니다";
		String url = "/board/boardDeleteForm?num=" + num;
		if (board.getPass().equals(req.getParameter("pass"))) {
			int count = bd.boardDelete(num);
			if (count > 0) {
				msg = "게시글이 삭제 되었습니다";
				url = "/board/products";
			}

		} else {
			msg = "비밀번호 확인하세요";
		}
		req.setAttribute("msg", msg);
		req.setAttribute("url", url);
		return "alert";

	}

	@RequestMapping("boardCommentPro")
	   public View boardCommentPro(String comment, String userid, int boardnum) throws Exception {
		
	      bd.insertComment(comment, boardnum);
	      Comment c = new Comment();
	      
	      c.setNum(boardnum);
	      c.setContent(comment);
	      req.setAttribute("c", c);
	      req.setAttribute("userid", req.getParameter("userid"));
	      req.setAttribute("count", req.getParameter("count"));
	      return new InternalResourceView("/single/boardCommentPro.jsp");
	}
	
}