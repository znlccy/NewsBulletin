package org.shlg.news.domain;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-23
 * @introduce 这是教师团队
 */

@Entity
@Table(name="tb_tearcherteam",catalog="db_newsbulletin")
public class TearcherTeam {
	
	/**
	 * 声明教师团队的主键
	 */
	private String tearcherTeamId;
	
	/**
	 * 声明教师姓名
	 */
	private String tearcherName;
	
	/**
	 * 声明个人简介
	 */
	private String personalProfile;

	/**
	 * 声明教师的主要学习和工作经历
	 */
	private String studyExperience;
	
	/**
	 * 声明主要科研工作与成绩
	 */
	private String workAchievements;
	
	/**
	 * 主要社会学术团体兼职
	 */
	private String academicGroups;
	
	/**
	 * 声明主要研究方向
	 */
	private String researchDirection;

	/**
	 * 声明联系方式
	 */
	private String contactStyle;
	
	/**
	 * 声明教师图片
	 */
	private byte[] tearcherPicture;
	
	/**
	 * 声明无参构造函数
	 */
	public TearcherTeam() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 声明有参构造函数
	 * @param tearcherTeamId
	 * @param tearcherName
	 * @param personalProfile
	 * @param studyExperience
	 * @param workAchievements
	 * @param academicGroups
	 * @param researchDirection
	 * @param contactStyle
	 * @param tearcherPicture
	 */
	public TearcherTeam(String tearcherTeamId, String tearcherName,
			String personalProfile, String studyExperience,
			String workAchievements, String academicGroups,
			String researchDirection, String contactStyle,
			byte[] tearcherPicture) {
		super();
		this.tearcherTeamId = tearcherTeamId;
		this.tearcherName = tearcherName;
		this.personalProfile = personalProfile;
		this.studyExperience = studyExperience;
		this.workAchievements = workAchievements;
		this.academicGroups = academicGroups;
		this.researchDirection = researchDirection;
		this.contactStyle = contactStyle;
		this.tearcherPicture = tearcherPicture;
	}

	/**
	 * 声明教师团队的主键的get方法
	 * @return
	 */
	@Id
	@GenericGenerator(name="self",strategy="uuid")
	@GeneratedValue(generator="self")
	@Column(name="tearcherTeamId",length=60,insertable=true,unique=true,nullable=false,updatable=true)
	public String getTearcherTeamId() {
		return tearcherTeamId;
	}

	/**
	 * 声明教师团队的主键的set方法
	 * @param tearcherTeamId
	 */
	public void setTearcherTeamId(String tearcherTeamId) {
		this.tearcherTeamId = tearcherTeamId;
	}

	/**
	 * 声明获得教师姓名的get方法
	 * @return
	 */
	@Column(name="tearcherName",length=50,nullable=true,insertable=true,updatable=true)
	public String getTearcherName() {
		return tearcherName;
	}

	/**
	 * 声明设置教师姓名的set方法
	 * @param tearcherName
	 */
	public void setTearcherName(String tearcherName) {
		this.tearcherName = tearcherName;
	}

	/**
	 * 声明获得个人简介的get方法
	 * @return
	 */
	@Column(name="personalProfile",length=2000,nullable=true,insertable=true,updatable=true)
	public String getPersonalProfile() {
		return personalProfile;
	}

	/**
	 * 声明设置个人简介的set方法
	 * @param personalProfile
	 */
	public void setPersonalProfile(String personalProfile) {
		this.personalProfile = personalProfile;
	}

	/**
	 * 声明获得学习经验的get方法
	 * @return
	 */
	@Column(name="studyExperience",length=2000,nullable=true,insertable=true,updatable=true)
	public String getStudyExperience() {
		return studyExperience;
	}

	/**
	 * 声明设置学习经验的set方法
	 * @param studyExperience
	 */
	public void setStudyExperience(String studyExperience) {
		this.studyExperience = studyExperience;
	}

	
	
	/**
	 * 声明获得工作成绩的get方法
	 * @return
	 */
	@Column(name="workAchievements",length=2000,nullable=true,insertable=true,updatable=true)
	public String getWorkAchievements() {
		return workAchievements;
	}

	/**
	 * 声明设置工作经验的set方法
	 * @param workAchievements
	 */
	public void setWorkAchievements(String workAchievements) {
		this.workAchievements = workAchievements;
	}

	/**
	 * 声明社会学术团体兼职的get方法
	 * @return
	 */
	@Column(name="academicGroups",length=2000,nullable=true,insertable=true,updatable=true)
	public String getAcademicGroups() {
		return academicGroups;
	}

	/**
	 * 声明社会学术团体兼职的set方法
	 * @param academicGroups
	 */
	public void setAcademicGroups(String academicGroups) {
		this.academicGroups = academicGroups;
	}

	/**
	 * 声明获得研究方向的get方法
	 * @return
	 */
	@Column(name="researchDirection",length=2000,nullable=true,insertable=true,updatable=true)
	public String getResearchDirection() {
		return researchDirection;
	}

	/**
	 * 声明设置研究方向的set方法
	 * @param researchDirection
	 */
	public void setResearchDirection(String researchDirection) {
		this.researchDirection = researchDirection;
	}

	/**
	 * 声明获得联系方法的get方法
	 * @return
	 */
	@Column(name="contactStyle",length=100,nullable=true,insertable=true,updatable=true)
	public String getContactStyle() {
		return contactStyle;
	}

	/**
	 * 声明设置联系方式的set方法
	 * @param contactStyle
	 */
	public void setContactStyle(String contactStyle) {
		this.contactStyle = contactStyle;
	}

	/**
	 * 声明获得教师图片的get方法
	 * @return
	 */
	@Column(name="tearcherPicture",length=300,nullable=true,insertable=true,updatable=true)
	public byte[] getTearcherPicture() {
		return tearcherPicture;
	}

	/**
	 * 声明设置教师头像的set方法
	 * @param tearcherPicture
	 */
	public void setTearcherPicture(byte[] tearcherPicture) {
		this.tearcherPicture = tearcherPicture;
	}

	/* 
	 * 声明师资团队的toString方法
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TearcherTeam [tearcherTeamId=" + tearcherTeamId
				+ ", tearcherName=" + tearcherName + ", personalProfile="
				+ personalProfile + ", studyExperience=" + studyExperience
				+ ", workAchievements=" + workAchievements
				+ ", academicGroups=" + academicGroups + ", researchDirection="
				+ researchDirection + ", contactStyle=" + contactStyle
				+ ", tearcherPicture=" + Arrays.toString(tearcherPicture) + "]";
	}
	
}
