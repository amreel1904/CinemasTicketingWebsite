<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form Example</title>
  <!-- Bootstrap CSS link -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <style>
    /* Custom CSS styles */
    body {
      padding: 20px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .custom-file-label::after {
      content: "Browse";
    }
  </style>
</head>
<body>
  <div class="form-group">
    <img src="../assets/img/" alt="" id="cover_img" width="50" height="75">
  </div>
  <div class="form-group input-group">
    <label for="" class="control-label">Cover Image</label>
    <br>
    <div class="input-group-prepend">
      <span class="input-group-text">Upload</span>
    </div>
    <div class="custom-file">
      <input type="file" name="cover" class="custom-file-input" id="cover-img" onchange="displayImg(this, $(this))">
      <label class="custom-file-label" for="cover-img">Choose file</label>
    </div>
  </div>

  <!-- Include the necessary scripts here -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    function displayImg(input, element) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          document.getElementById('cover_img').src = e.target.result;
        };
        reader.readAsDataURL(input.files[0]);
      } else {
        document.getElementById('cover_img').src = '../assets/img/';
      }
    }
  </script>
</body>
</html>
