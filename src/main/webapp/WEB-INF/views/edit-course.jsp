<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Edit Course</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body class="bg-light">
    <div class="container mt-5">
      <div class="card p-4 shadow">
        <h2>Edit Course</h2>

        <form action="/courses/update/${course.courseId}" method="post">
          <label class="form-label">Course Name</label>
          <input
            type="text"
            name="courseName"
            value="${course.courseName}"
            class="form-control mb-3"
            required
          />

          <label class="form-label">Duration</label>
          <input
            type="text"
            name="duration"
            value="${course.duration}"
            class="form-control mb-3"
            required
          />

          <label class="form-label">Fees</label>
          <input
            type="number"
            name="fees"
            value="${course.fees}"
            class="form-control mb-3"
            required
          />

          <button type="submit" class="btn btn-success">Update Course</button>

          <a href="/courses" class="btn btn-secondary"> Back </a>
        </form>
      </div>
    </div>
  </body>
</html>
