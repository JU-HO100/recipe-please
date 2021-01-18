package np.com.controller;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import np.mem.model.CookClassDao;

@Controller

@RequestMapping("/cookclass/*")
public class CookClassController {
	
	@Autowired
	public CookClassDao memDao;

	Logger logger = LogManager.getLogger(MemberController.class);

	// 쿠킹 클래스 생성 (셰프전용)
	@RequestMapping("createClass.np")
	public String createClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("createClass 호출");
		pMap.put("field", "OPEN_COOKCLASS");
		String msg = memDao.cookClass(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 쿠킹 클래스 참가
	@RequestMapping("joinClass.np")
	public String joinClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("joinClass 호출");
		pMap.put("field", "ATTEND_COOKCLASS");
		String msg = memDao.cookClass(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 쿠킹클래스 신청회원 보기(쉐프전용)
	@RequestMapping("showApplyUsers.np")
	public String showApplyUsers(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("cookClassForChef 호출");
		pMap.put("field", "SHOW_APPLY_USERS");
		List<Map<String, Object>> list = memDao.cookClassForChef(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 쿠킹클래스 신청회원 수락(쉐프전용)
	@RequestMapping("acceptMyClass.np")
	public String acceptMyClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("acceptMyClass 호출");
		pMap.put("field", "ACCEPT_MYCLASS");
		List<Map<String, Object>> list = memDao.cookClassForChef(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 쿠킹클래스 신청회원 거부(쉐프전용)
	@RequestMapping("denyMyClass.np")
	public String denyMyClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("denyMyClass 호출");
		pMap.put("field", "DENY_MYCLASS");
		List<Map<String, Object>> list = memDao.cookClassForChef(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 쿠킹클래스 삭제 or 취소
	@RequestMapping("cancelClass.np")
	public String cancelClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("cancelClass 호출");
		String msg = memDao.cancelClass(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 쿠킹 클래스 전체 리스트
	@RequestMapping("showClass.np")
	public String showClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("showClass 호출");
		List<Map<String, Object>> list = memDao.showClass(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

}
