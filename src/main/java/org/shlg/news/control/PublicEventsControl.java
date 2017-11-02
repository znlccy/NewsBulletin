package org.shlg.news.control;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-27
 * @introduce 这是公开活动的控制类
 */

@Controller
@Scope("singleton")
@CrossOrigin(maxAge=3600,origins="*")
@RequestMapping(value="pec")
public class PublicEventsControl {

}
