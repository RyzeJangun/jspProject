package userManage;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userManage.dao.UserManageDAO;
import userManage.dto.UserManageDTO;


@WebServlet("/userManage_servlet/*")
public class UserManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		String uri=request.getRequestURI();//요청한 주소
		System.out.println(uri);
		UserManageDAO dao=new UserManageDAO();
		//1.로그인 제어                                                           
		if(uri.indexOf("login.do")!=-1) {
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			UserManageDTO dto=new UserManageDTO();
			dto.setId(id);
			dto.setPw(pw);
			System.out.println(dto);
			String name=dao.login(dto);
			System.out.println(name);
			String message="";
			String url;
			if(name!=null) {//로그인 성공
				request.setAttribute("name", name);
				//세션 객체 생성
				HttpSession session=request.getSession();
				//세션에 값 저장
				session.setAttribute("name", name);	
				session.setAttribute("id",id);
				message="x";
				url="/myPage/myPage.jsp?message="+message;
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response);
			}else {//로그인 실패
			    message="y";
				url="/member/login.jsp?message="+message;
				response.sendRedirect(request.getContextPath()+url);
			} 
		}else if(uri.indexOf("logout.do")!=-1) {
			String id=request.getParameter("id");
			if(id!=null) {
				//세션객체 생성
				HttpSession session=request.getSession();
				//세션을 비움(초기화)
				session.invalidate();				
			}
			//로그인 페이지로 이동
			String message="logout";
			String page=request.getContextPath()
					+"/main/logout.jsp?message="+message;
			response.sendRedirect(page);
		 
			//2.회원가입
		}else if(uri.indexOf("join.do")!=-1) {
			request.setCharacterEncoding("UTF-8");
			UserManageDTO dto=new UserManageDTO();
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			String name=request.getParameter("name");
			String gender=request.getParameter("gender");
			String email=request.getParameter("email");
			String hp=request.getParameter("hp");
			String address=request.getParameter("address");
			String ad=request.getParameter("ad");
			System.out.println(dto);
			dto.setId(id);
			dto.setPw(pw);
			dto.setName(name);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd");
			 Date birth = null;
			 
			 try {
			 birth = sdf.parse(request.getParameter("year")+"/"+request.getParameter("month")+"/"+request.getParameter("day"));
			 //입력받은 년,월,일을 date 포맷으로 변경
			 } catch (ParseException e) {
			 e.printStackTrace();
			 }
			 
			dto.setBirth(birth);
			dto.setGender(gender);
			dto.setEmail(email);
			dto.setHp(hp);
			dto.setAddress(address);
			dto.setAd(ad);
			
			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(birth);
			System.out.println(gender);
			System.out.println(email);
			System.out.println(hp);
			System.out.println(address);
			System.out.println(ad);
			
			int result;
			result = dao.join(dto);
			 
			 if(result==0){
			 System.out.println("Faile");
			 }else{
			 System.out.println("Sucsses");
			    String message="회원가입 성공";
				String url="/member/join_result.jsp?message="+message;
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response);			 
			 }			 
			 
	      //3.나의 회원정보 목록
		 }else if(uri.indexOf("view.do")!=-1) {
			 	HttpSession session=request.getSession();
				String id=(String)session.getAttribute("id");
				System.out.println(id);
				UserManageDTO items=dao.myInfo(id);
				System.out.println(items);
				request.setAttribute("items", items);
				String path="/myPage/myInfo.jsp";
				RequestDispatcher rd=request.getRequestDispatcher(path);
				rd.forward(request, response);
		 //4.나의 회원정보 수정
		 }else if(uri.indexOf("update.do")!=-1) {
			    String id=request.getParameter("id");
				String pw=request.getParameter("pw");
				String name=request.getParameter("name");
				String gender=request.getParameter("gender");
				String email=request.getParameter("email");
				String hp=request.getParameter("hp");
				String address=request.getParameter("address");
				String ad=request.getParameter("ad");
				
				UserManageDTO dto=new UserManageDTO();
				System.out.println(dto);
				dto.setId(id);
				dto.setPw(pw);
				dto.setName(name);
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd");
				 Date birth = null;
				 
				 try {
				 birth = sdf.parse(request.getParameter("year")+"/"+request.getParameter("month")+"/"+request.getParameter("day"));
				 //입력받은 년,월,일을 date 포맷으로 변경
				 } catch (ParseException e) {
				 e.printStackTrace();
				 }
				 
				dto.setBirth(birth);
				dto.setGender(gender);
				dto.setEmail(email);
				dto.setHp(hp);
				dto.setAddress(address);
				dto.setAd(ad);
				dao.infoUpdate(dto);
				System.out.println(id);
				System.out.println(pw);
				System.out.println(name);
				System.out.println(birth);
				System.out.println(gender);
				System.out.println(email);
				System.out.println(hp);
				System.out.println(address);
				System.out.println(ad);				 
					    
						String url="/userManage_servlet/view.do";
						RequestDispatcher rd=request.getRequestDispatcher(url);
						rd.forward(request, response);		 
		 }else if(uri.indexOf("delete.do")!=-1) {
			 String id=request.getParameter("id");
			 dao.infoDelete(id);
			 String path="/userManage_servlet/logout.do";
			 response.sendRedirect(request.getContextPath()+path);
		 }
	}
		
	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		doGet(request, response);
	}

}
