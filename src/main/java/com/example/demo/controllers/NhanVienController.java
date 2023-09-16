package com.example.demo.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NhanVienController {
    @GetMapping("nhan-vien/create")
    public String nhanvienCreate(){
        return "NhanVien/create";
    }
}
