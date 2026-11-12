
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card p-4 shadow">
        <h2>Edit Student</h2>

        <form action="/students/update/${student.studentId}" method="post">

            <label class="form-label">Name</label>
            <input type="text" name="name"
                   value="${student.name}"
                   class="form-control mb-3" required>

            <label class="form-label">Email</label>
            <input type="email" name="email"
                   value="${student.email}"
                   class="form-control mb-3" required>

            <label class="form-label">Age</label>
            <input type="number" name="age"
                   value="${student.age}"
                   class="form-control mb-3" required>

            <label class="form-label">Course</label>
            <select name="course.courseId"
                    class="form-select mb-3" required>

                <c:forEach items="${courses}" var="course">
                    <option value="${course.courseId}"
                        ${course.courseId == student.course.courseId ? 'selected' : ''}>
                        ${course.courseName}
                    </option>
                </c:forEach>

            </select>

            <button type="submit" class="btn btn-success">
                Update Student
            </button>

            <a href="/students" class="btn btn-secondary">
                Back
            </a>

        </form>
    </div>
</div>

</body>
</html>
