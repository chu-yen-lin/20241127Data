package controller;

import model.User;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    private UserService userService;

    // 用於處理用戶註冊的請求
    @PostMapping("/register")
    public ResponseEntity<String> registerUser(@RequestParam String username, @RequestParam String password) {
        // 檢查用戶名是否已存在
        if (userService.isUsernameTaken(username)) {
            return ResponseEntity.status(400).body("Username already taken.");
        }

        // 創建新用戶，這裡會自動處理密碼的加鹽和哈希
        User newUser = new User(username, password);

        // 使用 UserService 來保存用戶
        userService.saveUser(newUser);

        return ResponseEntity.ok("User registered successfully.");
    }

    // 用於處理用戶登錄的請求
    @PostMapping("/login")
    public ResponseEntity<String> loginUser(@RequestParam String username, @RequestParam String password) {
        // 檢查用戶名是否存在
        User user = userService.getUserByUsername(username);
        if (user == null) {
            return ResponseEntity.status(400).body("Username not found.");
        }

        // 驗證密碼
        if (user.checkPassword(password)) {
            return ResponseEntity.ok("Login successful.");
        } else {
            return ResponseEntity.status(400).body("Incorrect password.");
        }
    }
}