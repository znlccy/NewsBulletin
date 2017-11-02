package org.shlg.news.control;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是关注方式的控制器
 */

@Controller
@RequestMapping(value="focus")
@CrossOrigin(maxAge=3600,origins="*")
@Scope("singleton")
public class FocusControl {
	
	
	
}
