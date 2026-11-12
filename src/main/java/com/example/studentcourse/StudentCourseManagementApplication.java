
package com.example.studentcourse;

import com.example.studentcourse.entity.Course;
import com.example.studentcourse.entity.Student;
import com.example.studentcourse.repository.CourseRepository;
import com.example.studentcourse.repository.StudentRepository;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.List;

@SpringBootApplication
public class StudentCourseManagementApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudentCourseManagementApplication.class, args);
    }

    @Bean
    CommandLineRunner initializeDatabase(
            CourseRepository courseRepository,
            StudentRepository studentRepository) {

        return args -> {

            if (courseRepository.count() == 0) {

                List<Course> courses = List.of(
                    new Course("Java", "6 Months", 15000.0),
                    new Course("Python", "4 Months", 12000.0),
                    new Course("Web Development", "5 Months", 18000.0),
                    new Course("Data Science", "8 Months", 25000.0),
                    new Course("C Programming", "3 Months", 8000.0),
                    new Course("C++", "4 Months", 10000.0),
                    new Course("JavaScript", "3 Months", 9000.0),
                    new Course("SQL", "2 Months", 6000.0),
                    new Course("Machine Learning", "6 Months", 30000.0),
                    new Course("Cloud Computing", "5 Months", 22000.0)
                );

                courseRepository.saveAll(courses);
            }

            if (studentRepository.count() == 0) {

                List<Course> courses = courseRepository.findAll();

                List<Student> students = List.of(
                    new Student("Rahul Sharma", "rahul@gmail.com", 21, courses.get(0)),
                    new Student("Priya Singh", "priya@gmail.com", 22, courses.get(1)),
                    new Student("Aman Verma", "aman@gmail.com", 20, courses.get(2)),
                    new Student("Neha Gupta", "neha@gmail.com", 21, courses.get(3)),
                    new Student("Rohit Kumar", "rohit@gmail.com", 23, courses.get(4)),
                    new Student("Anjali Mehta", "anjali@gmail.com", 20, courses.get(5)),
                    new Student("Vikas Yadav", "vikas@gmail.com", 22, courses.get(6)),
                    new Student("Sneha Jain", "sneha@gmail.com", 21, courses.get(7)),
                    new Student("Arjun Patel", "arjun@gmail.com", 24, courses.get(8)),
                    new Student("Kavya Rao", "kavya@gmail.com", 22, courses.get(9))
                );

                studentRepository.saveAll(students);
            }
        };
    }
}

