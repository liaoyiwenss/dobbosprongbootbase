package net.wanho.controller.fastdfs;


import net.wanho.utils.FastDFSClient;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import net.wanho.utils.JsonResult;
@Controller
@RequestMapping("/getfastdfs")
public class FastDfsController {
    @RequestMapping("del")
    @ResponseBody
    public Object del(String Filename,String callback){
        boolean bol = FastDFSClient.deleteFile(Filename.substring(1, Filename.length()));
        if (StringUtils.isNotBlank(callback)) {
            MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(bol);
            mappingJacksonValue.setJsonpFunction(callback);
            return mappingJacksonValue;
        }
        return JsonResult.ok();
    }
    @RequestMapping("addfile")
    @ResponseBody
    public Object addProduct(@RequestParam("picpath") CommonsMultipartFile file,String callback){
        if (!file.isEmpty()) {
            String str = FastDFSClient.uploadFile(file);
            System.out.println(str);
            FastDFSClient.getResAccessUrl(str);
            if (StringUtils.isNotBlank(callback)) {
                MappingJacksonValue mappingJacksonValue = new MappingJacksonValue(str);
                mappingJacksonValue.setJsonpFunction(callback);
                return mappingJacksonValue;
            }
            return JsonResult.ok();
        }
        //        判断是否为跨域请求，如果跨域需要对结果进行转换
        return JsonResult.build(400,"未上传图片");
    }
}
