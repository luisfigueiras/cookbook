

<form method="POST" action="/recipes"> 

<table width="700" >
<tr>
    <td>Titulo</td>
    <td><input type="text" value="${Titulo}" name="Titulo"/></td>
    <td>${erroTitulo}</td>
  </tr>
 <tr>
    <td>Problema </td>
    <td><input type="text" value="${Problema}" name="Problema"/></td>
    <td> ${erroProblema}</td>
  </tr>
  <tr>
    <td> Solucao </td>   
    <td><input type="text" value="${Solucao}" name="Solucao"/></td>
    <td>${erroSolucao}</td>
   </tr>
   
   <tr>
    <td> Autor </td>   
    <td><input type="text" value="${Autor}" name="Autor"/></td>
    <td>${erroAutor}</td>
   </tr>
	
	<tr>
	<td><input type="submit" value="Criar nova receita"/></td>
	</tr>
	
</table>

</form>