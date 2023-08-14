

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
        <style>
        body, html {
  height: 100%;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("bg2.png");

  /* Add the blur effect */
  filter: blur(4px);


  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
.bg-text p
{
    text-align: center;
    font-size: 20px;
}
.bg-text h1
{
    font-size: 35px;
    color: lightgreen;
    background-color: rgba(0,0,0, 0.7);
    width: fit-content;
    margin-left: 42%;
    text-shadow:0 0 5px #000700,0 0 10px #0000DD,0 0 20px #FFFFFF,0 0 40px #FFFFFF;
}
    </style>
    </head>
    
    <body>
        
       <div class="bg-image"></div>

<div class="bg-text">
  <h1>About Us</h1>
  <p>The Hire Wardrobe is an online rental platform.<br><br>
      Through this website, you can put your outfits on rent as well as take outfits on rent, from the comfort of your home.<br>
       By renting outfits, you will be able to earn from your unused outfits and you will have lot of options to wear, <br>without 
spending too much!</p>
</div>
    </body>
</html>
