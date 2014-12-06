package com.iisquare.jees.cms.domain;

/**
 * 第三方账号实体类
 * @author Ouyang<iisquare@163.com>
 *
 */
public class MemberThird {
	private Integer id; // 主键
	private Integer memberId; // 用户主键
	/**
	 * 推荐账号类型
	 * email - 电子邮箱
	 * mobile - 手机号
	 * weibo - 微博
	 * qq - 腾讯QQ
	 */
	private String type; // 账号类型
	private String username; // 第三方账号
	private Integer status; // 状态

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public MemberThird() {}

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
		MemberThird other = (MemberThird) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
