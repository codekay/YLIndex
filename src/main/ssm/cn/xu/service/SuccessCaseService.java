package cn.xu.service;

import cn.xu.dao.ServiceTypeDao;
import cn.xu.dao.SuccessCaseDao;
import cn.xu.model.ServiceType;
import cn.xu.model.SuccessCase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SuccessCaseService {

    @Autowired
    SuccessCaseDao successCaseDao;

    public void insert(SuccessCase successCase){
        if(successCaseDao != null)
            successCaseDao.insert(successCase);
        else
            System.out.println("successCaseDao = null");
    }

    public List<SuccessCase> queryAll() {
        return successCaseDao.queryAll();
    }

    public SuccessCase queryById(int id){
        return successCaseDao.queryById(id);
    }

}
