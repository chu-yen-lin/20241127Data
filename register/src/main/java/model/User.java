package model;

import util.Hash;

public class User {
    private String username;
    private String password;  // 存儲哈希後的密碼
    private String salt;  // 存儲鹽

    // 用於創建 User 的構造函數
    public User(String username, String password) {
        this.username = username;
        this.salt = Hash.getSalt();  // 生成鹽
        this.password = Hash.getHash(password, this.salt);  // 密碼加鹽後再哈希
    }

    // 用於驗證用戶密碼
    public boolean checkPassword(String inputPassword) {
        // 使用保存的鹽和用戶輸入的密碼來進行哈希並比較
        String hashedInputPassword = Hash.getHash(inputPassword, this.salt);
        return this.password.equals(hashedInputPassword);
    }

    // Getter 和 Setter 方法
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }
}