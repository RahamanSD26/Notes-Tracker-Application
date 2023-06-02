package entities;
import javax.persistence.*;
@Entity
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id; // Assuming id is the primary key

    @Column(length = 100)
    private String adminEmail;

    @Column(length = 100)
    private String adminPassword;

    public Admin() {
        // Default constructor required by Hibernate
    }

    public long getId() {
        return id;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }
}