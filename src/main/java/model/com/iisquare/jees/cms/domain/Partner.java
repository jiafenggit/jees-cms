package com.iisquare.jees.cms.domain;

/**
 * 友情链接实体类
 * @author Ouyang <iisquare@163.com>
 *
 */
public class Partner {
	private Integer id; // 主键
	private String name; // 名称
	private Integer typeId; // 分类主键
	private String goal; // 打开方式
	private String url; // 链接地址
	private String description; // 介绍
	private String logo; // 网站图标
	private String remark; // 备注
	/**首页展示效果推荐
	 * LogoEnable,TitleEnable,展示效果
	 * true      ,true       ,图文模式
	 * true      ,false      ,图片模式
	 * false     ,true       ,文字模式
	 * false     ,false      ,不显示 
	 *  */
	private Integer LogoEnable; // 是否显示Logo
	private Integer TitleEnable; // 是否显示标题
	private Integer sort; // 排序（从高到低）
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getLogoEnable() {
		return LogoEnable;
	}

	public void setLogoEnable(Integer logoEnable) {
		LogoEnable = logoEnable;
	}

	public Integer getTitleEnable() {
		return TitleEnable;
	}

	public void setTitleEnable(Integer titleEnable) {
		TitleEnable = titleEnable;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
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

	public Partner() {}

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
		Partner other = (Partner) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
}
