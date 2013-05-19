<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Criar Receitas</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="common/header.jsp" %>

<title>Criar Receitas</title> 



<form method="POST" action="/recipes"> 



<form>
<div class="box">
<h1>Crie a sua Receita :</h1>
<label>
<span>Autor</span>
<input type="text" class="input_text" name="Autor" value="${Autor}"/>
<font color="#FF0000"><small><i> ${erroAutor}</small></i></font>
</label>
<label>
<span>Título</span>
<input type="text" class="input_text" name="Titulo" value="${Titulo}"/>
<font color="#FF0000"><small><i> ${erroTitulo}</small></i></font>
</label>
<label>
<span>Problema</span>
<textarea class="message" name="Problema">${Problema}</textarea>
<font color="#FF0000"> <small><i>${erroProblema}</small></i></font>
</label>
<label>
<span>Solução</span>
<textarea class="message" name="Solucao">${Solucao}</textarea>
<font color="#FF0000"> <small><i>${erroSolucao}</small></i></font>
</label>
<label>
<span>Tags</span>
<input type="text" class="input_text" name="Tag" value="${Tag}"/>
</label>
<input type="submit" class="button" value="Criar Receita" />


</div>
</form>



</table>

<%@ include file="common/form.jsp" %>
<%@ include file="common/footer.jsp" %>



