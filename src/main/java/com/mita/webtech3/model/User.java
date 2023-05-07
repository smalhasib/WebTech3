package com.mita.webtech3.model;

import com.mita.webtech3.utils.Department;
import com.mita.webtech3.utils.UserType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "username", nullable = false, unique = true)
    private String username;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "department")
    @Enumerated(EnumType.STRING)
    private Department department;

    @Column(name = "role", nullable = false)
    @Enumerated(EnumType.STRING)
    private UserType role;

    @OneToMany(mappedBy = "student", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Enrollment> enrollments = new HashSet<>();
}
