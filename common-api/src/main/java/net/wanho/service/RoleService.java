package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Role;
import net.wanho.service.base.BaseService;

public interface RoleService extends BaseService<Role> {

    public PageInfo<Role> selectallrole(Integer start, Integer limit, Integer navigatePages);
}
