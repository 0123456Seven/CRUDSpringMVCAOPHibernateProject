<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>New Employee</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
    }

    h2 {
      text-align: center;
      color: #333;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    input[type="submit"] {
      display: block;
      width: 100%;
      padding: 10px;
      background-color: #279EDA;
      color: #fff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #1E7DC4;
    }
  </style>
</head>
<body>
<h2>Employee Info</h2>

<form:form action="saveEmployee" modelAttribute="employee">
  <form:hidden path="id" />
  <label for="name">Name</label>
  <form:input path="name" id="name" />
  <br>
  <label for="surname">Surname</label>
  <form:input path="surname" id="surname" />
  <br>
  <label for="department">Department</label>
  <form:input path="department" id="department" />
  <br>
  <label for="salary">Salary</label>
  <form:input path="salary" id="salary" />
  <br>
  <input type="submit" value="OK">
</form:form>
</body>
</html>
