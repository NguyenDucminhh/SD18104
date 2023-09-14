package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class LoginController

{
    @GetMapping("login")
  public String GetLoginForm(){
    return "login";

  }
  @PostMapping("login")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password){
      System.out.println("Login thành công\nEmail: " +email + "\nPassword: "+ password);
        return "login";
  }

}
