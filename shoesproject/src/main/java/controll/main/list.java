package controll.main;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.dao.ListDao;
import model.dto.PregistDto;

/**
 * Servlet implementation class list
 */
@WebServlet("/list")
public class list extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<PregistDto> list = ListDao.getInstance().list();
		
		JSONArray array = new JSONArray();
		for(int i = 0 ; i<list.size() ; i++) {
			JSONObject object = new JSONObject();
			object.put("pno", list.get(i).getPno());
			object.put("ppurpose", list.get(i).getPpurpose());
			object.put("pcategory", list.get(i).getPcategory());
			object.put("pbrand", list.get(i).getPbrand());
			object.put("psize", list.get(i).getPsize());
			object.put("pprice", list.get(i).getPprice());
			object.put("ptitle", list.get(i).getPtitle());
			object.put("pcontent", list.get(i).getPcontent());
			object.put("pdate", list.get(i).getPdate());
			object.put("pimg", list.get(i).getPimg());
			object.put("pstatus", list.get(i).getPstatus());
			
			array.add(object);
		}
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(array);
		
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public list() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
