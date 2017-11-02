package org.shlg.news.backup;

import java.util.TimerTask;

import org.apache.log4j.Logger;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-17
 * @introduce 这是数据库备份定时任务
 */

public class RestoreDataTimerTask extends TimerTask {
	
	/**
	 * 记录日志文件
	 */
	private  static Logger log = Logger.getLogger(RestoreDataTimerTask.class);
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		try {
			new DatabaseBackup();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			log.info("-------------解析信息发生异常--------------");
		}
	}
}
