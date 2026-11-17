
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CV Builder - Create Your CV</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 30px;
        }

        .container {
            max-width: 850px;
            margin: auto;
            background: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #223b62;
        }

        .subtitle {
            text-align: center;
            color: #666;
        }

        h2 {
            color: #223b62;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
            margin-top: 35px;
        }

        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input, textarea {
            width: 100%;
            padding: 11px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        textarea {
            min-height: 100px;
            resize: vertical;
        }

        .buttons {
            margin-top: 30px;
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        button, .sample-btn {
            background-color: #223b62;
            color: white;
            padding: 13px 22px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 15px;
        }

        button:hover, .sample-btn:hover {
            background-color: #345889;
        }

        .sample-btn {
            background-color: #555;
        }

        .required {
            color: red;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Dynamic Online CV Builder</h1>
    <p class="subtitle">
        Fill in your details to generate a professional CV.
    </p>

    <form action="${pageContext.request.contextPath}/cv"
          method="post">

        <!-- PERSONAL INFORMATION -->
        <h2>1. Personal Information</h2>

        <label>Full Name <span class="required">*</span></label>
        <input type="text" name="fullName"
               placeholder="Enter your full name" required>

        <label>Professional Title</label>
        <input type="text" name="professionalTitle"
               placeholder="e.g. Software Developer">

        <label>Email <span class="required">*</span></label>
        <input type="email" name="email"
               placeholder="e.g. ali@gmail.com" required>

        <label>Phone Number</label>
        <input type="tel" name="phoneNumber"
               placeholder="e.g. 0123456789">

        <label>LinkedIn / GitHub URL</label>
        <input type="url" name="linkedInGithubUrl"
               placeholder="https://github.com/username">

        <label>Profile Summary</label>
        <textarea name="profileSummary"
                  placeholder="Write a short introduction about yourself"></textarea>


        <!-- EDUCATION -->
        <h2>2. Education</h2>

        <label>Highest Degree <span class="required">*</span></label>
        <input type="text" name="highestDegree"
               placeholder="e.g. Bachelor of Computer Science" required>

        <label>Institution Name</label>
        <input type="text" name="institutionName"
               placeholder="e.g. Universiti Teknologi MARA">

        <label>Year of Graduation</label>
        <input type="number" name="yearOfGraduation"
               min="1950" max="2100"
               placeholder="e.g. 2026">

        <label>Major / Field of Study</label>
        <input type="text" name="major"
               placeholder="e.g. Computer Science">


        <!-- WORK EXPERIENCE -->
        <h2>3. Work Experience</h2>

        <label>Most Recent Job Title</label>
        <input type="text" name="recentJobTitle"
               placeholder="e.g. Junior Developer">

        <label>Company Name</label>
        <input type="text" name="companyName"
               placeholder="e.g. ABC Technology">

        <label>Duration</label>
        <input type="text" name="duration"
               placeholder="e.g. Jan 2025 - Dec 2025">

        <label>Key Responsibilities / Achievements</label>
        <textarea name="responsibilities"
                  placeholder="Describe your responsibilities"></textarea>


        <!-- SKILLS -->
        <h2>4. Skills</h2>

        <p>Please enter at least one skill.</p>

        <label>Technical Skills</label>
        <input type="text" name="technicalSkills"
               placeholder="e.g. Java, HTML, CSS, SQL">

        <label>Soft Skills</label>
        <input type="text" name="softSkills"
               placeholder="e.g. Communication, Teamwork">


        <!-- BUTTONS -->
        <div class="buttons">

            <button type="submit">
                Generate My CV
            </button>

            <a class="sample-btn"
               href="${pageContext.request.contextPath}/cv?action=sample">
                Preview Sample CV
            </a>

        </div>

    </form>

</div>

</body>
</html>
