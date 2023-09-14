package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class KhachHangController {
    @GetMapping("khach-hang/create")
    public String khachHang(){
       {
            return "KhachHang/create";
        }
    }
}
