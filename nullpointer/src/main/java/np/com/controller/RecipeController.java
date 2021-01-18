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

import np.mem.model.RecipeDao;

@Controller

@RequestMapping("/recipe/*")
public class RecipeController {
	Logger logger = LogManager.getLogger(RecipeController.class);

	@Autowired
	public RecipeDao recipeDao;

	// 글쓰기
	@RequestMapping("recipeInsert.np")
	public String recipeInsert(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("recipeInsert 호출");
		String msg = recipeDao.boardWrite(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 글수정
	@RequestMapping("recipeUpdate.np")
	public String recipeUpdate(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("recipeInsert 호출");
		String msg = recipeDao.boardUpdate(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 글삭제
	@RequestMapping("recipeDelete.np")
	public String recipeDelete(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("recipeDelete 호출");
		String msg = recipeDao.boardDelete(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 게시글 목록
	@RequestMapping("recipeList.np")
	public String recipeList(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("recipeList 호출");
		pMap.put("field", "BOARD_LIST");
		pMap.put("menucd", 0);
		List<Map<String, Object>> list = recipeDao.boardView(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}
	
	// 인기 게시물 리스트
		@RequestMapping("popBoardList.np")
		public String popBoardList(Model model, @RequestParam Map<String, Object> pMap) {
			logger.info("popBoardList 호출");
			pMap.put("field", "POP_BOARD_LIST");
			pMap.put("menucd", 0);
			List<Map<String, Object>> list = recipeDao.boardView(pMap);
			logger.info("list" + list);
			model.addAttribute("list", list);
			return "forward:member/IMSI.jsp";
		}

	// 단일 게시글 내용
	@RequestMapping("recipeContent.np")
	public String recipeContent(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("recipeList 호출");
		pMap.put("field", "BOARD_CONTENT");
		List<Map<String, Object>> list = recipeDao.boardView(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 대분류리스트
	@RequestMapping("lageCategory.np")
	public String lageCategory(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("lageCategory 호출");
		pMap.put("field", "LAGE_CATEGORY");
		List<Map<String, Object>> list = recipeDao.listForGiveInfo(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 소분류리스트
	@RequestMapping("smallCategory.np")
	public String smallCategory(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("smallCategory 호출");
		pMap.put("field", "SMALL_CATEGORY");
		List<Map<String, Object>> list = recipeDao.listForGiveInfo(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 재료리스트
	@RequestMapping("jaelyoList.np")
	public String jaelyoList(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("jaelyoList 호출");
		pMap.put("field", "JAELYO_LIST");
		List<Map<String, Object>> list = recipeDao.listForGiveInfo(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}
	
	// 좋아요 등록, 취소
		@RequestMapping("clickLike.np")
		public String clickLike(Model model, @RequestParam Map<String, Object> pMap) {
			logger.info("clickLike 호출");
			pMap.put("field","CLICK_LIKE");
			String msg = recipeDao.boardLikes(pMap);
			logger.info("msg : " + msg);
			model.addAttribute("msg", msg);
			return "forward:member/IMSI.jsp";
		}
		
		// 좋아요 확인
				@RequestMapping("checkLike.np")
				public String checkLike(Model model, @RequestParam Map<String, Object> pMap) {
					logger.info("checkLike 호출");
					pMap.put("field","CHECK_LIKE");
					String msg = recipeDao.boardLikes(pMap);
					logger.info("msg : " + msg);
					model.addAttribute("msg", msg);
					return "forward:member/IMSI.jsp";
				}
				
				// //좋아요 모두 확인
				@RequestMapping("checkAllLikes.np")
				public String checkAllLikes(Model model, @RequestParam Map<String, Object> pMap) {
					logger.info("clickLike 호출");
					pMap.put("field","ALL_LIKES");
					String msg = recipeDao.boardLikes(pMap);
					logger.info("msg : " + msg);
					model.addAttribute("msg", msg);
					return "forward:member/IMSI.jsp";
				}

}
