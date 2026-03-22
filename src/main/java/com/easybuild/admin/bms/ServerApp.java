package com.easybuild.admin.bms;

import com.mcst.easyfk.service.mybatisplus.ApplicationStarter;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
*
* @author liu yijun
* @since 2025-10-01
*/
@ComponentScan("com.mcst")
@SpringBootApplication
/*@MapperScan(basePackages = {"com.mcst.**.persistence.mapper", "com.gitee.sunchenbin.mybatis.actable.dao.*"})
@ComponentScan(basePackages = {"com.gitee.sunchenbin.mybatis.actable.manager.*"})*/
public class ServerApp {
    public static void main(String[] args) {
        ApplicationStarter.run(ServerApp.class, args);
    }
}
