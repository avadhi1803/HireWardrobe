<%@include file="mansecurityguard.jsp" %>    
<!DOCTYPE html>
<html>
    <head>
        <title>Settings</title>
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
    margin-left: 45%;
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
    margin-top: 30px;
}
.text
{
    display:flex;
    justify-content: space-around;
    margin-top: 50px;
}
    </style>
    </head>
    
    <body>
       <div class="bg-image"></div>

<div class="bg-text">
  <h1>Settings</h1>
  <div class="text">
      <label>My Profile</label>
       <label>Change Pass</label>
        <label>Contact Us</label>
         <label>About Us</label>
          <label>Logout</label>
          <label>Delete Account</label>
        
  </div>
  <div class="icon">
      <a href="managerprofile.jsp"><img src="profile.png" alt="profile" ></a>
      <a href="forgotpassword.jsp"><img src="changepw.png" alt="pwd"></a>
      <a href="contactus.jsp"><img src="contactusicon.png" alt="contact"></a>
      <a href="aboutus.jsp"> <img src="aboutusicon.png" alt="about"></a>
       <a href="destroysession.jsp"><img src="logout.png" alt="logout"></a>
      <a href="mandelaccount.jsp"><img src="delete.png" alt="delete"></a>
  </div>
</div>
    </body>
</html>

