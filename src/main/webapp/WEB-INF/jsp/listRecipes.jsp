<%@ include file="common/header.jsp" %>
 

<ul>
<c:forEach var="recipes" items='${recipes}'>



<a href="/recipes/${recipes.oid}"><font color="#FFFFFF">${recipes.titulo} </font></a> 
<a href="/recipes/${recipes.oid}/delete"><font color="#FFFFFF"> apagar</font></a><br>

</c:forEach>

</ul>





<%@ include file="common/footer.jsp" %>
