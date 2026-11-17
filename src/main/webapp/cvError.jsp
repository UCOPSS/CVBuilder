
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CV Builder - Validation Error</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 30px;
        }

        .error-container {
            max-width: 550px;
            margin: 100px auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .error-icon {
            font-size: 55px;
            color: #dc3545;
            margin-bottom: 15px;
        }

        h1 {
            color: #dc3545;
            margin-bottom: 15px;
        }

        p {
            color: #555;
            font-size: 16px;
            line-height: 1.6;
        }

        .error-message {
            background-color: #fff3f3;
            color: #b02a37;
            padding: 15px;
            border-radius: 6px;
            margin: 25px 0;
            border: 1px solid #f5c2c7;
        }

        .btn {
            display: inline-block;
            background-color: #223b62;
            color: white;
            padding: 12px 25px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 15px;
        }

        .btn:hover {
            background-color: #345889;
        }
    </style>
</head>

<body>

    <div class="error-container">

        <div class="error-icon">⚠</div>

        <h1>Validation Error</h1>

        <p>
            Sorry! Your CV could not be generated
            because some information is missing or invalid.
        </p>

        <div class="error-message">
            ${errorMessage}
        </div>

        <p>
            Please check the following required information:
        </p>

        <p>
            Full Name, Email, Highest Degree,
            and at least one Skill.
        </p>

        <a class="btn"
           href="${pageContext.request.contextPath}/cvForm.jsp">
            Back to CV Form
        </a>

    </div>

</body>
</html>
