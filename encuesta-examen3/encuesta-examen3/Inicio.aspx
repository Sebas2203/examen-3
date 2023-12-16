<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="encuesta_examen3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Examen3</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server" class="container">
        <h2>Encuesta</h2>
        <label for="txtNombre">Nombre:</label>
        <input type="text" id="txtNombre" runat="server" />

        <label for="txtEdad">Edad:</label>
        <input type="text" id="txtEdad" runat="server" />

        <label for="txtCorreo">Correo:</label>
        <input type="text" id="txtCorreo" runat="server" />

        <label for="txtPartido">Partido Político:</label>
        <input type="text" id="txtTelefono" runat="server" />

        <button type="button">Enviar Encuesta</button>
        <button type="button">Ver Encuestas</button>

        <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>

        <script>
            function enviarEncuesta() {
                var nombre = document.getElementById('<%=txtNombre.ClientID%>').value;
                var edad = document.getElementById('<%=txtEdad.ClientID%>').value;
                var correo = document.getElementById('<%=txtCorreo.ClientID%>').value;
                var telefono = document.getElementById('<%=txtTelefono.ClientID%>').value;

                // Puedes procesar los datos aquí (almacenar en una base de datos, enviar por correo electrónico, etc.)
                // Aquí simplemente mostraremos un mensaje en la etiqueta lblResultado.

                var resultado = `Gracias por tu respuesta, ${nombre}. Edad: ${edad}, Correo: ${correo}, Teléfono: ${telefono}`;
                document.getElementById('<%=lblResultado.ClientID%>').innerHTML = resultado;
            }
        </script>
    </form>
</body>
</html>
