

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.println("----------login filter----------");
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		HttpSession session= httpRequest.getSession();
		if(isLogonUrl(httpRequest.getRequestURI())){
			System.out.println("带有login的URL");
			if(session.getAttribute("id")== null)
			{
				System.out.println(httpRequest.getRequestURI()+ "未登录");
				httpResponse.sendRedirect(httpRequest.getContextPath() + "/result/user-non-login.jsp");
				return;
			}
			else
			{
				System.out.println(httpRequest.getRequestURI()+ "已登录");
				chain.doFilter(request, response);
			}
		}
		else
		{
			System.out.println("没有login的URL");
			chain.doFilter(request, response);
		}
		// pass the request along the filter chain
	/**
	 * @see Filter#init(FilterConfig)
	 */
	}
	private boolean isLogonUrl(String strUrl)
	{
		return strUrl.contains("/login/");
	}
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
