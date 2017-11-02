package org.shlg.news.backup;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-17
 * @introduce 这是监听
 */
public class BackupDataTaskListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		new BackupTimeManager();
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

}
