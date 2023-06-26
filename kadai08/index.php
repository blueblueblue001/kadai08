<!DOCTYPE html>
<html>
  <head>
    <title>Diving Map</title>
    <style>
      #map {
        height: 400px;
        width: 100%;
      }
    </style>
  </head>
  <body>
    <h1>Diving Log</h1>
    <div id="map"></div>
    <form id="logForm" method="POST" action="insert.php">

      <label for="divingNumber">Dive No.:</label>
      <input type="number" id="divingNumber" name="divingNumber"><br>
      <label for="date">Date:</label>
      <input type="date" id="date" name="date"><br>
      <label for="location">Location:</label>
      <input type="text" id="location" name="location"><br> 
      <label for="diveSite">Dive Site:</label>
      <input type="text" id="diveSite" name="diveSite"><br>
      <label for="rating">Rating:</label>
      <select id="rating" name="rating">
        <option value="⭐️">⭐️</option>
        <option value="⭐️⭐️">⭐️⭐️</option>
        <option value="⭐️⭐️⭐️">⭐️⭐️⭐️</option>
        <option value="⭐️⭐️⭐️⭐️">⭐️⭐️⭐️⭐️</option>
        <option value="⭐️⭐️⭐️⭐️⭐️">⭐️⭐️⭐️⭐️⭐️</option> 
      </select><br> 
      <label for="comment">Comment:</label>
      <textarea id="comment" name="comment"></textarea><br> 
      <!-- <label for="photo">Photo:</label> 
      <input type="file" id="photo" name="photo"><br> -->

      <input type="submit" value="Add a Log">
    </form>

    <script src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap" async defer></script>
    <script src="js/script.js"></script>
    
  </body>
</html>
