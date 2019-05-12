package net.wanho.mapper;

import net.wanho.mapper.base.BaseMapper;
import net.wanho.pojo.Useraddress;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UseraddressMapper extends BaseMapper<Useraddress> {

    List<Useraddress> queryaddressbyuserId(Long userid);
}