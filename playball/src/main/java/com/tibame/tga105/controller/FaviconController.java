package com.tibame.tga105.controller;

import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.io.InputStream;

@RestController
public class FaviconController {

    @GetMapping("/favicon.ico")
    public ResponseEntity<byte[]> getFavicon() throws IOException {
        // 讀取 favicon.ico 文件
        ClassPathResource resource = new ClassPathResource("static/favicon.ico");
        InputStream inputStream = resource.getInputStream();

        // 讀取檔案並返回 byte array
        byte[] bytes = inputStream.readAllBytes();

        // 返回圖片數據並設置 Content-Type
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_TYPE, "image/x-icon")
                .body(bytes);
    }
}