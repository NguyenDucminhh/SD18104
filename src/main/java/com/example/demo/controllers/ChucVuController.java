package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChucVuController {
    @GetMapping("chuc-vu/create")
    public String chucVuCreate(){
        return "ChucVu/create";
    }
}
