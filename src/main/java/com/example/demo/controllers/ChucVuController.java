package com.example.demo.controllers;

import com.example.demo.DTO.ChucVuDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("chuc-vu")
public class ChucVuController {
    @GetMapping("create")
    public String chucVuCreate(){
        return "ChucVu/create";
    }
    @PostMapping("store")
    public String chucVuStore(@ModelAttribute ChucVuDTO chucvu)
    {

        System.out.println("Mã chức vụ: "+chucvu.getMa() +"\nTen: "+chucvu.getTen());
        return "ChucVu/store";
    }
}
