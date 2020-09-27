package com.zxt.service.impl;

import com.zxt.dao.StudentDao;
import com.zxt.domain.Student;
import com.zxt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        int result = studentDao.insertStudent(student);
        return result;
    }

    @Override
    public List<Student> findStudent() {
        return studentDao.selectStudent();
    }
}
