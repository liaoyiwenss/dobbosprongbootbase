package net.wanho.service;

import net.wanho.pojo.Permission;
import net.wanho.service.base.BaseService;

import java.util.List;
import java.util.Map;

public interface PermissonService extends BaseService<Permission> {


    List<Map<String,Object>> selectAllPermission();
}
