package com.tibame.tga105.repository;

import com.tibame.tga105.vo.UserVO;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserVO, Integer> {
    // 根據email查找用戶
    UserVO findByEmail(String email);

    // 根據email檢查是否已存在
    boolean existsByEmail(String email);
}