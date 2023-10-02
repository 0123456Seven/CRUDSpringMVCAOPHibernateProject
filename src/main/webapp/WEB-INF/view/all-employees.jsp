<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Xaero
  Date: 27.09.2023
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Employees</title>
</head>
<body style="background-color: floralwhite;">
<table style="text-align: center; padding: 20px;
 font-family: monospace;background-color: #EBE9E5;border: 20px;
 border-color: #292A30;border-radius: 20px; width: 100%">
    <tr>
        <th style="font-size: 20px; background-color: #279EDA; text-align: center;padding: 20px; border: 1px;border-top-left-radius: 20px;border-color: #279EDA">
            Name
        </th>
        <th style="font-size: 20px; background-color: #279EDA; text-align: center;padding: 20px">Surname</th>
        <th style="font-size: 20px; background-color: #279EDA; text-align: center;padding: 20px">Department</th>
        <th style="font-size: 20px; background-color: #279EDA; text-align: center;padding: 20px">Salary</th>
        <th colspan="2"
            style="font-size: 20px; background-color: #279EDA; text-align: center;padding: 20px;border: 1px;border-top-right-radius: 20px;border-color: #279EDA">
            Operations
        </th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td style="background-color: #F6D9BE; font-size: 17px;font-family: monospace">${emp.name}</td>
            <td style="background-color: #F6D9BE; font-size: 17px;font-family: monospace">${emp.surname}</td>
            <td style="background-color: #F6D9BE; font-size: 17px;font-family: monospace">${emp.department}</td>
            <td style="background-color: #F6D9BE; font-size: 17px;font-family: monospace">${emp.salary}</td>
            <td style="background-color: #F6D9BE; font-size: 17px;font-family: monospace">
                <input type="button" value="UPDATE"
                       onclick="window.location.href='${updateButton}'"
                       style="border-color: black;border-radius: 5px;background-color:darkorange;color: black; border-style: solid"/>
            </td>
            <td style="background-color: #F6D9BE">
                <input type="button" value="DELETE"
                       onclick="window.location.href='${deleteButton}'"
                       style="border-color: black; background-color: red; color: black  !important;border-radius: 5px;
                        border-style: solid"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add"
       onclick="window.location.href='addNewEmployee'"
       style="background-color: mediumspringgreen; color: black; border-color: black; border-radius: 20px; width: 100%; padding: 20px; font-size: 20px; margin-top: 20px; border-style: solid"/>
</body>
</html>
