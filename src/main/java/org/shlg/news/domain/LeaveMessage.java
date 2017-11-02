package org.shlg.news.domain;

import java.util.Arrays;
import java.util.Date;

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
 * @introduce 这是留言实体类
 */

@Entity
@Table(name="tb_leavemessage",catalog="db_newsbulletin")
public class LeaveMessage {

	/**
	 * 声明留言主键
	 */
	private String leaveMessageId;
	
	/**
	 * 声明留言用户名
	 */
	private String username;
	
	/**
	 * 声明电子邮件
	 */
	private String email;
	
	/**
	 * 声明留言内容
	 */
	private String message;
	
	/**
	 * 声明留言时间
	 */
	private Date createTime;
	
	/**
	 * 声明用户头像
	 */
	private byte[] userIcon;
	
	/**
	 * 声明无参构造函数
	 */
	public LeaveMessage() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 声明有参构造函数
	 * @param leaveMessageId
	 * @param username
	 * @param email
	 * @param message
	 * @param createTime
	 * @param userIcon
	 */
	public LeaveMessage(String leaveMessageId, String username, String email,
			String message, Date createTime, byte[] userIcon) {
		super();
		this.leaveMessageId = leaveMessageId;
		this.username = username;
		this.email = email;
		this.message = message;
		this.createTime = createTime;
		this.userIcon = userIcon;
	}

	/* 
	 * 实现留言的toString方法
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "LeaveMessage [leaveMessageId=" + leaveMessageId + ", username="
				+ username + ", email=" + email + ", message=" + message
				+ ", createTime=" + createTime + ", userIcon="
				+ Arrays.toString(userIcon) + "]";
	}

	/**
	 * 实现留言的主键的get方法
	 * @return
	 */
	@Id
	@GenericGenerator(name="self",strategy="uuid")
	@GeneratedValue(generator="self")
	@Column(name="leaveMessageId",length=60,insertable=true,unique=true,nullable=false,updatable=true)
	public String getLeaveMessageId() {
		return leaveMessageId;
	}

	/**
	 * 实现留言主键的set方法
	 * @param leaveMessageId
	 */
	public void setLeaveMessageId(String leaveMessageId) {
		this.leaveMessageId = leaveMessageId;
	}

	/**
	 * 实现留言用户名的get方法
	 * @return
	 */
	@Column(name="username",length=30,nullable=false,insertable=true,updatable=true)
	public String getUsername() {
		return username;
	}

	/**
	 * 实现留言用户的set方法
	 * @param username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * 实现留言邮箱的get方法
	 * @return
	 */
	@Column(name="email",length=40,nullable=false,insertable=true,updatable=true)
	public String getEmail() {
		return email;
	}

	/**
	 * 实现留言邮箱的set方法
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 实现留言内容的get方法
	 * @return
	 */
	@Column(name="message",length=500,nullable=false,insertable=true,updatable=true)
	public String getMessage() {
		return message;
	}

	/**
	 * 实现留言内容的set方法
	 * @param message
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * 实现留言的创建时间的get方法
	 * @return
	 */
	@Column(name="createTime",length=6,nullable=false,insertable=true,updatable=true)
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 实现留言的创建时间的set方法
	 * @param createTime
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 实现留言的用户的头像的get方法
	 * @return
	 */
	@Column(name="userIcon",length=500,insertable=true,updatable=true,nullable=true)
	public byte[] getUserIcon() {
		return userIcon;
	}

	/**
	 * 实现留言的用户的头像的set方法
	 * @param userIcon
	 */
	public void setUserIcon(byte[] userIcon) {
		this.userIcon = userIcon;
	}
	
}
