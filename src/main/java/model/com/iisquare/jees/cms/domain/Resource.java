package com.iisquare.jees.cms.domain;

/**
 * 资源实体类（用于权限控制）
 * @author Ouyang <iisquare@163.com>
 *
 */
public class Resource {
	private Integer id; // 主键
	private String name; // 名称
	private Integer parentId; // 父级
	private Integer referId; // 引用主键（该记录的权限设置采用被引用记录的权限设置）
	private Integer menuListEnable; // 在菜单列表中显示
	private Integer menuPickEnable; // 作为独立菜单被选取
	private String module; // 模块名称
	private String controller; // 控制器名称
	private String action; // 方法名称
	private Integer sort; // 排序（从高到低）
	private Integer status; // 状态
	private Integer createId; // 创建者
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

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getReferId() {
		return referId;
	}

	public void setReferId(Integer referId) {
		this.referId = referId;
	}

	public Integer getMenuListEnable() {
		return menuListEnable;
	}

	public void setMenuListEnable(Integer menuListEnable) {
		this.menuListEnable = menuListEnable;
	}

	public Integer getMenuPickEnable() {
		return menuPickEnable;
	}

	public void setMenuPickEnable(Integer menuPickEnable) {
		this.menuPickEnable = menuPickEnable;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getController() {
		return controller;
	}

	public void setController(String controller) {
		this.controller = controller;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
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

	public Resource() {}

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
		Resource other = (Resource) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
