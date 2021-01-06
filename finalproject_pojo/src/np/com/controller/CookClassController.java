package np.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import np.com.util.HashMapBinder;
import np.mem.model.CookClassDao;

public class CookClassController implements Action{
	Logger logger = Logger.getLogger(CookClassController.class);

	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ModelAndView mav = new ModelAndView(req, res);
		String pageName = (String)req.getAttribute("pageName");//memberList
		CookClassDao cookClassDao = CookClassDao.getInstance();
		
	    Map<String,Object> pmap = new HashMap<>();
		HashMapBinder hmb = new HashMapBinder(req);
		hmb.bind(pmap);
		
		
		if(pageName.equals("")) {
		}
		else if(pageName.equals("")) {
		}
		else if(pageName.equals("")) {
		}
		
		mav.setViewName(pageName+".jsp");
		
		return mav;
	}
}
