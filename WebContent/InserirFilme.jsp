<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Filme</title>
</head>
<body>
<h1>Novo Filme</h1>
	<p>Digite os dados do filme para cadastrar.</p>
	<form action="manter_filmes.do" method="POST">
		<p><label>Titulo do filme: </label><input type="text" name="titulo"/></p>
		<p><label>Descricao: </label><input type="text" name="descricao"/></p>
		<P><label>Diretor:</label><input  type="text" name="diretor"/>
		
		<label>Genero: </label><select name="genero">
		<c:forEach var="genero" items="${generos}">
		<option value="${genero.id}">${genero.nome}</option>
		</c:forEach>
		</select>
		</p>
		
		<p><label>Lançamento:</label><input  type="text" name="data_lancamento"/>
		<label>Popularidade :</label><input  type="number" name="popularidade"/></p>
		<p><label>URL do Poster:</label><input  type="text" name="poster_path"/></p>
		<input type="submit" name="acao" value="inserir">
	</form>

</body>
</html>