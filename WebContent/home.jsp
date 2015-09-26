<html ng-app>

  <head>
    <script src="https://code.angularjs.org/1.3.0-beta.5/angular.js" 
    data-require="angular.js@*" data-semver="2.0.0-alpha.31"></script>        
    <link href="style.css" rel="stylesheet" />
    <script src="script.js"></script>
  </head>

  <body ng-controller="MainController">
<jsp:include page="top.jsp"></jsp:include>
<div class="branding container_12">           
<form action="AddServlet" method="post" name="home" onsubmit="return check()">

<div class="content">
	<table>
	<tr>
	<td>Organization Name <span class="red">*</span></td>
  <td></td>
	  	<td><input type="text" id="orgName" name="orgName" ></td>
	</tr>
	<tr></tr>
	
	<tr>
	<td>Address Line1 <span class="red">*</span></td>
  <td></td>
	  	<td><input type="text" id="addr1" name="addr1" ></td>
	</tr>
	<tr></tr>
	
		<tr>
	<td>Address Line2</td>
  <td></td>
	  	<td><input type="text" id="addr2" name="addr2"></td>
	</tr>
	<tr></tr>
	
		<tr>
	<td>Address Line3</td>
  <td></td>
	  	<td><input type="text" id="addr3" name="addr3"></td>
	</tr>
	<tr></tr>
	
		<tr>
	<td>City <span class="red">*</span></td>
  <td></td>
	  	<td><input type="text" id="city" name="city" ></td>
	</tr>
	<tr></tr>
	
		<tr>
	<td>State <span class="red">*</span></td>
  <td></td>
	  	<td><input type="text" id="state" name="state" ></td>
	</tr>
	<tr></tr>
	
	<tr>
	<td>Country <span class="red">*</span></td>
  <td></td>
	  	<td><input type="text" id="country" name="country" ></td>
	</tr>
	<tr></tr>
	
	<tr>
	<td>Pin code / Zip Code <span class="red">*</span></td>
  <td></td>
	  	<td><input type="text" id="zip" name="zip" ></td>
	</tr>
	<tr></tr>
	
	<tr>
	<td>ADD Description <span class="red">*</span></td>
  <td></td>
	  	<td><textarea  id="desc" name="desc" ></textarea></td>
	</tr>
	<tr></tr>
	
		<tr>
	<td></td>
  <td></td>
	  	<td>
	  	   <input type="submit" class="button red xlarge" style="color:white;" value="Post - Add"/>	  	   
	  	   </td>
	  	   
	</tr>
	<tr></tr>
	
	</table>
</div>


</form>
</div>
</body>

</html>
