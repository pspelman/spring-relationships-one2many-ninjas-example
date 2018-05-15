package com.philspelman.springrelationshipsninjaso2m.models;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

//


//
//@Entity
//@Table(name="dojos")
//public class Dojo {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//
//    @Column
//    @Size(min = 3, max = 255)
//    private String name;
//
//    @Column(updatable = false)
//    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
//    private Date createdAt;
//
//    @Column
//    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
//    private Date updatedAt;
//
//    //state the one to many relationship
//    @Column
//    @OneToMany(mappedBy = "dojo", fetch = FetchType.LAZY)
//    private List<Ninja> ninjas;
//
//    //always before creating
//    @PrePersist
//    protected void onCreate() {
//        this.createdAt = new Date();
//        this.updatedAt = this.createdAt;
//    }
//
//    //always before updating
//    @PreUpdate
//    protected void onUpdate() {
//        this.updatedAt = new Date();
//    }
//
//
//    public Dojo() {
//    }
//
//    public Dojo(@Size(min = 3, max = 255) String name) {
//        this.name = name;
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public Date getCreatedAt() {
//        return createdAt;
//    }
//
//    public void setCreatedAt(Date createdAt) {
//        this.createdAt = createdAt;
//    }
//
//    public Date getUpdatedAt() {
//        return updatedAt;
//    }
//
//    public void setUpdatedAt(Date updatedAt) {
//        this.updatedAt = updatedAt;
//    }
//
//    public List<Ninja> getNinjas() {
//        return ninjas;
//    }
//
//    public void setNinjas(List<Ninja> ninjas) {
//        this.ninjas = ninjas;
//    }
//}


@Entity
@Table(name="dojos")
public class Dojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    @Size(min = 2, max = 100)
    private String name;

    @Column(updatable=false)
    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
    private Date createdAt;

    @Column
    @DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
    private Date updatedAt;

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
        this.updatedAt = this.createdAt;
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }


    @OneToMany(mappedBy="dojo", fetch = FetchType.LAZY)
    private List<Ninja> ninjas;

    public Dojo() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public List<Ninja> getNinjas() {
        return ninjas;
    }

    public void setNinjas(List<Ninja> ninjas) {
        this.ninjas = ninjas;
    }
    // ...
    // getters and setters removed for brevity
    // ...
}