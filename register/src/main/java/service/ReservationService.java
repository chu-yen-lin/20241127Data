package service;

import model.Reservation;
import repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    // 查詢使用者的所有預約
    public List<Reservation> getUserReservations(int userId) {
        return reservationRepository.findByUserId(userId);
    }

    // 查詢特定日期和時段的預約
    public List<Reservation> getReservationsByDateAndTime(LocalDate date, String timeSlot) {
        return reservationRepository.findByBookDateAndTimeSlot(date, timeSlot);
    }

    // 創建預約
    public Reservation createReservation(Reservation reservation) {
        return reservationRepository.save(reservation);
    }

    // 刪除預約
    public void deleteReservation(int id) {
        reservationRepository.deleteById(id);
    }

    // 查詢預約是否存在
    public Optional<Reservation> getReservationById(int id) {
        return reservationRepository.findById(id);
    }
}