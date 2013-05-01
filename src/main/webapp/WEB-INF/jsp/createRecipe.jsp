

<form method="POST" action="/recipes"> 

<table width="500" >
<tr>
	<td width="100" > Autor </td>   
	<td width="100" ><input type="text" value="${Autor}" name="Autor"/></td>
	<td width="200" > <font color="#FF0000">${erroAutor}</font></td>
</tr>

<tr>
    <td width="100" >Titulo</td>
    <td width="100" ><input type="text" value="${Titulo}" name="Titulo"/></td>
    <td width="200" ><font color="#FF0000">${erroTitulo}</font></td>
  </tr>
 <tr>
    <td width="100" >Problema </td>
    <td width="100" ><textarea rows="3" name="Problema" >${Problema}</textarea></td>
    <td width="200" ><font color="#FF0000"> ${erroProblema}</font></td>
  </tr>
  <tr>
    <td width="100" > Solucao </td>   
    <td width="100" ><textarea rows="3" name="Solucao" >${Solucao}</textarea>
    <td width="200" ><font color="#FF0000">${erroSolucao}</font></td>
   </tr>
   
  
	
	<tr>
	<td><input type="submit" value="Criar nova receita"/></td>
	</tr>
	
</table>

</form>