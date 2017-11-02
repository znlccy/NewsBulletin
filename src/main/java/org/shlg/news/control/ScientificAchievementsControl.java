package org.shlg.news.control;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是科研成果控制器类
 */

@Controller
@CrossOrigin(maxAge=3600,origins="*")
@Scope("singleton")
@RequestMapping(value="sac")
public class ScientificAchievementsControl {
	
	
}
