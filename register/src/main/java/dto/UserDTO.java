package dto;

public class UserDTO {

    private String username;
    private String password;

    // 默认构造器
    public UserDTO() {}

    // 带参构造器
    public UserDTO(String username, String password) {
        this.username = username;
        this.password = password;
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
}
