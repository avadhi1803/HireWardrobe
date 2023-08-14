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
.icon
{
    display: flex;
    justify-content: space-around;
    
}
.icon img
{
    width: 50px;
    height: 50px;
   background-color: rgba(255,255,255,0.8);
    margin-top: 50px;
}
    </style>
    </head>
    
    <body>
       <div class="bg-image"></div>

<div class="bg-text">
  <h1>Contact Us</h1>
  <div class="icon">      
      <a href="tel:9098963102"><img src="callicon.png" alt="call"></a>
      <a href="https://wa.me/9098963102?text="><img src="wpicon.png" alt="wp">
      <a href="https://www.facebook.com/profile.php?id=100065692882735"><img src="fb.png" alt="fb">
      <a href="https://twitter.com/i/flow/login"><img src="twitter.png" alt="twit">
      <a href="https://www.instagram.com/_.avadhi_.18/"><img src="insta.png" alt="insta">
      <a href="mailto: avadhipatni18@gmail.com"><img src="gmail.png" alt="gmail"></a>
  </div>
</div>
    </body>
</html>

