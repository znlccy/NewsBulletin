package org.shlg.news.util;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class ImageDemo {

	//将图片插入到数据库
	public static void readImage2DB() {
		 String path = "E:/gy_logo.png";
	     Connection conn = null;
	     PreparedStatement ps = null;
	     FileInputStream in = null;
	     try {
	         in = ImageUtil.readImage(path);
	         conn = DBUtil.getConn();
	         String sql = "insert into photo (id,name,photo)values(?,?,?)";
	         ps = conn.prepareStatement(sql);
	         ps.setInt(1, 1);
	         ps.setString(2, "Tom");
	         ps.setBinaryStream(3, in, in.available());
	         int count = ps.executeUpdate();
	         if (count > 0) {
	             System.out.println("插入成功！");
	         } else {
	             System.out.println("插入失败！");
	         }
	     } catch (Exception e) {
	         e.printStackTrace();
	     } finally {
	         DBUtil.closeConn(conn);
	         if (null != ps) {
	             try {
	                 ps.close();
	             } catch (SQLException e) {
	                 e.printStackTrace();
	             }
	         }
	     }
	}
	
	// 读取数据库中图片
	public static void readDB2Image() {
	    String targetPath = "E:/1.png";
	    Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    	try {
	    			conn = DBUtil.getConn();
	    			String sql = "select * from photo where id =?";
	    			ps = conn.prepareStatement(sql);
	    			ps.setInt(1, 1);
	    			rs = ps.executeQuery();
	    			while (rs.next()) {
	    				InputStream in = rs.getBinaryStream("photo");
	    				ImageUtil.readBin2Image(in, targetPath);
	    			}
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		DBUtil.closeConn(conn);
	    		if (rs != null) {
	    			try {
	    				rs.close();
	    			} catch (SQLException e) {
	    				e.printStackTrace();
	    			}
	    		}
	    		if (ps != null) {
	    			try {
	    				ps.close();
	    			} catch (SQLException e) {
	    				e.printStackTrace();
	    			}
	    		}
	
	    	}
		}
	
	//测试
	public static void main(String[] args) {
	//readImage2DB();
		readImage2DB();
		readDB2Image();
	}

}
