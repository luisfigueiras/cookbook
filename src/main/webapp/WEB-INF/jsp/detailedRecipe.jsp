<%@ include file="common/header.jsp" %>

<ul>
<c:forEach var="item" items='${recipe.titulo}'>
<font color="#ffffff">
    ID: ${recipe.oid} <br>
    Titulo: ${recipe.titulo}<br>
    Solucao ${recipe.solucao}<br>
    Autor ${recipe.autor}<br>
    Timestamp ${recipe.timestamp}<br>
    </c:forEach>

    <c:forEach var="tag" items='${tag}'>



          Tags ${tag.tag}



    </c:forEach>
</font>
</ul>





<%@ include file="common/footer.jsp" %>