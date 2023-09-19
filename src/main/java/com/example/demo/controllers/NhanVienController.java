package com.example.demo.controllers;


import com.example.demo.Request.NhanVienRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
public class NhanVienController {
    @GetMapping("nhan-vien/create")
    public String nhanvienCreate(){
        return "NhanVien/create";
    }

    @GetMapping("nhan-vien/store")
    public String getStore(){
        return "NhanVien/store";
    }
    @PostMapping("nhan-vien/store")
    public String NhanVienStore(
                                NhanVienRequest nv
                                )
    {
        System.out.println("Thêm thành công ID Nhân viên: "+ nv.getMa());
        return "NhanVien/store";
    }
}
