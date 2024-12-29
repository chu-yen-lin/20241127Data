package model;
import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "RESERVATIONS")
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "USER_ID", nullable = false)
    private int userId;

    @Column(name = "BOOK_DATE", nullable = false)
    private LocalDate bookDate;

    @Column(name = "TIME_SLOT", nullable = false)
    private String timeSlot;

    @Column(name = "STATUS", nullable = false, columnDefinition = "varchar(50) default '未到'")
    private String status = "未到";

    @Column(name = "BOOK_ORDER", nullable = false)
    private String bookOrder;

    @Column(name = "SEND_MAIL", nullable = false, columnDefinition = "int default 0")
    private int sendMail = 0;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public LocalDate getBookDate() {
        return bookDate;
    }

    public void setBookDate(LocalDate bookDate) {
        this.bookDate = bookDate;
    }

    public String getTimeSlot() {
        return timeSlot;
    }

    public void setTimeSlot(String timeSlot) {
        this.timeSlot = timeSlot;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getBookOrder() {
        return bookOrder;
    }

    public void setBookOrder(String bookOrder) {
        this.bookOrder = bookOrder;
    }

    public int getSendMail() {
        return sendMail;
    }

    public void setSendMail(int sendMail) {
        this.sendMail = sendMail;
    }
}