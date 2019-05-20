package net.wanho.service;

import net.wanho.pojo.Userrole;
import net.wanho.service.base.BaseService;

public interface UserRoleService extends BaseService<Userrole> {


    public void deleteByuserId(Long userid);
}
