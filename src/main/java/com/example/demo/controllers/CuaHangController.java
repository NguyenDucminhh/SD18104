package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CuaHangController {
    @GetMapping("cua-hang/create")
    public String createCuaHang(){
        return "CuaHang/create";
    }

    @PostMapping("cua-hang/store")
    public String CuaHangStore(
            @RequestParam("ma") String ma,
            @RequestParam("ten") String ten,
            @RequestParam("diaChi") String diaChi,
            @RequestParam("thanhPho") String thanhPho,
            @RequestParam("quocGia") String quocgia
            )
    {
        System.out.println("Thêm thành công cưa hàng, Mã: " +ma);
        return "CuaHang/store";
    }
}
