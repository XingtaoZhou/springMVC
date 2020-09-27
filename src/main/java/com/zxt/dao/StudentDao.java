package com.zxt.dao;

import com.zxt.domain.Student;

import java.util.List;

public interface StudentDao {

    int insertStudent(Student student);

    List<Student> selectStudent();
}
