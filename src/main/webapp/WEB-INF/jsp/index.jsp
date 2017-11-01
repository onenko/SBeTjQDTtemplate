<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>

  <h1>SBeTjQDTtemplate Home Page</h1>

  <img src="./image/SBeTjQDTtemplate.png" />

  <br/>

  <p>
What is SBeTjQDT ?<br/>
SBeT = Spring Boot with embedded Tomcat<br/>
jQDT = jQuery with DataTables<br/>
  </p><p>
So this is template (empty) project to easy create:
    <ul>
      <li>standalone Java application;</li>
      <li>with Web pages user interface;</li>
      <li>with embedded Web server (no need to deploy under WebLogic or separate Tomcat, etc.)</li>
    </ul>
  </p><p>
Server side:
    <ul>
      <li>Spring Boot starter and Spring Mvc and Spring Annotations;</li>
      <li>Tomcat application server - embedded in Java application;</li>
      <li>HTTP GET and AJAX processing (Spring controller).</li>
    </ul>
  </p><p>
Client side:
    <ul>
      <li>JSP</li>
      <li>jQuery</li>
      <li>DataTables - to get data by AJAX from server</li>
    </ul>
  </p><p>
    To build this project, one of templates was used, see
      <a href="https://github.com/spring-projects/spring-boot">here</a>.
  </p><p>
	<c:url value="/resources/text.txt" var="url"/>
	<spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />
	Spring URL: ${springUrl} at ${time}
	<br>
	JSTL URL: ${url}
	<br>
	Message: ${message}
  </p><p>

Page with jQuery DataTables table: <a href="./table"><font size="+5">click here</font></a>.

  </p>

  end of page
</body>

</html>
