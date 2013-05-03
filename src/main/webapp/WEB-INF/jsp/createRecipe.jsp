<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Criar Receitas</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<link rel="shortcut icon" href="/static/favicon.ico" />
<body background="/static/BG.jpg">

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
          <input type="submit" class="button" value="Criar Receita" />
      </label>
      
    
   </div>
</form>
	
	<style type="text/css">
	<!--
	*{ margin:0; padding:0;}
	body{ font:100% normal Arial, Helvetica, sans-serif; }
	form,input,select,textarea{margin:0; padding:0; color:#ffffff;}

	div.box {
	margin:0 auto;
	width:500px;
	background:#222222;
	position:top;
	top:50px;
	border:1px solid #262626;
	}

	div.box h1 { 
	color:#ffffff;
	font-size:18px;
	text-transform:uppercase;
	padding:5px 0 5px 5px;
	border-bottom:1px solid #161712;
	border-top:1px solid #161712; 
	}

	div.box label {
	width:100%;
	display: block;
	background:#1C1C1C;
	border-top:1px solid #262626;
	border-bottom:1px solid #161712;
	padding:10px 0 10px 0;
	}

	div.box label span {
	display: block;
	color:#bbbbbb;
	font-size:12px;
	float:left;
	width:100px;
	text-align:right;
	padding:5px 20px 0 0;
	}

	div.box .input_text {
	padding:10px 10px;
	width:200px;
	background:#262626;
	border-bottom: 1px double #171717;
	border-top: 1px double #171717;
	border-left:1px double #333333;
	border-right:1px double #333333;
	}

	div.box .message{
	padding:7px 7px;
	width:350px;
	background:#262626;
	border-bottom: 1px double #171717;
	border-top: 1px double #171717;
	border-left:1px double #333333;
	border-right:1px double #333333;
	overflow:hidden;
	height:150px;
	input:focus { border: 1px solid #06c; }
	input.error { border: 1px solid #c00; }
	}

	div.box .button
	{
	margin:0 0 10px 0;
	padding:4px 7px;
	background:#262626;
	border:0px;
	position: relative;
	top:10px;
	left:382px;
	width:100px;
	border-bottom: 1px double #C0C0C0;
	border-top: 1px double #C0C0C0;
	border-left:1px double #C0C0C0;
	border-right:1px double #C0C0C0;
	}
	div.box .button:hover 
	{
	border: 1px double #C0C0C0;
	background:#C0C0C0;
	color:#262626;
	cursor:pointer;
	
	
	
</table>

</form>

<td width="200" ><font color="#FF0000"> ${erroProblema}</font></td>


</td>
</tr> 
<tr>
<td bgcolor="#666362" colspan="2" height=30px width=1100px><font color="#FFFFFF">&nbsp;&nbsp; <font face="Tahoma"> Cookbook - Em Manutenção  </td>
</tr>
</table>
</body>
</html>



