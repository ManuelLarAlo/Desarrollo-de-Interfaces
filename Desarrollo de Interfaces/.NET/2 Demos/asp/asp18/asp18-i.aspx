﻿<%@ Page Language="C#" %>

<script runat="server">

    void Enviar(object S,EventArgs E)
    {
       Session["idCliente"] = txtIdCliente.Text;
       Response.Redirect("asp18-ii.aspx");
    
    }
    
</script>

<html>
<head>
    <title>Ejemplo(ASP18).-</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Código del Cliente:<asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqIdCliente" runat="server" ControlToValidate="txtIdCliente"
            ErrorMessage="Introduzca el identificador del cliente."></asp:RequiredFieldValidator><br />
        <asp:Button ID="btEnviar" runat="server" Text="Enviar" OnClick="Enviar" /></div>
    </form>
</body>
</html>
