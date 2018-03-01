package action;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Article;
import dbpool.*;

import java.util.Date;
import java.util.*;
import java.text.*;
import java.sql.*;

/**
 * Servlet implementation class HandleArticleAction
 */
@WebServlet("/HandleArticleAction")
public class HandleArticleAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleArticleAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset = utf-8");
		String action = request.getParameter("action");	
		if(action.equals("add"))
		{
			
			if(request.getParameter("title") == "" )
			{
				response.sendRedirect("login/article/Failure-AddArticle.jsp?result=sorry! title is null");
			}
			else if(request.getParameter("title").length() < 5)
			{
				response.sendRedirect("login/article/Failure-AddArticle.jsp?result=sorry! title length >= 5");
			}
			else
			{
				int count = 1;
				Article article = new Article();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				HttpSession session=request.getSession();
			    String userName= (String)session.getAttribute("name");
			    String title = request.getParameter("title");
			    String content = request.getParameter("content");
			    String userId = (String)session.getAttribute("id");
				article.setUserName(userName);
				article.setTitle(title);
				article.setContent(content);
				article.setUserId(userId);
				article.setRemarkNum(0);
				article.setHitNum(0);
				article.setCreateTime(new Date());
				article.setLastRemarkTime(new Date());
				try 
				{
					Connection conn = DbcpConnectionPool.getConnection();
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery("select * from article");
					while(rs.next())
					{
						count++;
					}
					String sql = "insert into article values("+ count +",'"+ article.getTitle() +"','"+ article.getContent() +"','"+ article.getUserId() +"',"+ article.getRemarkNum() +","+ article.getHitNum() +",'"+ sdf.format(article.getCreateTime().getTime()) +"','"+ sdf.format(article.getLastRemarkTime()) +"')";
					stmt.executeUpdate(sql);	
					stmt.close();
					conn.close();
					String s = URLEncoder.encode("恭喜你！发表成功！","utf-8");
					response.sendRedirect("login/article/Success-AddArticle.jsp?result=" + s);
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
		else if(action.equals("Articlelist"))
		{
			List<Object> ArticleList = new ArrayList<Object>();   
			try 
			{
				Connection conn = DbcpConnectionPool.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from article,login where userId = zhanghao");
				while(rs.next())
				{
					Article article=new Article();
					article.setId(rs.getInt("id"));	
					article.setTitle(rs.getString("title"));
					article.setContent(rs.getString("content"));
					article.setUserId(rs.getString("userId"));
					article.setRemarkNum(rs.getInt("remarkNum"));
					article.setHitNum(rs.getInt("hitNum"));
					article.setCreateTime(rs.getDate("createTime"));
					article.setLastRemarkTime(rs.getDate("lastRemarkTime"));
				    article.setUserName(rs.getString("username"));									
					ArticleList.add(article);
				}
				HttpSession session=request.getSession();
				session.setAttribute("ArticleList",ArticleList );
				System.out.println("size:" + ArticleList.size());
				stmt.close();
				conn.close();
				response.sendRedirect("login/article/article-list.jsp");
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			
		}
		else if(action.equals("detail"))
		{
			int id = Integer.parseInt(request.getParameter("id"));	
			try 
			{
				Connection conn = DbcpConnectionPool.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from article,login where userId = zhanghao and article.id = '"+ id +"'");
				Article article=new Article();
				if(rs.next())
				{
					article.setId(rs.getInt("id"));	
					article.setTitle(rs.getString("title"));
					article.setContent(rs.getString("content"));
					article.setUserId(rs.getString("userId"));
					article.setRemarkNum(rs.getInt("remarkNum"));
					article.setHitNum(rs.getInt("hitNum"));
					article.setCreateTime(rs.getDate("createTime"));
					article.setLastRemarkTime(rs.getDate("lastRemarkTime"));
				    article.setUserName(rs.getString("username"));									
				}
				HttpSession session=request.getSession();
				session.setAttribute("Article",article);
				stmt.close();
				conn.close();
				response.sendRedirect("login/article/article-detail.jsp");
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		else if(action.equals("MyArticlelist"))
		{
			List<Object> ArticleList = new ArrayList<Object>(); 
			String userId = request.getParameter("userId");
			try 
			{
				Connection conn = DbcpConnectionPool.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from article,login where userId = zhanghao and userId = '"+ userId +"'");
				while(rs.next())
				{
					Article article=new Article();
					article.setId(rs.getInt("id"));	
					article.setTitle(rs.getString("title"));
					article.setContent(rs.getString("content"));
					article.setUserId(rs.getString("userId"));
					article.setRemarkNum(rs.getInt("remarkNum"));
					article.setHitNum(rs.getInt("hitNum"));
					article.setCreateTime(rs.getDate("createTime"));
					article.setLastRemarkTime(rs.getDate("lastRemarkTime"));
				    article.setUserName(rs.getString("username"));									
					ArticleList.add(article);
				}
				HttpSession session=request.getSession();
				session.setAttribute("ArticleList",ArticleList );
				stmt.close();
				conn.close();
				response.sendRedirect("login/article/my-article-list.jsp");
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
