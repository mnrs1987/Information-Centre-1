<%@page contentType="text/html" pageEncoding="UTF-8"%> <html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  <title>Kubenetes Deployment</title>  <style>body {background-color:#6A5ACD}</style></head> <body> </br><center><h1>POC for Kubernetes Deployment</h1></center></br> <center><img src="images/CI-CD.png" alt="Mountain View" style="width:1370px;height:200px;"></center> <center><h2>CICD Signup Details</h2>    <form action="ValidatorServlet" method="post"> <br/>  <b>Username:</b><input type="text" style="width:200px;border-radius: 5px; border: 2px solid black; border-image: none; height: 32px; margin-left: 10px;"  name="username"> <br/><br>  <b>Password:</b><input type="password" style="width:200px;border-radius: 5px; border: 2px solid black; border-image: none; height: 32px; margin-left: 10px;"  name="password"> <br/><br>  <input id="click" style="border: 1px solid black; border-image: none; width: 100px; height: 30px;" type="submit" value="Submit"> </form>   </center></body> </html>
