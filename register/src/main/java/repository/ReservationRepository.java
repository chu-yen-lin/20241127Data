package repository;

import model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

    // 查詢特定使用者的預約紀錄
    List<Reservation> findByUserId(int userId);

    // 查詢某個日期和時段的所有預約
    List<Reservation> findByBookDateAndTimeSlot(LocalDate bookDate, String timeSlot);
}