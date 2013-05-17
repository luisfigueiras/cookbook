<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Listar Receitas</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<link rel="shortcut icon" href="/static/favicon.ico" />
<body background="/static/BG.jpg">
</head>
<center><a href="/">
<img src="/static/Header.png" width="899"></a><center>

</head>

<table  width=899px height=687px border="0"  cellpadding="1	" cellspacing="0" align="center">

<tr>

<td bgcolor: transparent height=7px>
<style type="text/css">
<!--
body {
	padding:0px;
margin:0px;
}

#menu ul {
padding:0px;
margin:0px;
float: left;
width: 100%;
background-color: transparent;
list-style:none;
font:80% tahoma;
}

#menu ul li { display: inline; }

#menu ul li a {
background: #939393; /* Old browsers */
background: -moz-linear-gradient(top, #939393 0%, #5e5e5e 50%, #545454 51%, #444444 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#939393), color-stop(50%,#5e5e5e), color-stop(51%,#545454), color-stop(100%,#444444)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #939393 0%,#5e5e5e 50%,#545454 51%,#444444 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #939393 0%,#5e5e5e 50%,#545454 51%,#444444 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, #939393 0%,#5e5e5e 50%,#545454 51%,#444444 100%); /* IE10+ */
background: linear-gradient(to bottom, #939393 0%,#5e5e5e 50%,#545454 51%,#444444 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#939393', endColorstr='#444444',GradientType=0 ); /* IE6-9 */
color: white;
text-decoration: none;
border-bottom:3px solid #cccccc;
padding: 7px 54.75px;
float:left;
}

#menu ul li a:hover {
background: #c2c4c4; /* Old browsers */
background: -moz-linear-gradient(top, #c2c4c4 0%, #dbdbdb 50%, #b7b7b7 51%, #9c9c9e 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#c2c4c4), color-stop(50%,#dbdbdb), color-stop(51%,#b7b7b7), color-stop(100%,#9c9c9e)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #c2c4c4 0%,#dbdbdb 50%,#b7b7b7 51%,#9c9c9e 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #c2c4c4 0%,#dbdbdb 50%,#b7b7b7 51%,#9c9c9e 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, #c2c4c4 0%,#dbdbdb 50%,#b7b7b7 51%,#9c9c9e 100%); /* IE10+ */
background: linear-gradient(to bottom, #c2c4c4 0%,#dbdbdb 50%,#b7b7b7 51%,#9c9c9e 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c2c4c4', endColorstr='#9c9c9e',GradientType=0 ); /* IE6-9 */
color: #242424;
border-bottom:3px solid #242424;
}
--> <center>
</style>

<center>
<div id="menu"> 
<ul>
<li><a href="/recipes/create"> Criar</a></li>
<li><a href="/recipes"> Listar</a></li>
<li><a href="/recipes/create"> Procurar</a></li>
<li><a href="/recipes/create"> Editar</a></li>
<li><a href="/recipes/create"> Apagar</a></li>
<li><a href="/recipes/create"> Sobre nós</a></li>
</ul>
</div>	 
</td>

<tr>
<td height="425" colspan="2" bgcolor="#242424">

 

<ul>
<c:forEach var="recipes" items='${recipes}'>



<a href="/recipes/${recipes.oid}"><font color="#FFFFFF">${recipes.titulo} </font></a> 
<a href="/recipes/${recipes.oid}/delete"><font color="#FFFFFF"> apagar</font></a><br>

</c:forEach>

</ul>





</td>
</tr> 
<tr>
<td bgcolor="#666362" colspan="2" height=30px width=1100px><font color="#000000">&nbsp;&nbsp; <font face="Tahoma"> Cookbook - Em Manutenção  </td>
</tr>
</table>


</body>
</html>
