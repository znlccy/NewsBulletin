package org.shlg.news.control;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.shlg.news.domain.TearcherTeam;
import org.shlg.news.service.ITearcherTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-*10-26
 * @introduce 这是教师团队的控制器
 */

@Controller
@RequestMapping(value="tearcher")
@CrossOrigin(maxAge=3600,origins="*")
@Scope("singleton")
public class TearcherTeamControl {

	/**
	 * 声明老师团队的引用 
	 */
	@Autowired
	private ITearcherTeamService tearcherTeamService;
	
	/**
	 * 声明返回给客户端的状态码
	 */
	private String status;
	
	/**
	 * 声明返回给客户端的信息
	 */
	private String message;
	
	/**
	 * 依赖注入老师服务get方法
	 * @return
	 */
	public ITearcherTeamService getTearcherTeamService() {
		return tearcherTeamService;
	}

	/**
	 * 依赖注入老师服务的set方法
	 * @param tearcherTeamService
	 */
	public void setTearcherTeamService(ITearcherTeamService tearcherTeamService) {
		this.tearcherTeamService = tearcherTeamService;
	}

	/**
	 * 声明通过教师名来查询教师信息
	 * @param tearcherTeam
	 * @return
	 */
	@RequestMapping(value="/query",method=RequestMethod.GET)
	public @ResponseBody Map queryTearcher(@ModelAttribute TearcherTeam tearcherTeam,HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		/*String tearcherName = tearcherTeam.getTearcherName();*/
		/*String tearcherName = (String) request.getAttribute("tearcherName");*/
		String tearcherName = (String) session.getAttribute("tearcherName");
		/*System.err.println("老师的名字："+tearcherName);*/
	    TearcherTeam team = tearcherTeamService.queryTearcherName(tearcherName);
	    if(team==null)
	    {
	    	status = "403";
	    	message = "请求的资源不存在！";
	    	map.put("status", status);
	    	map.put("message", message);
	    }
	    else
	    {
	    	/*获得个人简介*/
	    	String personalProfile = team.getPersonalProfile().trim();
	    	/*获得学习和工作经验*/
	    	String studyExperience = team.getStudyExperience().trim();
	    	/*获得科研成果*/
	    	String workAchievements = team.getWorkAchievements();
	    	/*获得研究方向*/
	    	String researchDirection = team.getResearchDirection();
	    	/*获得学术团体*/
	    	String academicGroups = team.getAcademicGroups();
	    	/*获得联系方式*/
	    	String contactStyle = team.getContactStyle();
	    	
	    	/*把这个数据封装到map中去放回给客户端*/
	    	/*获得教师信息成功，返回给客户端状态码*/
	    	status = "200";
	    	message = "恭喜您成功获得"+tearcherName+"教师的信息！";
	    	map.put("status", status);
	    	map.put("message", message);
	    	map.put("tearcherName", tearcherName);
	    	map.put("personalProfile", personalProfile);
	    	map.put("studyExperience", studyExperience);
	    	map.put("workAchievements", workAchievements);
	    	map.put("researchDirection", researchDirection);
	    	map.put("academicGroups", academicGroups);
	    	map.put("contactStyle",contactStyle );
	    }
		System.err.println("老师的名字："+tearcherName);
		return map;
	}

	/**
	 * 声明添加教师的方法
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public @ResponseBody Map addTearcher(@ModelAttribute TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		/*声明Map集合引用*/
		Map<String, Object> map = new HashMap<String, Object>();
		
		String tearcherName = tearcherTeam.getTearcherName().trim();
		String academicGroups = tearcherTeam.getAcademicGroups().trim();
		String contactStyle = tearcherTeam.getContactStyle().trim();
		String personalProfile = tearcherTeam.getPersonalProfile().trim();
		String ResearchDirection = tearcherTeam.getResearchDirection().trim();
		String StudyExperience = tearcherTeam.getStudyExperience().trim();
		byte[] tearcherPicture = tearcherTeam.getTearcherPicture();
		String workAchievements = tearcherTeam.getWorkAchievements().trim();
		
		TearcherTeam tcteam =  tearcherTeamService.queryTearcherName(tearcherName);
		if(tcteam!=null)
		{
			status = "405";
			message = tearcherName+"老师这个用户名已经注册过了！";
			map.put("status", status);
			map.put("message", message);
			map.put("tearcherTeamId", tcteam.getTearcherTeamId());
		}
		else
		{
			tearcherTeamService.addTearcherTeam(tearcherTeam);
			status = "200";
			message = "添加"+tearcherName+"成功！";
			map.put("status", status);
			map.put("message", message);
			map.put("tearcherTeamId", tearcherTeamService.queryTearcherName(tearcherName).getTearcherTeamId());
		}
		return map;
	}
	
	/**
	 * 声明删除教师的方法
	 */
	@RequestMapping(value="/delete",method=RequestMethod.DELETE)
	public @ResponseBody Map delateTearcher(@ModelAttribute TearcherTeam tearcherTeam) {
		// TODO Auto-generated method stub
		/*声明Map集合引用*/
		Map<String, Object> map = new HashMap<String, Object>();
		String tearcherName = tearcherTeam.getTearcherName().trim();
		
		TearcherTeam query_team = tearcherTeamService.queryTearcherName(tearcherName);
		if(query_team==null)
		{
			status = "403";
			message = "数据库中不存在这个"+tearcherName+"老师！";
			map.put("status", status);
			map.put("message", message);
		}
		else
		{
			tearcherTeamService.deleteTearcherName(tearcherName);
			status = "200";
			message = "删除"+tearcherName+"老师成功！";
		}
		return map;
	}
	
	/**
	 * 声明修改教师信息
	 * @return
	 */
	public @ResponseBody Map modifyTearcher() {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		return map;
	}
}
