
package com.example.studentcourse.service;

import com.example.studentcourse.entity.Student;
import com.example.studentcourse.repository.StudentRepository;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    // CREATE
    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    // READ - Get all students
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    // READ - Get student by ID
    public Student getStudentById(Long id) {
        return studentRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Student not found"));
    }

    // UPDATE
    public Student updateStudent(Long id, Student updatedStudent) {
        Student existingStudent = getStudentById(id);

        existingStudent.setName(updatedStudent.getName());
        existingStudent.setEmail(updatedStudent.getEmail());
        existingStudent.setAge(updatedStudent.getAge());
        existingStudent.setCourse(updatedStudent.getCourse());

        return studentRepository.save(existingStudent);
    }

    // DELETE
    public void deleteStudent(Long id) {
        Student student = getStudentById(id);
        studentRepository.delete(student);
    }

    // Get students with courses
    public List<Student> getStudentsWithCourses() {
        return studentRepository.findStudentsWithCourses();
    }
}
