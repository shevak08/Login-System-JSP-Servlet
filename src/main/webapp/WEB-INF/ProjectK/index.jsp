<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>

<style>
/* Reset */
* {
    box-sizing: border-box;
}

/* Background */
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background: linear-gradient(135deg, #74ebd5, #9face6);
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* Card Animation */
.container {
    width: 420px;
    background: #fff;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0 15px 30px rgba(0,0,0,0.15);
    animation: slideUp 0.8s ease;
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Inputs */
input, textarea {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
    transition: all 0.3s ease;
}

/* Focus Effect */
input:focus, textarea:focus {
    border-color: #28a745;
    box-shadow: 0 0 8px rgba(40, 167, 69, 0.3);
    outline: none;
}

/* Textarea fix */
textarea {
    resize: none;
    height: 80px;
}

/* Button */
button {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #28a745, #218838);
    border: none;
    color: #fff;
    font-size: 16px;
    border-radius: 6px;
    cursor: pointer;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

/* Button Hover */
button:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 15px rgba(40, 167, 69, 0.4);
}

/* Animation */
@keyframes slideUp {
    from {
        opacity: 0;
        transform: translateY(40px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
</style>
</head>

<body>

<div class="container">
    <h2>Employee Registration</h2>

    <form action="<%= request.getContextPath() %>/register" method="post">

        <input type="text" name="firstname" placeholder="First Name" required>

        <input type="text" name="lastname" placeholder="Last Name" required>

        <input type="text" name="username" placeholder="Username" required>

        <input type="password" name="password" placeholder="Password" required>

        <textarea name="address" placeholder="Address" required></textarea>

        <input type="text" name="contact" placeholder="Contact Number" required>

        <button type="submit">Register</button>

    </form>
</div>

</body>
</html>
