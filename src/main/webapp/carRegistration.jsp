<!DOCTYPE html>
<html>
<head>
</head>
<body>
  
  </br/></br/>
  <hr/>
  <center>
  <img alt="" src="img/login.png" />
  
  <span style="color:red;font-size: 16px;">${message}</span>
  <form action="CarServlet" method="post">
  <table  cellpadding="10px;">
  		<tr>
  			<td>NAME</td>
  			<td><input type="text" name="username" style="width: 300px;height:22px;"> 			
  			</td>
  		</tr>

  		<tr>
  			<td>COLOR</td>
  			<td><input type="password" name="color" style="width: 300px;height: 22px;"> 	 			
  			</td>
  		</tr>
  		<td>CC</td>
  			<td><input type="text" name="cc" style="width: 300px;height:22px;"> 			
  			</td></tr>
  			<tr>
  			<td>COMPANY</td>
  			<td><input type="text" name="company" style="width: 300px;height:22px;"> 			
  			</td>
  			</tr>
  			<tr>
<td>MODEL</td>
  			<td><input type="text" name="model" style="width: 300px;height:22px;"> 			
  			</td>
  			</tr>
<tr>  			<td>WHEEL</td>
  			<td><input type="text" name="wheel" style="width: 300px;height:22px;"> 			
  			</td>
  		</tr>
  			<tr><td>&nbsp;</td>
  			<td><input type="submit" value="register" style="background-color: blue;"/> 			
  			</td>
  		</tr>
  
  </table>
   <a href="CarServlet">Users<img src="img/users.png"></a> 
    </form>
</center>
    
   

</body>
</html>