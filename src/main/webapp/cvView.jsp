
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Professional CV</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #eef1f5;
            margin: 0;
            padding: 30px;
            color: #333;
        }

        .cv-container {
            max-width: 850px;
            margin: 0 auto;
            background: white;
            padding: 50px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .cv-header {
            text-align: center;
            border-bottom: 3px solid #223b62;
            padding-bottom: 20px;
            margin-bottom: 25px;
        }

        .cv-header h1 {
            color: #223b62;
            margin: 0 0 10px;
            font-size: 32px;
        }

        .job-title {
            color: #555;
            font-size: 18px;
            margin-bottom: 12px;
        }

        .contact-info {
            font-size: 13px;
            line-height: 1.8;
            overflow-wrap: anywhere;
        }

        .section {
            margin-top: 30px;
        }

        .section h2 {
            color: #223b62;
            font-size: 19px;
            text-transform: uppercase;
            border-bottom: 2px solid #ddd;
            padding-bottom: 8px;
            margin-bottom: 15px;
        }

        .section p {
            line-height: 1.7;
            margin: 8px 0;
            overflow-wrap: anywhere;
        }

        .detail-title {
            font-size: 17px;
            font-weight: bold;
            color: #333;
        }

        .detail-subtitle {
            color: #555;
            margin-top: 5px;
        }

        .skills {
            line-height: 1.9;
        }

        .actions {
            max-width: 850px;
            margin: 25px auto;
            display: flex;
            gap: 12px;
            justify-content: center;
        }

        .btn {
            display: inline-block;
            background: #223b62;
            color: white;
            padding: 12px 25px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            text-decoration: none;
            font-size: 14px;
        }

        .btn-secondary {
            background: #555;
        }

        .btn:hover {
            opacity: 0.9;
        }

        @media print {
            @page {
                size: A4;
                margin: 15mm;
            }

            body {
                background: white;
                padding: 0;
            }

            .cv-container {
                max-width: none;
                padding: 0;
                box-shadow: none;
            }

            .actions {
                display: none;
            }

            .section {
                break-inside: avoid;
            }
        }
    </style>
</head>

<body>

    <div class="cv-container">

        <!-- CV HEADER -->
        <div class="cv-header">

            <h1>${cvData.fullName}</h1>

            <div class="job-title">
                ${cvData.professionalTitle}
            </div>

            <div class="contact-info">
                Email: ${cvData.email}
                |
                Phone: ${cvData.phoneNumber}
                <br>
                LinkedIn / GitHub:
                ${cvData.linkedInGithubUrl}
            </div>

        </div>

        <!-- PROFILE SUMMARY -->
        <div class="section">

            <h2>Professional Summary</h2>

            <p>${cvData.profileSummary}</p>

        </div>

        <!-- EDUCATION -->
        <div class="section">

            <h2>Education</h2>

            <p class="detail-title">
                ${cvData.highestDegree}
            </p>

            <p class="detail-subtitle">
                ${cvData.institutionName}
            </p>

            <p>
                Major: ${cvData.major}
                |
                Graduation Year: ${cvData.yearOfGraduation}
            </p>

        </div>

        <!-- WORK EXPERIENCE -->
        <div class="section">

            <h2>Work Experience</h2>

            <p class="detail-title">
                ${cvData.recentJobTitle}
            </p>

            <p class="detail-subtitle">
                ${cvData.companyName}
                |
                ${cvData.duration}
            </p>

            <p>${cvData.responsibilities}</p>

        </div>

        <!-- SKILLS -->
        <div class="section">

            <h2>Skills</h2>

            <div class="skills">

                <p>
                    <strong>Technical Skills:</strong>
                    ${cvData.technicalSkills}
                </p>

                <p>
                    <strong>Soft Skills:</strong>
                    ${cvData.softSkills}
                </p>

            </div>

        </div>

    </div>

    <!-- ACTION BUTTONS -->
    <div class="actions">

        <button class="btn" onclick="window.print()">
            Print / Save as PDF
        </button>

        <a class="btn btn-secondary"
           href="${pageContext.request.contextPath}/cvForm.jsp">
            Create Another CV
        </a>

    </div>

</body>
</html>
