package com.zxt.service;

import com.zxt.domain.Student;

import java.util.List;

public interface StudentService {

    int addStudent(Student student);

    List<Student> findStudent();
}
