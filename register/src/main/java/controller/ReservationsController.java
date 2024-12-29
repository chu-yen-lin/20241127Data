package controller;

import model.Reservation;
import service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/reservations")
public class ReservationsController {

    @Autowired
    private ReservationService reservationService;

    // 獲取使用者預約紀錄
    @GetMapping("/user")
    public ResponseEntity<List<Reservation>> getUserReservations(@RequestParam int userId) {
        List<Reservation> reservations = reservationService.getUserReservations(userId);
        return ResponseEntity.ok(reservations);
    }

    // 獲取特定日期和時段的預約紀錄
    @GetMapping
    public ResponseEntity<List<Reservation>> getReservations(@RequestParam String date, @RequestParam String timeSlot) {
        LocalDate bookDate = LocalDate.parse(date);
        List<Reservation> reservations = reservationService.getReservationsByDateAndTime(bookDate, timeSlot);
        return ResponseEntity.ok(reservations);
    }

    // 創建預約
    @PostMapping
    public ResponseEntity<Reservation> createReservation(@RequestBody Reservation reservation) {
        Reservation createdReservation = reservationService.createReservation(reservation);
        return new ResponseEntity<>(createdReservation, HttpStatus.CREATED);
    }

    // 刪除預約
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteReservation(@PathVariable int id) {
        Optional<Reservation> reservation = reservationService.getReservationById(id);
        if (reservation.isPresent()) {
            reservationService.deleteReservation(id);
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}