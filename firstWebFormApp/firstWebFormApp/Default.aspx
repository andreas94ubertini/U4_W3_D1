﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body >
    <form id="form1" runat="server" class="container border rounded-1 mt-5">
        <h1 class="text-center mt-3">Autoconcessionaria Online</h1>
        <div class="row" style="height: 200px">
            <div class="col col-4">
                <h2>Seleziona la tua auto</h2>
                <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="Seleziona un auto" Text="Seleziona un auto"></asp:ListItem>
                    <asp:ListItem Value="a3.jpeg" Text="Audi A3 22.950€"></asp:ListItem>
                    <asp:ListItem Value="a7.png" Text="Audi A7 66.870,00€"></asp:ListItem>
                    <asp:ListItem Value="glc.png" Text="Mercedes GLC 39.250,00€"></asp:ListItem>
                    <asp:ListItem Value="boxster.png" Text="Porsche Boxster 69.500,00€"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col col-8">
                <asp:Image ID="Image1" runat="server" Width="200px" />
                <p id="CarDet" class="m-o h4" runat="server"></p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h2>Scegli optional</h2>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="330" Text="Vernice metallizzata (costo euro 330,00)"></asp:ListItem>
                    <asp:ListItem Value="180" Text="Fari Xeno (costo euro 180,00)"></asp:ListItem>
                    <asp:ListItem Value="1800" Text="Sistema navigazione satellitare (costo euro 1.800,00)"></asp:ListItem>
                    <asp:ListItem Value="2000" Text="Line Assistant (costo euro 2.000,00)"></asp:ListItem>
                    <asp:ListItem Value="155" Text="Ruota di scorta (costo euro 155,00)"></asp:ListItem>
                    <asp:ListItem Value="700" Text="Sedili/volante in pelle (costo euro 700,00)"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="col-12 mt-3">
                <h2>Quanti anni di garanzia?</h2>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select">
                    <asp:ListItem Value="1" Text="1 anno"></asp:ListItem>
                    <asp:ListItem Value="2" Text="2 anni"></asp:ListItem>
                    <asp:ListItem Value="3" Text="3 anni"></asp:ListItem>
                    <asp:ListItem Value="4" Text="4 anni"></asp:ListItem>
                </asp:DropDownList>
                <div class="mt-3">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Calcola Preventivo" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <div class="col-12 mt-3">
            <div class="alert alert-warning" role="alert">
                <h2>Ecco il tuo preventivo:</h2>
                <h5>Costo Auto: <span id="CarPrice" runat="server"></span></h5>
                <h5>Totale Accessori: <span id="OptPrice" runat="server"></span></h5>
                <h5>Costo Garanzia: <span id="WarrantyPrice" runat="server"></span></h5>
                <h5>Costo Totale: <span id="TotalPrice" runat="server"></span></h5>
            </div>
        </div>
    </form>
</body>
</html>
