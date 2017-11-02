package org.shlg.news.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
 * @date 2017-10-12
 * @introduce 这是新闻用户实体
 */

@Entity
@Table(name="tb_user",catalog="db_newsbulletin")
public class User {
	
	private String userId;
	
	/**
	 * 声明用户名
	 */
	private String username;
	
	/**
	 * 声明用户密码
	 */
	private String password;
	
	/**
	 * 声明用户生日
	 */
	private Date birthday;
	
	/**
	 * 声明用户手机
	 */
	private String mobile;
	
	/**
	 * 声明用户年龄
	 */
	private int age;
	
	/**
	 * 声明用户身高
	 */
	private float height;
	
	/**
	 * 声明用户体重
	 */
	private float weight;
	
	/**
	 * 声明用户性别
	 */
	private String gender;
	
	/**
	 * 声明用户职业
	 */
	private String occupation;
	
	/**
	 * 声明用户昵称
	 */
	private String nickname;
	
	/**
	 * 声明用户身份证
	 */
	private String identifyCard;
	
	/**
	 * 声明用户住址
	 */
	private String address;
	
	/**
	 * 声明用户籍贯
	 */
	private String nativePlace;
	
	/**
	 * 声明用户QQ号
	 */
	private String QQ;

	/**
	 * 声明用户微信号
	 */
	private String WeiXin;
	
	/**
	 * 声明用户新浪号
	 */
	private String XinLang;
	
	/**
	 * 声明用户头像
	 */
	private byte[] userPicture;
	
	/**
	 * 声明用户邮箱
	 */
	private String email;
	
	/**
	 * 声明用户登录状态
	 */
	private String loginStatus;
	
	/**
	 * 创建不带有参数的用户构造函数
	 */
	public User() {
		// TODO Auto-generated constructor stub
		super();
	}

	/**
	 * 创建带有参数的用户构造函数
	 * @param userId
	 * @param username
	 * @param password
	 * @param birthday
	 * @param mobile
	 * @param age
	 * @param height
	 * @param weight
	 * @param gender
	 * @param occupation
	 * @param nickname
	 * @param identifyCard
	 * @param address
	 * @param nativePlace
	 * @param qQ
	 * @param weixin
	 * @param userPicture
	 * @param email
	 */
	public User(String userId, String username, String password, Date birthday,
			String mobile, int age, float height, float weight, String gender,
			String occupation, String nickname, String identifyCard,
			String address, String nativePlace, String QQ, String WeiXin,String XinLang,
			byte[] userPicture, String email,String loginStatus) {
		super();
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.birthday = birthday;
		this.mobile = mobile;
		this.age = age;
		this.height = height;
		this.weight = weight;
		this.gender = gender;
		this.occupation = occupation;
		this.nickname = nickname;
		this.identifyCard = identifyCard;
		this.address = address;
		this.nativePlace = nativePlace;
		this.QQ = QQ;
		this.WeiXin = WeiXin;
		this.XinLang = XinLang;
		this.userPicture = userPicture;
		this.email = email;
		this.loginStatus = loginStatus;
	}

	/**
	 * 声明获得用户id的方法
	 * @return 
	 */
	@Id
	@GenericGenerator(name="self",strategy="uuid")
	@GeneratedValue(generator="self")
	@Column(name="userId",length=60,insertable=true,unique=true,nullable=false,updatable=true)
	public String getUserId() {
		return userId;
	}

	/**
	 * 声明设置用户id的方法
	 * @param userId
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * 声明获得用户名的方法
	 * @return username
	 */
	@Column(name="username",length=30,nullable=false,insertable=true,updatable=true)
	public String getUsername() {
		return username;
	}

	/**
	 * 声明设置用户名的方法
	 * @param username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name="password",length=20,insertable=true,updatable=true,nullable=false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name="birthday",length=6,nullable=true,insertable=true,updatable=true)
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name="mobile",length=13,nullable=true,insertable=true,updatable=true)
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Column(name="age",length=4,nullable=true,insertable=true,updatable=true)
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Column(name="height",scale=6,precision=2,insertable=true,updatable=true,nullable=true)
	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	@Column(name="weight",scale=6,precision=2,insertable=true,updatable=true,nullable=true)
	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	@Column(name="gender",length=6,insertable=true,updatable=true,nullable=true)
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name="occupation",length=30,nullable=true,insertable=true,updatable=true)
	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	@Column(name="nickname",length=25,nullable=true,insertable=true,updatable=true)
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Column(name="identifyCard",length=28,insertable=true,updatable=true,nullable=true)
	public String getIdentifyCard() {
		return identifyCard;
	}

	public void setIdentifyCard(String identifyCard) {
		this.identifyCard = identifyCard;
	}

	@Column(name="address",length=60,insertable=true,updatable=true,nullable=true)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name="nativePlace",length=60,insertable=true,updatable=true,nullable=true)
	public String getNativePlace() {
		return nativePlace;
	}

	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}

	@Column(name="QQ",length=16,nullable=true,insertable=true,updatable=true)
	public String getQQ() {
		return QQ;
	}

	public void setQQ(String qQ) {
		QQ = qQ;
	}

	@Column(name="weixin",length=16,nullable=true,insertable=true,updatable=true)
	public String getWeiXin() {
		return WeiXin;
	}
	
	public void setWeiXin(String weiXin) {
		WeiXin = weiXin;
	}
	
	@Column(name="xinlang",length=28,nullable=true,insertable=true,updatable=true)
	public String getXinLang() {
		return XinLang;
	}
	
	public void setXinLang(String xinLang) {
		XinLang = xinLang;
	}
	
	@Column(name="userPicture",length=500,insertable=true,updatable=true,nullable=true)
	public byte[] getUserPicture() {
		return userPicture;
	}

	public void setUserPicture(byte[] userPicture) {
		this.userPicture = userPicture;
	}
	
	@Column(name="email",length=40,insertable=true,updatable=true,nullable=true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/*@Column(name="loginStatus",length=8,insertable=true,updatable=true,nullable=true)*/
	@Column(name="loginStatus",columnDefinition="varchar(8) default '0'",nullable=true,insertable=true,updatable=true)
	public String getLoginStatus() {
		return loginStatus;
	}
	
	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}

	/* 
	 * 声明toString方法
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username
				+ ", password=" + password + ", birthday=" + birthday
				+ ", mobile=" + mobile + ", age=" + age + ", height=" + height
				+ ", weight=" + weight + ", gender=" + gender + ", occupation="
				+ occupation + ", nickname=" + nickname + ", identifyCard="
				+ identifyCard + ", address=" + address + ", nativePlace="
				+ nativePlace + ", QQ=" + QQ + ", WeiXin=" + WeiXin
				+ ", XinLang=" + XinLang + ", userPicture="
				+ Arrays.toString(userPicture) + ", email=" + email
				+ ", loginStatus=" + loginStatus + "]";
	}

 }
