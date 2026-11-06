<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

        .container {
            width: 400px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        label {
            display: block;
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #2e7d32;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #2e7d32;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #1b5e20;
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

<h2>Doctor update</h2>
<form:form action="update" modelAttribute="doctor" method="post">

    <form:hidden path="doctorId"/>

    Doctor Name:
    <form:input path="doctorname"/><br><br>

    Specialization:
    <form:input path="specialization"/><br><br>

    Phone:
    <form:input path="phone"/><br><br>

    Gender:
    <form:select path="gender">
        <form:option value="" label="Select Gender"/>
        <form:option value="Male" label="Male"/>
        <form:option value="Female" label="Female"/>
        <form:option value="Other" label="Other"/>
    </form:select><br><br>

    Hospital Name:
    <form:input path="hospitalName"/><br><br>

    <input type="submit" value="Update">

</form:form>
<a class="back-btn" href="${pageContext.request.contextPath}/">
    Back
</a>

</body>
</html>
