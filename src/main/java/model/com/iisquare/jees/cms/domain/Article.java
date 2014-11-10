package com.iisquare.jees.cms.domain;

/**
 * 文章实体类
 * @author Ouyang <iisquare@163.com>
 *
 */
public class Article {
	private Integer id; // 主键
	private String title; // 标题
	private Integer columnId; // 栏目主键
	private String goal; // 打开方式
	private String url; // 链接地址
	private String keywords; // 页面关键词
	private String description; // 页面描述
	private String fromName; // 来源名称
	private String fromUrl; // 来源地址
	private String label; // 标签（逗号分隔）
	private String logo; // 预览图片
	private String content; // 内容
	private Integer commentEnable; // 启用评论
	private Integer commentAllow; // 允许评论
	private Integer countComment; // 评论数
	private Integer countPV; // 页面访问数
	private Integer countUV; // 访问人数（需要用户独立标示支持）
	private Integer countIP; // 独立IP数
	private Integer isTop; // 置顶
	private Long sort; // 排序（从高到低）
	private Integer status; // 状态
	private Integer createId; // 添加者
	private Long createTime; // 添加时间
	private Integer updateId; // 修改者
	private Long updateTime; // 修改时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getColumnId() {
		return columnId;
	}

	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFromName() {
		return fromName;
	}

	public void setFromName(String fromName) {
		this.fromName = fromName;
	}

	public String getFromUrl() {
		return fromUrl;
	}

	public void setFromUrl(String fromUrl) {
		this.fromUrl = fromUrl;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getCommentEnable() {
		return commentEnable;
	}

	public void setCommentEnable(Integer commentEnable) {
		this.commentEnable = commentEnable;
	}

	public Integer getCommentAllow() {
		return commentAllow;
	}

	public void setCommentAllow(Integer commentAllow) {
		this.commentAllow = commentAllow;
	}

	public Integer getCountComment() {
		return countComment;
	}

	public void setCountComment(Integer countComment) {
		this.countComment = countComment;
	}

	public Integer getCountPV() {
		return countPV;
	}

	public void setCountPV(Integer countPV) {
		this.countPV = countPV;
	}

	public Integer getCountUV() {
		return countUV;
	}

	public void setCountUV(Integer countUV) {
		this.countUV = countUV;
	}

	public Integer getCountIP() {
		return countIP;
	}

	public void setCountIP(Integer countIP) {
		this.countIP = countIP;
	}

	public Integer getIsTop() {
		return isTop;
	}

	public void setIsTop(Integer isTop) {
		this.isTop = isTop;
	}

	public Long getSort() {
		return sort;
	}

	public void setSort(Long sort) {
		this.sort = sort;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getCreateId() {
		return createId;
	}

	public void setCreateId(Integer createId) {
		this.createId = createId;
	}

	public Long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Long createTime) {
		this.createTime = createTime;
	}

	public Integer getUpdateId() {
		return updateId;
	}

	public void setUpdateId(Integer updateId) {
		this.updateId = updateId;
	}

	public Long getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Long updateTime) {
		this.updateTime = updateTime;
	}

	public Article() {}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Article other = (Article) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
}
