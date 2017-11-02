package org.shlg.news.backup;

import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import java.util.Timer;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-17
 * @introduce 这是实现对还原数据库的管理
 */
public class RestoreTimeManager {

	//时间间隔 一天时间
    private static final long PERIOD_DAY = 24 * 60 * 60 * 1000;

    public RestoreTimeManager() {

		Properties prop = new Properties();// 属性集合对象 
		
		InputStream  is = Thread.currentThread().getContextClassLoader().getResourceAsStream("mysql.properties");
		
		try {
			prop.load(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}// 将属性文件流装载到Properties对象中
		//获取并处理配置文件中的时间
		String backuptime = prop.getProperty("backuptime");
		System.err.println(backuptime);
		String[] time=backuptime.split(":");
		int hours=Integer.parseInt(time[0]);
		int minute=Integer.parseInt(time[1]);
		int second=Integer.parseInt(time[2]);
	
		Calendar calendar = Calendar.getInstance(); 
		
		/*** 定制每日2:00执行方法 ***/ 
		calendar.set(Calendar.HOUR_OF_DAY,hours);
		calendar.set(Calendar.MINUTE, minute);
		calendar.set(Calendar.SECOND, second);
		
		Date date=calendar.getTime(); //第一次执行定时任务的时间
	
		//如果第一次执行定时任务的时间 小于 当前的时间
		//此时要在 第一次执行定时任务的时间 加一天，以便此任务在下个时间点执行。如果不加一天，任务会立即执行。
		if (date.before(new Date())) {
		date = this.addDay(date, 1);
		}
		
		Timer timer = new Timer();
	
		RestoreDataTimerTask task = new RestoreDataTimerTask();
		//安排指定的任务在指定的时间开始进行重复的固定延迟执行。
			timer.schedule(task,date,PERIOD_DAY);
		}
	
		//增加或减少天数
		public Date addDay(Date date, int num) {
			Calendar startDT = Calendar.getInstance();
			startDT.setTime(date);
			startDT.add(Calendar.DAY_OF_MONTH, num);
			return startDT.getTime();
		}
}

