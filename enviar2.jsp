<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	
	<%@page language="java" import="java.sql.*" %>
	<%
		String vfunc = request.getParameter("txtfunc");
		String vsuper = request.getParameter("txtsuper");
		String vdata = request.getParameter("txtdate");
		String vaparencia = request.getParameter("prod1");
		String vexpressao = request.getParameter("prod2");
		String vrelacao = request.getParameter("prod3");
		String vmaturidade = request.getParameter("prod4");
		String vabordagem = request.getParameter("prod5");
		String vretornos = request.getParameter("prod6");
		String vdificuldade = request.getParameter("prod7");
		String vargumentacao = request.getParameter("prod8");
		String vfechamento = request.getParameter("prod9");
		String vconsideracoes = request.getParameter("Consideracoes");
		String vfortes = request.getParameter("Fortes");
		String vfracos = request.getParameter("Fracos");
		String vadequados = request.getParameter("Adequado");


		String usuario = "root" ;
		String senha = "" ;
		String banco = "forms" ;

		String url = "jdbc:mysql://localhost:3306/" + banco ;
		String driver = "com.mysql.jdbc.Driver" ; 

		Class.forName( driver );

		Connection conexao ;

		conexao = DriverManager.getConnection( url , usuario , senha ) ;

		String sql = "Insert into relatorio(Empregrado, Supervisor, Data, Aparencia_e_Postura, Expressao, Relacao_Interpessoal, Maturidade, Abordagem_de_Cliente, Retornos, Dificuldades, Argumentacao, Fechamento, Consideracoes_da_Avaliacao, Pontos_Fortes, Pontos_a_Melhorar, Adequado) Values ('" + vfunc + "', '" + vsuper + "','" + vdata + "','" + vaparencia + "','" + vexpressao + "','" + vrelacao + "','" + vmaturidade + "','" + vabordagem + "','" + vretornos + "','" + vdificuldade + "','" + vargumentacao + "','" + vfechamento + "','" + vconsideracoes + "','" + vfortes + "','" + vfracos + "','" + vadequados + "')";

		Statement stm = conexao.createStatement() ;

		stm.executeUpdate( sql ) ;

		stm.close() ;
		conexao.close() ;

		out.print("<br><br>") ;
		out.print("Gravados com sucesso!!!") ;	

		out.print("<br><br>") ;
		out.print("<a href='cadastro.html'>Voltar</a>") ;
	%>

</body>
</html>