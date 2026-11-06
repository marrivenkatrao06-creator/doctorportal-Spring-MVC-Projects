<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Registration</title>

<style>
body {
    font-family: Arial;
    background-color: #e8f5e9;
}

.container {
    width: 400px;
    margin: 40px auto;
    padding: 25px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 0 10px gray;
}

h2 {
    text-align: center;
    color: #2e7d32;
}

input, select {
    width: 100%;
    padding: 10px;
    margin: 8px 0 15px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 12px;
    background: #2e7d32;
    color: white;
    border: none;
    cursor: pointer;
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

<div class="container">

<h2>Doctor Registration</h2>

<form:form action="saveDoctor" method="post"
    modelAttribute="doctor">

    <label>Doctor ID:</label>
    <form:input path="doctorId" placeholder="Enter Doctor ID"/>

    <label>Doctor Name:</label>
    <form:input path="doctorname" placeholder="Enter Doctor Name"/>

    <label>Specialization:</label>
    <form:input path="specialization" placeholder="Enter Specialization"/>

    <label>Phone Number:</label>
    <form:input path="phone" placeholder="Enter Phone Number"/>

    <label>Gender:</label>
    <form:select path="gender">
        <form:option value="" label="Select Gender"/>
        <form:option value="Male" label="Male"/>
        <form:option value="Female" label="Female"/>
        <form:option value="Other" label="Other"/>
    </form:select>

    <label>Hospital Name:</label>
    <form:input path="hospitalName" placeholder="Enter Hospital Name"/>

    <button type="submit">Register Doctor</button>

</form:form>

<a class="back-btn" href="${pageContext.request.contextPath}/">
    Back
</a>

</div>

</body>
</html>