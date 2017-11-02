package org.shlg.news.backup;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-17
 * @introduce 这是数据还原功能
 */

public class DatabaseRestore {

	public static void restore(String databaseName) {
        try {
            Runtime runtime = Runtime.getRuntime();
            Process process = runtime
                    .exec("e:\\MySQL\\bin\\mysql.exe -hlocalhost -uroot -p123 --default-character-set=utf8 "
                            + databaseName);
            OutputStream outputStream = process.getOutputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    new FileInputStream("E:\\test.sql"), "utf-8"));
            String str = null;
            StringBuffer sb = new StringBuffer();
            while ((str = br.readLine()) != null) {
                sb.append(str + "\r\n");
            }
            str = sb.toString();
            // System.out.println(str);
            OutputStreamWriter writer = new OutputStreamWriter(outputStream,
                    "utf-8");
            writer.write(str);
            writer.flush();
            outputStream.close();
            br.close();
            writer.close();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
