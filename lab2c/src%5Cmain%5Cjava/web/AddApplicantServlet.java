package web;

import java.io.IOException;

import javax.faces.application.Application;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import repo.ConferenceApplicationRepository;
import repo.DummyConferenceApplicationRepository;
import domain.ConferenceApplication;

@WebServlet("/add")
public class AddApplicantServlet extends HttpServlet 
{	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException ,IOException
	{
		HttpSession session = request.getSession();
		ConferenceApplication application = retrieveApplicationFromRequest(request);
		ConferenceApplicationRepository repository = new DummyConferenceApplicationRepository();
				
		session.setAttribute("conf", application);
				
		repository.add(application);
		response.sendRedirect("success.jsp");
	}
	
	private ConferenceApplication retrieveApplicationFromRequest(HttpServletRequest request)
	{
		ConferenceApplication result = new ConferenceApplication();
		result.setName("name");
		result.setSurname("surname");
		result.setAdvert("info");
		result.setEmail("email");
		result.setEmployment("employment");
		return result;
	}
		
}
