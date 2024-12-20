package service;

import model.User;
import repository.UserRepository;
import util.Hash;  // 引入 Hash 類
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    // 檢查用戶名是否已存在
    public boolean isUsernameTaken(String username) {
        return userRepository.findByUsername(username) != null;
    }

    // 保存用戶，並對密碼進行加鹽哈希
    public void saveUser(User user) {
        // 生成一個鹽
        String salt = Hash.getSalt();
        
        // 使用 Hash 類對密碼進行加鹽哈希
        String hashedPassword = Hash.getHash(user.getPassword(), salt);
        
        // 設置加鹽哈希的密碼
        user.setPassword(hashedPassword);
        
        // 儲存鹽以便日後驗證時使用
        user.setSalt(salt);
        
        // 保存用戶到資料庫
        userRepository.save(user);
    }

    // 根據用戶名查找用戶
    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}