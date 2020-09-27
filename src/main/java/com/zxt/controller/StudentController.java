package com.zxt.controller;

import com.zxt.domain.Student;
import com.zxt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;


@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;

    //注册学生
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        ModelAndView mv = new ModelAndView();
        String tips = "注册成功";
        int result = service.addStudent(student);
        if (result <= 0 ){
            tips = "注册失败";
        }
        mv.addObject("tips",tips);
        mv.setViewName("result");
        return mv;
    }

    //查询学生
    @RequestMapping("/selectStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        List<Student> studentList = service.findStudent();
        return studentList;
    }
}
