<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Explorar.aspx.cs" Inherits="LoginUser.Explorar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <nav class="#ffa726 orange lighten-1">
                    <div class="nav-wrapper">
                        <a href="Index.aspx" class="brand-logo beige-text"><i class="material-icons"></i>EcoReservas</a>
                        <ul class="right hide-on-med-and-down">
                            <li><a href="Explorar.aspx">Explorar</a></li>
                            <li><a href="MisReservas.aspx">mis reservas</a></li>
                            <li><a href="collapsible.html">ajustes</a></li>
                        </ul>
                    </div>
                </nav>
             <div class="container mt-3">
                <h3>Buscar lugares</h3>
                <div class="mb-3">
                    <input id="searchInput" class="form-control" type="text" placeholder="Buscar lugares por título..." runat="server" />
                </div>
                <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary btn-dark" OnClick="BtnBuscar_Click" />

            </div>

            </div>
        </div>
    </form>
</body>
</html>
