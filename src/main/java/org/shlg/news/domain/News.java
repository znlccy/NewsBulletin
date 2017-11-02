package org.shlg.news.domain;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.type.TrueFalseType;


/**
 * @author Zhuxiaodong
 * @version 0.0.1
 * @date 2017-10-12
 * @introduce 这是新闻实体类型
 */

@Entity
@Table(name="tb_news",catalog="db_newsbulletin")
public class News {
	
	/**
	 * 声明新闻id
	 */
	private String newsId;
	
	/**
	 * 声明新闻标题
	 */
	private String newsTitle;
	
	/**
	 * 声明新闻内容
	 */
	private String newsContent;
	
	/**
	 * 声明新闻创建日期
	 */
	private Date newsCreateTime;
	
	/**
	 * 声明新闻查看数目
	 */
	private int newsViewCount;
	
	/**
	 * 声明新闻关注度数
	 */
	private int newsFollow;
	
	/**
	 * 声明新闻订阅数
	 */
	private int newsSecriber;
	
	/**
	 * 声明新闻类型
	 */
	private int newsType;
	
	/**
	 * 声明新闻的重要性
	 */
	private int newsPrivilege;
	
	/**
	 * 声明新闻图片
	 */
	private byte[] newsPicture;
	
	/**
	 * 声明新闻视频
	 */
	private byte[] newsVideo;
	
	/**
	 * 声明新闻的作者
	 */
	private String author;
	
	/**
	 * 声明新闻的默认构造函数 
	 */
	public News() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 声明新闻的有参构造函数
	 * @param newsId
	 * @param newsTitle
	 * @param newsContent
	 * @param newsCreateTime
	 * @param newsViewCount
	 * @param newsFollow
	 * @param newsSecriber
	 * @param newsType
	 * @param newsPrivilege
	 * @param newsPicture
	 * @param newsVideo
	 */
	public News(String newsId, String newsTitle, String newsContent,
			Date newsCreateTime, int newsViewCount, int newsFollow,
			int newsSecriber, int newsType, int newsPrivilege,
			byte[] newsPicture, byte[] newsVideo,String author) {
		super();
		this.newsId = newsId;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsCreateTime = newsCreateTime;
		this.newsViewCount = newsViewCount;
		this.newsFollow = newsFollow;
		this.newsSecriber = newsSecriber;
		this.newsType = newsType;
		this.newsPrivilege = newsPrivilege;
		this.newsPicture = newsPicture;
		this.newsVideo = newsVideo;
		this.author = author;
	}

	/**
	 * 声明获取新闻主键id的方法
	 * @return
	 */
	@Id
	@GenericGenerator(name="uuid",strategy="uuid")
	@GeneratedValue(generator="uuid")
	@Column(name="newsId",length=12,nullable=false,insertable=true,updatable=true,unique=true)
	public String getNewsId() {
		return newsId;
	}

	/**
	 * 声明设置新闻主键id的方法
	 * @param newsId
	 */
	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}

	/**
	 * 声明获得新闻标题的方法
	 * @return
	 */
	@Column(name="newsTitle",insertable=true,length=200,nullable=false,updatable=true)
	public String getNewsTitle() {
		return newsTitle;
	}

	/**
	 * 声明设置新闻标题的方法
	 * @param newsTitle
	 */
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	/**
	 * 声明获得新闻内容的方法
	 * @return
	 */
	@Column(name="newsContent",length=300,insertable=true,updatable=true,nullable=true)
	public String getNewsContent() {
		return newsContent;
	}

	/**
	 * 声明设置新闻内容的方法
	 * @param newsContent
	 */
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	/**
	 * 声明获得新闻创建时间的方法
	 * @return
	 */
	@Column(name="newsCreateTime",length=6,nullable=true,insertable=true,updatable=true)
	public Date getNewsCreateTime() {
		return newsCreateTime;
	}

	/**
	 * 声明设置新闻创建时间的方法
	 * @param newsCreateTime
	 */
	public void setNewsCreateTime(Date newsCreateTime) {
		this.newsCreateTime = newsCreateTime;
	}

	/**
	 * 声明获得新闻查看数的方法
	 * @return
	 */
	@Column(name="newsViewCount",length=8,nullable=true,insertable=true,updatable=true)
	public int getNewsViewCount() {
		return newsViewCount;
	}

	/**
	 * 声明设置新闻被查看数的方法
	 * @param newsViewCount
	 */
	public void setNewsViewCount(int newsViewCount) {
		this.newsViewCount = newsViewCount;
	}

	/**
	 * 声明获得新闻关注数的方法
	 * @return
	 */
	@Column(name="newsFollow",length=12,nullable=true,insertable=true,updatable=true)
	public int getNewsFollow() {
		return newsFollow;
	}

	/**
	 * 声明设置新闻关注度的方法
	 * @param newsFollow
	 */
	public void setNewsFollow(int newsFollow) {
		this.newsFollow = newsFollow;
	}

	/**
	 * 声明获得新闻订阅者的方法
	 * @return
	 */
	@Column(name="newsSecriber",length=12,nullable=true,insertable=true,updatable=true)
	public int getNewsSecriber() {
		return newsSecriber;
	}

	/**
	 * 声明设置新闻订阅者的方法
	 * @param newsSecriber
	 */
	public void setNewsSecriber(int newsSecriber) {
		this.newsSecriber = newsSecriber;
	}

	/**
	 * 声明获得新闻类型的方法
	 * @return
	 */
	@Column(name="newsType",length=8,nullable=true,insertable=true,updatable=true)
	public int getNewsType() {
		return newsType;
	}

	/**
	 * 声明设置新闻类型的方法
	 * @param newsType
	 */
	public void setNewsType(int newsType) {
		this.newsType = newsType;
	}

	/**
	 * 声明获得新闻重要性的方法
	 * @return
	 */
	@Column(name="newsPrivilege",length=4,nullable=true,insertable=true,updatable=true)
	public int getNewsPrivilege() {
		return newsPrivilege;
	}

	/**
	 * 声明设置新闻重要性的方法
	 * @param newsPrivilege
	 */
	public void setNewsPrivilege(int newsPrivilege) {
		this.newsPrivilege = newsPrivilege;
	}

	/**
	 * 声明获得新闻图片的方法
	 * @return
	 */
	@Column(name="newsPicture",length=500,nullable=true,insertable=false,updatable=false)
	public byte[] getNewsPicture() {
		return newsPicture;
	}

	/**
	 * 声明设置新闻图片的方法
	 * @param newsPicture
	 */
	public void setNewsPicture(byte[] newsPicture) {
		this.newsPicture = newsPicture;
	}

	/**
	 * 声明获得新闻视频的方法
	 * @return
	 */
	@Column(name="newsPicture",length=800,nullable=true,insertable=true,updatable=true)
	public byte[] getNewsVideo() {
		return newsVideo;
	}

	/**
	 * 声明设置新闻视频的方法
	 * @param newsVideo
	 */
	public void setNewsVideo(byte[] newsVideo) {
		this.newsVideo = newsVideo;
	}
	
	/**
	 * 声明获得新闻作者的方法
	 * @return
	 */
	@Column(name="author",length=20,nullable=true,insertable=true,updatable=true)
	public String getAuthor() {
		return author;
	}

	/**
	 * 声明获得新闻作者的方法
	 * @param author
	 */
	public void setAuthor(String author) {
		this.author = author;
	}

	/* 
	 * 声明新闻类的toString方法
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsTitle=" + newsTitle
				+ ", newsContent=" + newsContent + ", newsCreateTime="
				+ newsCreateTime + ", newsViewCount=" + newsViewCount
				+ ", newsFollow=" + newsFollow + ", newsSecriber="
				+ newsSecriber + ", newsType=" + newsType + ", newsPrivilege="
				+ newsPrivilege + ", newsPicture="
				+ Arrays.toString(newsPicture) + ", newsVideo="
				+ Arrays.toString(newsVideo) + ", author=" + author + "]";
	}
	
}
