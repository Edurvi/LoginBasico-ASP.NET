<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginEdurvi.aspx.cs" Inherits="WebApplication1.loginEdurvi" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="Recursos/Css/Estilos.css" rel="stylesheet" />
    <title>Bootstrap demo</title>
</head>
<body class="bg-light">
    <div class="wrapper d-flex justify-content-center align-items-center">
        <div class="formcontent">

            <form id="formulario_login" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center mx-auto mb-5">
                        <asp:Label class="h3" ID="lblBienvenida" runat="server" Text="Bienvenido a mi Login" />
                    </div>
                    <div>
                        <asp:Label Text="Usuario" runat="server" ID="lblUsuario" />
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" AutoPostBack="true" placeholder="Nombre del Usuario" />
                    </div>
                    <br />
                    <div>
                        <asp:Label Text="Contraseña" runat="server" ID="lblContraseña" />
                        <asp:TextBox ID="txtContraseña" TextMode="Password" runat="server" CssClass="form-control" placeholder="Ingrese su contraseña" />
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label ID="lblError" runat="server" CssClass="alert-danger" />
                    </div>
                        <br />
                    <div class="row">
                        <asp:Button Text="Ingresar" runat="server" ID="btnIngresar" CssClass="btn btn-primary btn-dark" onclick="btnIngresar_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
