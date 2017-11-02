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
 * @date 2017-10-19
 * @introduce 这是联系我们的表
 */

@Entity
@Table(name="tb_contactus",catalog="db_newsbulletin")
public class ContactUs {
	
	/**
	 * 声明联系我们的主键
	 */
	private String contactUsId;
	
	/**
	 * 声明姓名属性
	 */
	private String username;
	
	/**
	 * 声明邮箱属性
	 */
	private String email;
	
	/**
	 * 声明主题属性
	 */
	private String subject;
	
	/**
	 * 声明提交内容属性
	 */
	private String content;

	/**
	 * 声明无参构造函数 
	 */
	public ContactUs() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 声明带有参数的改造函数
	 * @param username
	 * @param email
	 * @param subject
	 * @param content
	 */
	public ContactUs(String contactUsId,String username, String email, String subject,
			String content) {
		super();
		this.contactUsId = contactUsId;
		this.username = username;
		this.email = email;
		this.subject = subject;
		this.content = content;
	}
	
	/**
	 * 声明联系我们这个表的主键生成策略
	 * @return
	 */
	@Id
	@GenericGenerator(name="self",strategy="uuid")
	@GeneratedValue(generator="self")
	@Column(name="contactUsId",length=60,insertable=true,unique=true,nullable=false,updatable=true)
	public String getContactUsId() {
		return contactUsId;
	}
	
	/**
	 * 声明生成联系我们主键的策略
	 * @param contactUsId
	 */
	public void setContactUsId(String contactUsId) {
		this.contactUsId = contactUsId;
	}

	/**
	 * 声明姓名的get方法
	 * @return
	 */
	@Column(name="username",length=30,nullable=false,insertable=true,updatable=true)
	public String getUsername() {
		return username;
	}

	/**
	 * 声明姓名的set方法
	 * @param username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * 声明邮箱的get方法
	 * @return
	 */
	@Column(name="email",length=40,nullable=false,insertable=true,updatable=true)
	public String getEmail() {
		return email;
	}

	/**
	 * 声明邮箱的set方法
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 声明主题的get方法
	 * @return
	 */
	@Column(name="subject",length=120,nullable=false,insertable=true,updatable=true)
	public String getSubject() {
		return subject;
	}

	/**
	 * 声明主题的set方法
	 * @param subject
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * 声明内容的get方法
	 * @return
	 */
	@Column(name="content",length=500,nullable=false,insertable=true,updatable=true)
	public String getContent() {
		return content;
	}

	/**
	 * 声明内容的set方法
	 * @param content
	 */
	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ContactUs [contactUsId=" + contactUsId + ", username="
				+ username + ", email=" + email + ", subject=" + subject
				+ ", content=" + content + "]";
	}

}
