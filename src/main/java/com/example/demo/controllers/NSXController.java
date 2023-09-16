package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NSXController {
    @GetMapping("nsx/create")
    public String NSX(){
        {
            return "NSX/create";
        }
    }
    @PostMapping("nsx/store")
    public String NSXStore(@RequestParam("ma") String ma, @RequestParam("ten") String name){

        System.out.println("Mã: "+ ma +"\nTên: "+ name);
        return "NSX/store";
    }
}
