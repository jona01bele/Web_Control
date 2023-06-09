<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_registro.aspx.cs" Inherits="web_ControlAsistencia.frm_registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Control de asistencias</title>
    <center><h1>Sistema de control de asistencia a eventos</h1></center>
    <link href="estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <div class="div2">
                    <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingrese su nombre" Width="200" Height="25" CssClass="cajas"></asp:TextBox>
                    <asp:TextBox ID="txt_Edad" runat="server" placeholder="Ingrese su edad" Width="200" Height="25" CssClass="cajas"></asp:TextBox>
                    <asp:DropDownList ID="cbx_Comida" runat="server" Width="200" Height="33px" CssClass="combos">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btn_Registrar" runat="server" Text="Registrar" Width="150" Height="33" CssClass="botones" />
                    <br /><br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Contador de personas:" CssClass="label"></asp:Label>
                    <asp:Label ID="lbl_contador" runat="server" Text="0" CssClass="label"></asp:Label>
                </div>
            </center>
        </div>
    </form>
</body>
</html>
