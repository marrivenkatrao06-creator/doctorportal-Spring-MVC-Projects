<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<html>
<head>
    <title>Doctor List</title>
      <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f8f4;
            margin: 0;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #2e7d32;
            margin-bottom: 25px;
        }

        .home-btn {
            background-color: #2e7d32;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
            margin-bottom: 20px;
        }

        .home-btn:hover {
            background-color: #1b5e20;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        th {
            background-color: #2e7d32;
            color: white;
            padding: 14px;
        }

        td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #e8f5e9;
        }

        tr:hover {
            background-color: #c8e6c9;
        }

        a {
            text-decoration: none;
            color: white;
            padding: 7px 14px;
            border-radius: 4px;
        }

        .edit-btn {
            background-color: #1976d2;
        }

        .delete-btn {
            background-color: #d32f2f;
        }

        .edit-btn:hover {
            background-color: #0d47a1;
        }

        .delete-btn:hover {
            background-color: #b71c1c;
        }
        
        .back-btn {
    display: block;
    width: 100%;
    padding: 12px;
    background-color: #1976d2;
    color: white;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;
    box-sizing: border-box;
    margin-top: 12px;
    font-size: 16px;
}

.back-btn:hover {
    background-color: #0d47a1;
}
    </style>
</head>
<body>

<h2>Doctor Details</h2>


<table border="1" cellpadding="10" cellspacing="0">

<tr>
    <th>Doctor ID</th>
    <th>Doctor Name</th>
    <th>Specialization</th>
    <th>Phone</th>
    <th>Gender</th>
    <th>Hospital Name</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<c:forEach var="d" items="${list}">

<tr>
    <td>${d.doctorId}</td>
    <td>${d.doctorname}</td>
    <td>${d.specialization}</td>
    <td>${d.phone}</td>
    <td>${d.gender}</td>
    <td>${d.hospitalName}</td>

    <td>
        <a href="edit/${d.doctorId}">Edit</a>
    </td>

    <td>
        <a href="delete/${d.doctorId}">Delete</a>
    </td>
</tr>

</c:forEach>

</table>
<a class="back-btn" href="${pageContext.request.contextPath}/">
    Back
</a>

</body>
</html>
