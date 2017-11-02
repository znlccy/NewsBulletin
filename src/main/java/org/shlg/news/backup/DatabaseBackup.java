package org.shlg.news.backup;

import java.beans.PropertyVetoException;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Properties;
import java.util.TimerTask;

import org.apache.log4j.Logger;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-17
 * @introduce 这是数据库备份
 */

public class DatabaseBackup {

	/**
	 * 实现备份功能
	 */
	public static void backup(){
		try {
			Properties prop = new Properties();// 属性集合对象 
			
			InputStream  is = Thread.currentThread().getContextClassLoader().getResourceAsStream("property/mysql.properties");
			
			prop.load(is);// 将属性文件流装载到Properties对象中 
			
			//读取配置文件中的信息
		    //MySql的安装bin目录路径和dump等参数
			String sqlurl = prop.getProperty("sqlurl");
			//保存备份文件的路径及名称
			String path = prop.getProperty("path");
			
			System.err.println("数据库备份URL："+sqlurl);
			System.err.println("数据库备份路径:"+path);
			
			Runtime rt =Runtime.getRuntime(); //返回与当前的Java应用程序的运行时对象
			// 调用 调用mysql的安装目录的命令
			Process child = rt.exec(sqlurl);
			// 设置导出编码为utf-8。这里必须是utf-8
			// 把进程执行中的控制台输出信息写入.sql文件，即生成了备份文件。注：如果不对控制台信息进行读出，则会导致进程堵塞无法运行
			 InputStream in = child.getInputStream();// 控制台的输出信息作为输入流
			 InputStreamReader xx = new InputStreamReader(in, "utf-8");
			// 设置输出流编码为utf-8。这里必须是utf-8，否则从流中读入的是乱码
			 String inStr;
			 StringBuffer sb = new StringBuffer("");
			 String outStr;
			// 组合控制台输出信息字符串
			 BufferedReader br = new BufferedReader(xx);
			 while ((inStr = br.readLine()) != null) {
			 sb.append(inStr + "\r\n");
		}
			outStr = sb.toString();
			// 要用来做导入用的sql目标文件：
			FileOutputStream fout = new FileOutputStream(path);
			OutputStreamWriter writer = new OutputStreamWriter(fout, "utf-8");
			writer.write(outStr);
			writer.flush();
			in.close();
			xx.close();
			br.close();
			writer.close();
			fout.close();
			System.out.println("");
		} 
		catch (Exception e) {
				e.printStackTrace();
			}
		}

	public void DatabaseBackup(){
		backup();
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DatabaseBackup.backup();
		System.out.println("备份数据库成功!");
	}
}

