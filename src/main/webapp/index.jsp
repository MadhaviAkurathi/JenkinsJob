<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Student Registration Form</title>
  <style>
    body { font-family: Arial; background-color: #f0fff4; }
    form { width: 350px; margin: 50px auto; background: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 0 5px #ccc; }
    h2 { text-align: center; color: #2ecc71; }
    label { display: block; margin-top: 10px; }
    input, select { width: 100%; padding: 6px; margin-top: 5px; }
    button { width: 100%; padding: 8px; margin-top: 15px; background-color: #2ecc71; border: none; color: white; border-radius: 5px; }
  </style>
</head>
<body>
  <form onsubmit="return validate()">
    <h2>Student Registration</h2>

    <label>Full Name</label>
    <input type="text" id="name" required>

    <label>Registration No</label>
    <input type="text" id="regno" required>

    <label>Email</label>
    <input type="email" id="email" required>

    <label>Password</label>
    <input type="password" id="pass" required>

    <label>Confirm Password</label>
    <input type="password" id="cpass" required>

    <label>Course</label>
    <select id="course" required>
      <option value="">Select Course</option>
      <option>B.Tech</option>
      <option>M.Tech</option>
      <option>B.Sc</option>
      <option>M.Sc</option>
    </select>

    <button type="submit">Register</button>
  </form>

  <script>
    function validate() {
      let pass = document.getElementById('pass').value;
      let cpass = document.getElementById('cpass').value;
      if (pass !== cpass) {
        alert('Passwords do not match!');
        return false;
      }
      alert('Registration successful!');
      return true;
    }
  </script>
</body>
</html>
