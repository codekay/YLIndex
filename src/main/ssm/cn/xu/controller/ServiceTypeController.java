package cn.xu.controller;

import cn.xu.model.ServiceType;
import cn.xu.service.ServiceTypeService;
import cn.xu.tools.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ServiceTypeController {

    @Autowired
    private ServiceTypeService serviceTypeService;


    @RequestMapping(value = "/showService")
    @ResponseBody
    public Object showServices(){
        List<ServiceType> serviceTypes = serviceTypeService.queryAll();
        return ResultUtil.success(serviceTypes);
    }
}
