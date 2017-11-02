package org.shlg.news.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-21
 * @introduce 这是关注方式实体类
 */

@Entity
@Table(name="tb_focus",catalog="db_newsbulletin")
public class Focus {

	/**
	 * 声明关注主键
	 */
	private String focusId;
	
	/**
	 * 声明qq空间关注
	 */
	private int QQZone;
	
	/**
	 * 声明新浪关注
	 */
	private int XinLang;
	
	/**
	 * 声明QQ关注
	 */
	private int QQ;

	/**
	 * 声明无参的构造函数
	 */
	public Focus() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 声明有参构造函数
	 * @param focusId
	 * @param qQZone
	 * @param xinLang
	 * @param qQ
	 */
	public Focus(String focusId, int qQZone, int xinLang, int qQ) {
		super();
		this.focusId = focusId;
		QQZone = qQZone;
		XinLang = xinLang;
		QQ = qQ;
	}

	/**
	 * 声明关注的主键的get方法
	 * @return
	 */
	@Id
	@GenericGenerator(name="uuid",strategy="uuid")
	@GeneratedValue(generator="uuid")
	@Column(name="focusId",length=12,nullable=false,unique=true,updatable=false,insertable=true)
	public String getFocusId() {
		return focusId;
	}

	/**
	 * 声明关注主键的set方法
	 * @param focusId
	 */
	public void setFocusId(String focusId) {
		this.focusId = focusId;
	}

	/**
	 * 声明QQZone关注的人get方法
	 * @return
	 */
	@Column(name="QQZone",length=28,insertable=true,nullable=true,updatable=true)
	public int getQQZone() {
		return QQZone;
	}

	/**
	 * 声明QQZone关注的人set方法
	 * @param qQZone
	 */
	public void setQQZone(int qQZone) {
		QQZone = qQZone;
	}

	/**
	 * 声明新浪关注的get方法
	 * @return
	 */
	@Column(name="XinLang",length=28,insertable=true,nullable=true,updatable=true)
	public int getXinLang() {
		return XinLang;
	}

	/**
	 * 声明新浪关注的set方法
	 * @param xinLang
	 */
	public void setXinLang(int xinLang) {
		XinLang = xinLang;
	}

	/**
	 * 声明QQ关注的人get方法
	 * @return
	 */
	@Column(name="QQ",length=28,insertable=true,nullable=true,updatable=true)
	public int getQQ() {
		return QQ;
	}

	/**
	 * 声明QQ关注的人set方法
	 * @param qQ
	 */
	public void setQQ(int qQ) {
		QQ = qQ;
	}

	/* 
	 * 声明toString方法
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Focus [focusId=" + focusId + ", QQZone=" + QQZone
				+ ", XinLang=" + XinLang + ", QQ=" + QQ + "]";
	}
	
}
