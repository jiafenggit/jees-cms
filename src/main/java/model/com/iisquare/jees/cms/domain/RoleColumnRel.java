package com.iisquare.jees.cms.domain;

/**
 * 文章栏目与角色关系实体类
 * @author Ouyang <iisquare@163.com>
 *
 */
public class RoleColumnRel {
	private Integer id; // 主键
	private Integer roleId; // 角色主键
	private Integer columnId; // 文章栏目主键
	private Integer listEnable; // 管理列表中可见
	private Integer publishEnable; // 允许发布文章

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Integer getColumnId() {
		return columnId;
	}

	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}

	public Integer getListEnable() {
		return listEnable;
	}

	public void setListEnable(Integer listEnable) {
		this.listEnable = listEnable;
	}

	public Integer getPublishEnable() {
		return publishEnable;
	}

	public void setPublishEnable(Integer publishEnable) {
		this.publishEnable = publishEnable;
	}

	public RoleColumnRel() {}

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
		RoleColumnRel other = (RoleColumnRel) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
