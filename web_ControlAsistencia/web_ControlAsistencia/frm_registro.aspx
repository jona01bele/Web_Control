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
                    <asp:TextBox ID="txt_Edad" runat="server" placeholder="Ingrese su edad" Width="200" Height="25" CssClass="cajas">0</asp:TextBox>
                    <asp:DropDownList ID="cbx_Comida" runat="server" Width="200" Height="33px" CssClass="combos">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btn_Registrar" runat="server" Text="Registrar" Width="150" Height="33" CssClass="botones" OnClick="btn_Registrar_Click" />
                    <br /><br /><br />
                    <asp:Label ID="lbl_mensaje" runat="server" Text="Mensaje" Visible="false"></asp:Label> 
                    <br /><br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Contador de personas:" CssClass="label"></asp:Label>
                    <asp:Label ID="lbl_contador" runat="server" Text="0" CssClass="label"></asp:Label>
                    
                    <asp:GridView ID="dtg_asistencia" runat="server" width="600px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="asustencia" HeaderText="asustencia" SortExpression="asustencia" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                            <asp:BoundField DataField="Trajo Alimento" HeaderText="Trajo Alimento" SortExpression="Trajo Alimento" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_asistenciaConnectionString2 %>" ProviderName="<%$ ConnectionStrings:dbs_asistenciaConnectionString2.ProviderName %>" SelectCommand="SP_reporteAsistencia" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
            </center>
        </div>
    </form>
</body>
</html>
