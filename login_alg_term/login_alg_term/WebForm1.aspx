<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="login_alg_term.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>AlgTerm: Acesso ao site</title>
	<link rel="stylesheet" type="text/css" href="logincss.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="caixa">
		<div class="conteudo">
			<img src="Alg term2.jpg"/>
			<div class="formulario">	
			<!--<input class="entrada" type="email" name="emailuser" placeholder="Insira seu email">-->
            <asp:TextBox runat="server" ID="txtEmail" placeholder="Insira seu email" TextMode="Email" CssClass="entrada"/>
			<br/>
			<!--<input class="entrada" type="password" name="passworduser" placeholder="Insira sua senha">-->
            <asp:TextBox runat="server" ID="txtSenha" placeholder="Insira sua senha" TextMode="Password" CssClass="entrada"/>
			<br/>
			<!--<input class="btn" type="submit" name="enter" value="Login">-->
            <asp:Button runat="server" id="btnEntrar" OnClick="btnEntrar_Click" text="Login" CssClass="btn" />
            <br />
            <asp:Label runat="server" ID="erro" CssClass="erro"></asp:Label>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
