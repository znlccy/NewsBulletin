package org.shlg.news.control;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-28
 * @introduce 这是奖的控制类
 */

@Controller
@Scope("singleton")
@CrossOrigin(maxAge=3600,origins="*")
@RequestMapping(value="reward")
public class RewardControl {

}
