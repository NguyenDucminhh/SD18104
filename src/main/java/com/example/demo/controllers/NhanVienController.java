package com.example.demo.controllers;


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

    @PostMapping("nhan-vien/store")
    public String NhanVienStore(@RequestParam("ma") String ma,
                                @RequestParam("ten")String ten,
                                @RequestParam("tenDem") String tendem,
                                @RequestParam("ho")String ho,
                                @RequestParam("gioiTinh") Integer gioitinh,
                                @RequestParam("ngaySinh")LocalDate ngaysinh,
                                @RequestParam("diaChi") String diachi,
                                @RequestParam("sdt") String sdt,
                                @RequestParam("matKhau") String matkhau,
                                @RequestParam("idCH") String idCH,
                                @RequestParam("idCV") String idCV,
                                @RequestParam("idGuiBC") String idGuiBC
                                )
    {
        System.out.println("Thêm thành công ID Nhân viên: "+ma);
        return "NhanVien/store";
    }
}
