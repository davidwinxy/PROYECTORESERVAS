<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="LoginUser.CrearCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link href="MIS%20RECURSOS/Css/StyleLogin.css" rel="stylesheet" />
    <title></title>
</head>
<body class="bg-light">
    <div class="wrapper">
        <div id="formcontent" >
            <form id="formularioRegistro" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center mb-5">
                        <asp:Label class="h3" ID="TituloRegistro" runat="server" Text="Crear cuenta"></asp:Label>
                    </div>
                    <br />
                    <div class="form-group">
                        <label for="TextBoxNombre">Nombre</label>
                        <asp:TextBox ID="TextBoxNombre" CssClass="form-control" runat="server" placeholder="Nombre" required></asp:TextBox>
                    </div>
                    <br />
                    <div class="form-group">
                        <label for="TextBoxContraseña">Contraseña</label>
                        <asp:TextBox ID="TextBoxContraseña" CssClass="form-control" runat="server" type="password" placeholder="Contraseña" required></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="BtnCrearCuenta" CssClass="btn btn-primary btn-black" runat="server" Text="Crear cuenta" OnClick="BtnCrearCuenta_Click" />
                        <a href="LoginUser.aspx" class="btn btn-secondary btn-black mt-2">Volver al login</a>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger col-12"></asp:Label>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>


</html>
