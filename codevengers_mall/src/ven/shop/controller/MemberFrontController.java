package ven.shop.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ven.member.service.MemberAddService;
import ven.member.service.MemberCertifiedService;
import ven.member.service.MemberEmailCodeService;
import ven.member.service.MemberLoginService;
import ven.shop.action.Action;
import ven.shop.command.ActionCommand;

@WebServlet("/MemberFrontController")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 서블릿 맵핑명을 설정한다.
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String pathURL = requestURI.substring(contextPath.length());

		// 포워딩 정보 저장
		ActionCommand actionCommand = null;
		// 메소드 규격화
		Action action = null;

		// 맵핑명 지정하고 서블릿 클래스 설정

		if (pathURL.equals("/MemberLogin.do")) {
			action = new MemberLoginService();
			System.out.println("memberlogin.do연결");

			try {
				actionCommand = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (pathURL.equals("/MemberAdd.do")) {
			action = new MemberAddService();
			System.out.println("memberAdd.do연결");
			try {
				actionCommand = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (pathURL.equals("/MemberWrite.do")) {
			actionCommand = new ActionCommand();
			System.out.println("memberWrite.do연결");
			// 포워드로 한다.
			actionCommand.setRedirect(false);
			// 회원가입 페이지로 이동한다.
			actionCommand.setPath("./member/member_signup.jsp");

		} else if (pathURL.equals("/MemberMail.do")) {
			System.out.println("memberMail.do연결");
			action = new MemberCertifiedService();
			try {
				actionCommand = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (pathURL.equals("/MemberMailCheck.do")) {
			System.out.println("memberMailCheck.do연결");
			action = new MemberEmailCodeService();
			try {
				actionCommand = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		
		}
		
		
		
		
		
		if (actionCommand != null) {
			// isRedirect 메소드 값이 false이면 forward 방식이고 true이면 redirect 방식이 된다.
			if (actionCommand.isRedirect()) {
				response.sendRedirect(actionCommand.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(actionCommand.getPath());
				dispatcher.forward(request, response);
			}
		}
	}


	// HTTP 요청이 get 메소드 방식인지를 확인하고 service 메소드를 호출한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		service(request, response);
	}

	// HTTP 요청이 post 메소드 방식인지를 확인하고 service 메소드를 호출한다.
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		service(request, response);
	}

}
