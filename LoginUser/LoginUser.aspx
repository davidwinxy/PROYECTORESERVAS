<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="LoginUser.LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link href="MIS%20RECURSOS/Css/StyleLogin.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body class="bg-light" >
    <div class="wrapper">
        <div class="formcontent">
             <form id="formularioLogin" runat="server">
                 <div class="form-control">
                     <div class="col-md-6 text-center mb-5" >
                         <asp:Label class="h3"  ID="Bienvenida" runat="server" Text="Iniciar sesion"></asp:Label>
                     </div>
                     <br />
                     <div>
                         <asp:Label ID="Lnombre" runat="server" Text="Nombre"></asp:Label>
                         <asp:TextBox ID="Tnombre" CssClass="form-control" runat="server" placeholder="nombre"></asp:TextBox>
                     </div>
                     <br />
                     <div>
                          <asp:Label ID="Lcontraseña" runat="server" Text="contraseña"></asp:Label>
                          <asp:TextBox ID="Tcontraseña" CssClass="form-control" TextMode="Password" runat="server" placeholder="contraseña"></asp:TextBox>
                     </div>
                     <br />
                     <div class="row" >
                         <asp:Label ID="lblError" runat="server" CssClass=""></asp:Label>
                     </div>
                     <br />
                     <div class="row">
                         <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIgresar_Click" />

                     </div>
                 </div>
             </form>
        </div>
    </div>
   
</body>
</html>
