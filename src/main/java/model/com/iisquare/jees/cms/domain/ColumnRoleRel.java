package com.iisquare.jees.cms.domain;

/**
 * 文章栏目与角色关系实体类
 * @author Ouyang <iisquare@163.com>
 *
 */
public class ColumnRoleRel {
	private Integer columnId; // 文章栏目主键
	private Integer roleId; // 角色主键
	private Integer listEnable; // 管理列表中可见
	private Integer publishSelfEnable; // 允许在当前节点中发布文章
	private Integer publishChildrenEnable; // 允许在子节点中发布文章
	private Integer manageSelfEnable; // 允许管理当前节点
	private Integer manageChildrenEnable; // 允许管理子节点

	public Integer getColumnId() {
		return columnId;
	}

	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Integer getListEnable() {
		return listEnable;
	}

	public void setListEnable(Integer listEnable) {
		this.listEnable = listEnable;
	}

	public Integer getPublishSelfEnable() {
		return publishSelfEnable;
	}

	public void setPublishSelfEnable(Integer publishSelfEnable) {
		this.publishSelfEnable = publishSelfEnable;
	}

	public Integer getPublishChildrenEnable() {
		return publishChildrenEnable;
	}

	public void setPublishChildrenEnable(Integer publishChildrenEnable) {
		this.publishChildrenEnable = publishChildrenEnable;
	}

	public Integer getManageSelfEnable() {
		return manageSelfEnable;
	}

	public void setManageSelfEnable(Integer manageSelfEnable) {
		this.manageSelfEnable = manageSelfEnable;
	}

	public Integer getManageChildrenEnable() {
		return manageChildrenEnable;
	}

	public void setManageChildrenEnable(Integer manageChildrenEnable) {
		this.manageChildrenEnable = manageChildrenEnable;
	}

	public ColumnRoleRel() {}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((columnId == null) ? 0 : columnId.hashCode());
		result = prime * result + ((roleId == null) ? 0 : roleId.hashCode());
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
		ColumnRoleRel other = (ColumnRoleRel) obj;
		if (columnId == null) {
			if (other.columnId != null)
				return false;
		} else if (!columnId.equals(other.columnId))
			return false;
		if (roleId == null) {
			if (other.roleId != null)
				return false;
		} else if (!roleId.equals(other.roleId))
			return false;
		return true;
	}
	
}
