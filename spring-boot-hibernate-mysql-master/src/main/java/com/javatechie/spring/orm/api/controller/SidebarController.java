package com.javatechie.spring.orm.api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SidebarController {

	@RequestMapping("/medicine")
    public String medicine() {
        return "medicine";
    }
}
