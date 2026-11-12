
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card p-4 shadow">
        <h2>Add Student</h2>

        <form action="/students/save" method="post">

            <label class="form-label">Name</label>
            <input type="text" name="name"
                   class="form-control mb-3" required>

            <label class="form-label">Email</label>
            <input type="email" name="email"
                   class="form-control mb-3" required>

            <label class="form-label">Age</label>
            <input type="number" name="age"
                   class="form-control mb-3" required>

            <label class="form-label">Course</label>
            <select name="course.courseId"
                    class="form-select mb-3" required>

                <option value="">Select Course</option>

                <c:forEach items="${courses}" var="course">
                    <option value="${course.courseId}">
                        ${course.courseName}
                    </option>
                </c:forEach>

            </select>

            <button type="submit" class="btn btn-primary">
                Save Student
            </button>

            <a href="/students" class="btn btn-secondary">
                Back
            </a>

        </form>
    </div>
</div>

</body>
</html>
