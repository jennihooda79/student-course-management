
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <h2 class="text-center mb-4">Student Management</h2>

    <a href="/students/add" class="btn btn-primary mb-3">
        Add Student
    </a>

    <a href="/courses" class="btn btn-success mb-3">
        View Courses
    </a>

    <table class="table table-bordered table-striped">

        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Age</th>
            <th>Course</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>

        <c:forEach items="${students}" var="student">

            <tr>
                <td>${student.studentId}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.age}</td>
                <td>${student.course.courseName}</td>

                <td>
                  <div class="d-flex gap-2">
                  <a href="/students/edit/${student.studentId}"
                  class="btn btn-warning btn-sm">
                  Edit
                  </a>

                  <a href="/students/delete/${student.studentId}"
                  class="btn btn-danger btn-sm">
                  Delete
                  </a>
                  </div>
                </td>
            </tr>

        </c:forEach>

        </tbody>

    </table>

</div>

</body>
</html>
