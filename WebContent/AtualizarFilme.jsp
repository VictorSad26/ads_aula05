<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar filme</title>
</head>
<body>
<h1>Filme</h1>
	<p>Digite os dados do filme para atualizar.</p>
	<form action="manter_filmes.do" method="POST">
		<p><input type="hidden" name="id_filme" value="${filme.id}"/></p>
		<p><label>Titulo do filme: </label><input type="text" name="titulo" value="${filme.titulo}"/></p>
		<p><label>Descricao: </label><input type="text" name="descricao" value="${filme.descricao}"/></p>
		<P><label>Diretor:</label><input  type="text" name="diretor" value="${filme.diretor}"/>
		
		<label>Genero: </label><select name="genero" required>
		<c:forEach var="genero" items="${generos}">
			<option value="${genero.id}">${genero.nome}</option>
		</c:forEach>
		</select>
		</p>
		
		<p><label>Lançamento:</label><input  type="text" name="data_lancamento" value="${filme.dataLancamento}" />
		<label>Popularidade :</label><input  type="number" name="popularidade" value="${filme.popularidade}" /></p>
		<p><label>URL do Poster:</label><input  type="text" name="poster_path" value="${filme.posterPath}" /></p>
		<input type="submit" name="acao" value="atualizar">
	
	</form>

</body>
</html>