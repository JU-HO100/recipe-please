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

import np.admin.model.AdminDao;

@Controller

@RequestMapping("/admin/*")
public class AdminController {

	@Autowired
	public AdminDao adminDao;

	Logger logger = LogManager.getLogger(MemberController.class);

	// 회원 리스트
	@RequestMapping("memList.np")
	public String memList(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("memList 호출");
		pMap.put("field", "MEM_LIST");
		pMap.put("user_id", "");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/memList.jsp";
	}

	// 블랙 리스트
	@RequestMapping("blackList.np")
	public String blackList(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("blackList 호출");
		pMap.put("field", "BLACK_LIST");
		pMap.put("user_id", "");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 일시정지 리스트
	@RequestMapping("pauseList.np")
	public String pauseList(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("pauseList 호출");
		pMap.put("field", "PAUSE_MEM_LIST");
		pMap.put("user_id", "");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 블랙리스트 추가
	@RequestMapping("putBlack.np")
	public String putBlack(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("putBlack 호출");
		pMap.put("field", "PUT_BLACK");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list : " + list);
		model.addAttribute("list", list);
		return "redirect:member/IMSI.jsp";
	}

	// 일시정지리스트 추가
	@RequestMapping("putPause.np")
	public String putPause(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("putPause 호출");
		pMap.put("field", "PUT_PAUSE");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list : " + list);
		model.addAttribute("list", list);
		return "redirect:member/IMSI.jsp";
	}

	// 일시정지리스트 해제
	@RequestMapping("releasePauseMem.np")
	public String releasePauseMem(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("releasePauseMem 호출");
		pMap.put("field", "RELEASE_PAUSE_MEM");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list : " + list);
		model.addAttribute("list", list);
		return "redirect:member/IMSI.jsp";
	}

	// 쉐프신청서 확인
	@RequestMapping("readWritting.np")
	public String readWritting(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("readWritting 호출");
		pMap.put("field", "READ_WRITTING");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list : " + list);
		model.addAttribute("list", list);
		return "redirect:member/IMSI.jsp";
	}

	// 쉐프신청서 허가
	@RequestMapping("commitChef.np")
	public String commitChef(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("readWritting 호출");
		pMap.put("field", "COMMIT_CHEF");
		List<Map<String, Object>> list = adminDao.adminProcedure(pMap);
		logger.info("list : " + list);
		model.addAttribute("list", list);
		return "redirect:member/IMSI.jsp";
	}

}
