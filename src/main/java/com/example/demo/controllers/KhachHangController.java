package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.swing.text.PasswordView;
import java.time.LocalDate;
import java.util.Date;

@Controller
public class KhachHangController {
    @GetMapping("khach-hang/create")
    public String khachHang(){
       {
            return "KhachHang/create";
        }
    }

    @PostMapping("khach-hang/store")
    public String khachHangStore(
                                 @RequestParam("ma") String ma,
                                 @RequestParam("ten") String ten,
                                 @RequestParam("tendem") String tendem,
                                 @RequestParam("ho") String ho,
                                 @RequestParam("ngaysinh") Date ngaysinh,
                                 @RequestParam("sdt") String sdt,
                                 @RequestParam("diachi") String diachi,
                                 @RequestParam("thanhpho") String thanhpho,
                                 @RequestParam("quocgia") String quocgia,
                                 @RequestParam("matkhau") String matkhau
    ) {
        System.out.println("Thêm mới thành công\nMã: " + ma + "" +
                "\nTên: " + ten +
                "\nTên đệm:" + tendem +
                "\nHọ: "+ ho+
                "\nNgay Sinh:" +ngaysinh+
                "\nSĐT: "+sdt +
                "\nĐịa Chỉ: "+diachi+
                "\nThanh Phố: "+thanhpho+
                "\nQuoc Gia: "+quocgia+
                "\nMat Khẩu: "+matkhau
        );
        return "KhachHang/store";
    }
}
