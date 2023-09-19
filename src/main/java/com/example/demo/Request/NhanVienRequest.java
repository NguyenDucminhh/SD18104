package com.example.demo.Request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NhanVienRequest {
    private String ma;
    private String ten;
    private String tenDem;
    private String ho;
    private String gioiTinh;
    private LocalDate ngaySinh;
    private String diaChi;
    private String sdt;
    private String matKhau;
    private String idCH;
    private String idCV;
    private String idGuiBC;

}
