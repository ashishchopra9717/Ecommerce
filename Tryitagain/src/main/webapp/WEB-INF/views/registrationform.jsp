
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >

<c:url value="/savecustomer" var="url">
</c:url>

<div class="panel panel-primary" style="height: 590px; width: 800px; margin:auto">

<div class="panel-heading" style="text-align:center; font-size:25px">Register Here</div>

<div class="panel-body" style="background:#e8f3f8">
<form:form action="${url}" modelAttribute="customer">

<div class="row">
<div class="col-lg-4">
<p class="text-primary" style="text-align:left ;font-size:23px">User Details</p>


<div class="form-group">
<form:label path="user.username">Enter User Name</form:label>
<p style="color:red">${duplicateUsername}</p>
<form:input path="user.username"/><br>
<form:errors path="user.username" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="user.password">Enter Password</form:label>
<form:input type="password" pattern="(?=.*\d)(?=>*[a-z])(?=.*[A-Z]).{8}" title="Must Contain at least one number and one uppercase and lowercase letter and at least 8 or more characters" path="user.password"/><br>
<form:errors path="user.password" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="firstname">Enter First Name</form:label>
<form:input path="firstname"/><br>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
<form:label path="lastname">Enter Last Name</form:label>
<form:input path="lastname"/><br>
<form:errors path="lastname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="email">Enter Email Id</form:label>
<form:input path="email"/>
<p style="color:red">${duplicateEmail}</p>
<form:errors path="email" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="phone">Enter Phone Number</form:label>
<form:input path="phone"/><br>
<form:errors path="phone" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="col-lg-4">
<p class="text-primary" style="text-align:left ;font-size:23px">Billing Address</p>

<div class="form-group">
<form:label path="billingAddress.streetname">Enter Street Name</form:label>
<form:input path="billingAddress.streetname"/><br>
<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.apartmentnumber">Enter Apartment Number</form:label>
<form:input path="billingAddress.apartmentnumber"/><br>
<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.city">Enter City</form:label><br>
<form:input path="billingAddress.city"/><br>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.state">Enter State</form:label>
<form:input path="billingAddress.state"/><br>
<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.country">Enter Country</form:label>
<form:input path="billingAddress.country"/><br>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.zipcode">Enter Zipcode</form:label>
<form:input path="billingAddress.zipcode"/><br>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="col-lg-4">
<p class="text-primary" style="text-align:left ;font-size:23px">Shipping Address</p>


<div class="form-group">
<form:label path="shippingAddress.streetname">Enter Street Name</form:label>
<form:input path="shippingAddress.streetname"/><br>
<form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentnumber">Enter Apartment Number</form:label>
<form:input path="shippingAddress.apartmentnumber"/><br>
<form:errors path="shippingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.city">Enter City</form:label><br>
<form:input path="shippingAddress.city"/><br>
<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.state">Enter State</form:label>
<form:input path="shippingAddress.state"/><br>
<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.country">Enter Country</form:label>
<form:input path="shippingAddress.country"/><br>
<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.zipcode">Enter Zipcode</form:label>
<form:input path="shippingAddress.zipcode"/><br>
<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</div>
<br><br>
<input type="submit" class="btn btn-primary btn-block"  value="Register" >
</div>

</form:form>
</div>
</div>

</body>
</html>