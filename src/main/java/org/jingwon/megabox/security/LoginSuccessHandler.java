package org.jingwon.megabox.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@AllArgsConstructor
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{
	
	public LoginSuccessHandler(String defaultTargetUrl) {
		setDefaultTargetUrl(defaultTargetUrl);
	}
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException {
		log.warn("Login Success");
		HttpSession session = request.getSession();
		if (session !=null) {
			log.warn("not null session");
			String targetUrl = request.getHeader("referer");
			if (targetUrl != null) {
				log.warn("not null"+ targetUrl);
				response.sendRedirect(targetUrl);
			}
		}
//		List<String> roleNames = new ArrayList<String>();
//		auth.getAuthorities().forEach(autority -> {
//			roleNames.add(autority.getAuthority());
//		});
	}

		

}
