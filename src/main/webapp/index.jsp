<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
<%! 
   String today(){
	java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
	return dt.format(new java.util.Date());
	} 
	%>
	 
	 
	 <c:set var="variavel" value="Testando pagina JSP utilizando JSTL"/> 
	 <c:out value="${variavel} "/>
	 <c:set var="formatar" value="true"/>
	  <c:set var="d1" value="<%=new java.util.Date() %>"/>
	  <h1>a data de hoje é: <c:out value="${d1}"/></h1>
	  <h1>a data de hoje é: <fmt:formatDate pattern = "yyyy-MM-dd hh:mm:ss" value="${d1 }"/></h1>
	  <c:if test="${formatar == true }">
	  <p> variavel formatar = <c:out value="${formatar}"/></p>
 		</c:if>
 		<h1>a data de hoje é: <c:choose>
 								<c:when test="${formatar == true }">
 									<c:out value="<%=today()%>"/>
 									</c:when>
 									<c:otherwise>
 									<c:out value="${d1}"/>
 								</c:otherwise>
 							</c:choose></h1>
 		
 	
 	
 	
 	<h1>Atividade: Criar uma página JSP que contenha a utilização de JSTL </h1>	
 	<p>. C:OUT<p>
 	<P>. C:IF<p>
 	<P>. C:choose<p>
 	<p>. C:set<p>
 	<p>. E alguma outra não mostrada em aula da sua escolha<p>
 
	<h3>Vou informar se o valor 5 é maior que o valor 7</h3>

		<c:set var="menor" value= "5"/>
		<c:set var="maior" value= "7"/>
		<c:set var="soma" value= "12"/>
		
		<c:if test="${menor < maior}">
		 	<p>O valor: <c:out value="${menor}"/> é menor que o valor: <c:out value="${maior}"/> <p>
		</c:if>
		
		<h3> Agora vamos contar até 5</h3>

		<c:choose>
			<c:when test="${menor < maior}">
				<c:forEach var = "i" begin = "1" end = "5">
	        		<c:out value = "${i}"/><p>
	    		</c:forEach>
	    	</c:when>
		</c:choose>
		
		<
		

</body>
</html>