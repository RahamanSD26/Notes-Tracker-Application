package entities;

import org.hibernate.annotations.CascadeType;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Entity
public class Signin {
    @Id
    private int id;
    @OneToMany(mappedBy = "signin", orphanRemoval = true)
    private List<Note> notes = new ArrayList<Note>();

    public List<Note> getNotes() {
        return notes;
    }

    public void setNotes(List<Note> notes) {
        this.notes = notes;
    }

    private String name;
    private String password;
    private String confirmPassword;
    private String email;
    private String securityQuestion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSecurityQuestion() {
        return securityQuestion;
    }

    public void setSecurityQuestion(String securityQuestion) {
        this.securityQuestion = securityQuestion;
    }
   public Signin(String name, String password, String confirmPassword, String email, String securityQuestion){
        this.id=new Random().nextInt(5000);
        this.name=name;
        this.password=password;
        this.confirmPassword=confirmPassword;
        this.email=email;
        this.securityQuestion=securityQuestion;

   }
   public Signin(){}
}
